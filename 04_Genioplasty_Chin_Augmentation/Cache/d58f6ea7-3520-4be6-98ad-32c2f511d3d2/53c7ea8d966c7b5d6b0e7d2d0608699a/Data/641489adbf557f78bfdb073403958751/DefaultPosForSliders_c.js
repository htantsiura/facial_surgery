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
// @input AssignableType sliderX
// @input AssignableType_1 sliderY
// @input AssignableType_2 sliderZ
// @input SceneObject mandobula
// @input SceneObject skullMandibula
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../Modules/Src/Assets/DefaultPosForSliders");
Object.setPrototypeOf(script, Module.NewScript.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("sliderX", []);
    checkUndefined("sliderY", []);
    checkUndefined("sliderZ", []);
    checkUndefined("mandobula", []);
    checkUndefined("skullMandibula", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
