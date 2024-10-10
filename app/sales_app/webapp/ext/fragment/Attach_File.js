sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict'
var iddd;
var that = this;
    return {
        
        onAfterItemAdded: async function (oEvent) {
            debugger
            var baseUrl = oEvent.oSource.getModel().getServiceUrl();
			const regex = /purchaseEnquiryUuid=([0-9a-fA-F-]{36})/;
			var Puuid = window.location.href.match(regex);
            debugger

            var item = oEvent.getParameter("item")
         
          

            var _createEntity = async function (item) {
                var data = {
                    mediaType: item.getMediaType(),
                    fileName: item.getFileName(),
                    size: item.getFileObject().size,
                    purchaseEnquiryUuid: Puuid[1]
                    
                };
                debugger

                var settings = {
                    url: baseUrl + `PurchaseEnquiry(purchaseEnquiryUuid=${Puuid[1]},IsActiveEntity=false)/EnqToFile`,
                
                    method: "POST",
                    headers: {
                        "Content-type": "application/json"
                    },
                    data: JSON.stringify(data)
                };

                await new Promise((resolve, reject) => {
                    debugger
                    $.ajax(settings)
                        .done((results, textStatus, request) => {
                            debugger
                            iddd = results.ID;
                            resolve(results);
                        })
                        .fail((err) => {
                            reject(err);
                        });
                });
            };

            _createEntity(item)
                .then((ID) => {
                    debugger
                    var url = baseUrl + `Files(ID=${iddd},IsActiveEntity=false)/content`;
                    iddd = null;
                    item.setUploadUrl(url);
                    item.setUrl(url)
                    var oUploadSet = this.byId("uploadSet");
                    oUploadSet.setHttpRequestMethod("PUT");
                    oUploadSet.uploadItem(item);
                })
                .catch((err) => {
                    debugger
                    console.log(err);

                });
                debugger
        },

        onUploadCompleted: function (oEvent) {
            debugger
            var oUploadSet = this.byId("uploadSet");
            oUploadSet.removeAllIncompleteItems();
         
        },

        onOpenPressed: function (oEvent) {
            debugger
            var baseUrl = oEvent.oSource.getModel().getServiceUrl();
            
            let fileurl = oEvent.oSource.mProperties.url;
			var pattern = /Files.*$/;
			var match = fileurl.match(pattern);
			if (match) {
    			var entityUrl = baseUrl + match[0];
			}
			oEvent.oSource.mProperties.url = entityUrl;
        },

		onAfterRemoved: function (oEvent) {
        
        var baseUrl = oEvent.oSource.getModel().getServiceUrl()
        const regex = /^(.*?),IsActiveEntity=/;

        let match = oEvent.mParameters.item.mProperties.url.match(regex);
        let urll = match[1] + ",IsActiveEntity=false)";
        urll = urll.replace(/^.*\/Files/, "/Files");
        $.ajax({
            url: baseUrl + urll,
            method: "DELETE"
			})
        },

      
        
    		
    }

});

