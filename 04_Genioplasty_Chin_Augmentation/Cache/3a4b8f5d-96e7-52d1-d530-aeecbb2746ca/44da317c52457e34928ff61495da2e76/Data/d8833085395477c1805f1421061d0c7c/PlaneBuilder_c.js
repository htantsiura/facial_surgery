if (script.onAwake) {
    script.onAwake();
    return;
}
function checkUndefined(property, showIfData) {
    for (var i = 0; i < showIfData.length; i++) {
        if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]) {
            return;
        }
    }
    if (script[property] == undefined) {
        throw new Error("Input " + property + " was not provided for the object " + script.getSceneObject().name);
    }
}
// @input AssignableType cutToolControllerScript
// @input SceneObject point0
// @input SceneObject point1
// @input SceneObject point2
// @input Asset.Material matToolMarker
// @input Component.RenderMeshVisual mesh
// @input Asset.Material slicedMat
// @input Asset.Material slicedMatInverted
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../Modules/Src/Assets/Scripts/PlaneBuilder");
Object.setPrototypeOf(script, Module.PlaneBuilder.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("cutToolControllerScript", []);
    checkUndefined("point0", []);
    checkUndefined("point1", []);
    checkUndefined("point2", []);
    checkUndefined("matToolMarker", []);
    checkUndefined("mesh", []);
    checkUndefined("slicedMat", []);
    checkUndefined("slicedMatInverted", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
