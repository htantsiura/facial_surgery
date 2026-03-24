//
// @input Asset.Texture segmentationTexture
// @input Component.ScreenTransform checkPointScreenTransform
// @input Component.Image highResolutionImage
// @input bool isHighResolutionDebug
// @input bool isLowResolutionDebug
// @input Component.Image lowResolutionImage {"showIf":"isLowResolutionDebug"}
// @input bool isAveragePosition
// @input Component.ScreenTransform averageScreenTransform {"showIf":"isAveragePosition"}
// @input int smoothFrameCount {"widget":"slider", "min":1,"max":10, "step":1,"showIf":"isAveragePosition"}

var channels = 4;
var isLoaded = false;
var loadDone = false;
var y=0;
var x=0;
var width = 0;
var height = 0;
var highResolutionTex;
var lowResolutionTex;
var highResolutionData;
var lowResolutionData;
var isInitialized = false;
var scale;
var downsizeTarget = 30;
var downsizeWidth;
var downsizeHeight;
var screenPoints;
var averagePosition = new vec2(0,0);
var nextIndex, lastIndex, leftIndex, rightIndex;
var smoothFrameCount = script.smoothFrameCount;
var smoothFrameCurrentCount = 0;
var smoothArray = [];
function initialize() {
    if (!script.segmentationTexture) {
        print("ERROR: Make sure to set the segmentation texture");
        return;
    }
    
    if (!script.checkPointScreenTransform) {
        print("ERROR: Make sure to set the chek point screen transform");
        return;
    }
    
    if (!script.highResolutionImage) {
        print("ERROR: Make sure to set the high resolution image");
        return;        
    }
    
    if (script.isLowResolutionDebug!==false && !script.lowResolutionImage) {
        print("ERROR: Make sure to set the low resolution image when LowResolutionDebug is enabled");
        return;        
    }
    
    if (script.isAveragePosition!==false && !script.averageScreenTransform) {
        print("ERROR: Make sure to set the average screen transform when IsAveragePosition is enabled");
        return;        
    }

    
    isInitialized = true;
}

initialize();

var event = script.createEvent("UpdateEvent");
event.bind(function(eventData) {
    if (!isInitialized) {
        return;
    }

    if (loadDone ==false) {
           
        width = script.segmentationTexture.getWidth();
        height = script.segmentationTexture.getHeight();       

        if (width >0) {
            isLoaded = true; 
            if (script.isHighResolutionDebug) {
                script.highResolutionImage.getMaterial(0).mainPass.opacity = 0.5;
            }
            if (script.isLowResolutionDebug) {
                script.lowResolutionImage.getMaterial(0).mainPass.opacity = 0.5;
            }
        }
        if (isLoaded) {           
            scale = Math.round(width/downsizeTarget);
            downsizeWidth = Math.round(width/scale);
            downsizeHeight = Math.round(height/scale);
            highResolutionData  = new Uint8Array(width * height * channels); 
            lowResolutionTex = ProceduralTextureProvider.create(downsizeWidth, downsizeHeight, Colorspace.R);
            lowResolutionData = new Uint8Array(downsizeWidth * downsizeHeight);
            loadDone = true;
        }
        
    }
    
    if (loadDone) {
        checkIntersection();
        
        if (script.isLowResolutionDebug || script.isAveragePosition) {
            downSizeTexture();            
        }
            
    }


});

function checkIntersection() {
    highResolutionTex = ProceduralTextureProvider.createFromTexture(script.segmentationTexture);
    highResolutionTex.control.getPixels(0, 0,width,height,highResolutionData);

    var pixelPos= screenTransformToPixel(script.checkPointScreenTransform.anchors.getCenter());
    var color = highResolutionData[(Math.round(pixelPos.y) * width + Math.round(pixelPos.x)) * channels];
    
    if (color == 255) {
        script.checkPointScreenTransform.getSceneObject().getComponent("Component.Text").text = "in";
    } else {
        script.checkPointScreenTransform.getSceneObject().getComponent("Component.Text").text = "out"; 
    }    
}


function downSizeTexture() {

    screenPoints = [];
        
    for (y=0; y<downsizeHeight; y++) {
        for (x=0; x<downsizeWidth; x++) {
            // Calculate index
            var index = (y * downsizeWidth + x) ;                        
            var originalIndex = (y*scale * width + (x+0.5)*scale) * channels;
            if (highResolutionData[originalIndex] !== 0) {
               
                lowResolutionData[index] = 255;

            } else {
                lowResolutionData[index] = 0;  
            }
                
            if (script.isAveragePosition) {
                //Edge Detection based on the downsize texture 
                nextIndex = (x + (y + 1) * downsizeWidth);
                lastIndex = (x + (y - 1) * downsizeWidth);
                leftIndex =  index - 1;
                rightIndex =  index + 1; 
         
                if (lowResolutionData[index] !== 0&& 
                    ((lowResolutionData[nextIndex] === 0 ||(y==downsizeHeight-1))
                        || (lowResolutionData[lastIndex] === 0||(y==0))
                        || (lowResolutionData[leftIndex] === 0 ||(x==0))
                        || (lowResolutionData[rightIndex] === 0|| (x==downsizeWidth-1))
                    )
                ) {
                   
                    screenPoints.push(pixelToScreenTransform(new vec2(x,y)));
                }
               
            }
        
        }
    }
    
    if (script.isLowResolutionDebug) {
        lowResolutionTex.control.setPixels(0, 0, downsizeWidth, downsizeHeight, lowResolutionData);
        script.lowResolutionImage.mainPass.baseTex = lowResolutionTex; 
    }
    
    if (screenPoints.length==0) {
        return;
    }
  
    //Calculate Average Postion based on the downsize texture
    var count = screenPoints.length;
    var sumX = 0;
    var sumY = 0;
    for (var i=0; i<count; i++) {
        sumX = sumX + screenPoints[i].x;
        sumY = sumY + screenPoints[i].y;       
    }
    
    averagePosition = new vec2(sumX/count,sumY/count);
           
    if (!script.averageScreenTransform.getSceneObject().enabled) {
        script.averageScreenTransform.getSceneObject().enabled = true;
    }
    
    //Smooth Average Position bewtween multiple frames
    if (smoothFrameCurrentCount<smoothFrameCount) {        
        smoothArray[smoothFrameCurrentCount] = averagePosition;
 
        if (smoothArray.length==smoothFrameCount) {
            var smoothX = 0;
            var smoothY = 0;
            for (var countIndex = 0; countIndex <smoothArray.length; countIndex++) {
                smoothX =smoothX + smoothArray[countIndex].x;
                smoothY = smoothY + smoothArray[countIndex].y;
            }
              
            script.averageScreenTransform.anchors.setCenter(new vec2(smoothX/smoothFrameCount,smoothY/smoothFrameCount));
     
        } 
        smoothFrameCurrentCount++;
    } else {
        
        smoothFrameCurrentCount =0;
    }

}


function pixelToScreenTransform(pixelPoint) {
    var screenX = map(pixelPoint.x,0,downsizeWidth,-1,1); 
    var screenY = map(pixelPoint.y,0,downsizeHeight,-1,1);
    return new vec2(screenX,screenY);  
}

function screenTransformToPixel(screenPoint) {
    var pX = map(screenPoint.x,-1,1,0,width); 
    var pY = map(screenPoint.y,-1,1,0,height);
    return new vec2(pX,pY);  
}

function map(value, in_min, in_max, out_min, out_max) {
    return (value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;  
}


