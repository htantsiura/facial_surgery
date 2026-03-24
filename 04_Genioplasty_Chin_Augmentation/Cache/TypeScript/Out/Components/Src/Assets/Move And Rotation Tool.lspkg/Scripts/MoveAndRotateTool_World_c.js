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
// @input AssignableType interactable
// @input AssignableType_1 interactableRotX
// @input AssignableType_2 interactableRotY
// @input AssignableType_3 interactableRotZ
// @input SceneObject object
// @input float speedCoef
// @input Asset.Material[] mat
// @input Asset.Material[] matRot
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../Modules/Src/Assets/Move And Rotation Tool.lspkg/Scripts/MoveAndRotateTool_World");
Object.setPrototypeOf(script, Module.MoveAndRotateTool.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("interactable", []);
    checkUndefined("interactableRotX", []);
    checkUndefined("interactableRotY", []);
    checkUndefined("interactableRotZ", []);
    checkUndefined("object", []);
    checkUndefined("speedCoef", []);
    checkUndefined("mat", []);
    checkUndefined("matRot", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
