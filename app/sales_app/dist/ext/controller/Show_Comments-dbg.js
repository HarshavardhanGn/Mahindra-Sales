sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        Comments_History: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
