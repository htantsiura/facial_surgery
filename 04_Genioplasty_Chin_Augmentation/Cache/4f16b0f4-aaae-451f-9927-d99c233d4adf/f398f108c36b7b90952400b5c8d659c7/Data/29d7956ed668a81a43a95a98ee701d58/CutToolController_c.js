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
// @input SceneObject tool
// @input SceneObject toolUI
// @input SceneObject chinPosUI
// @input Component.Text buttonText
// @input SceneObject iconLock
// @input AssignableType planeBuilderScript
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../Modules/Src/Assets/Scripts/CutToolController");
Object.setPrototypeOf(script, Module.CutToolController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("tool", []);
    checkUndefined("toolUI", []);
    checkUndefined("chinPosUI", []);
    checkUndefined("buttonText", []);
    checkUndefined("iconLock", []);
    checkUndefined("planeBuilderScript", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
