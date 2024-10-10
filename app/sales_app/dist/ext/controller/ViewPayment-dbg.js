sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Pay: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
