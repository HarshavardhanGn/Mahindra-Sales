sap.ui.define(['sap/ui/core/mvc/ControllerExtension'], function (ControllerExtension) {
	'use strict';

	return ControllerExtension.extend('salesapp.ext.controller.ObjPage_Sales', {
		// this section allows to extend lifecycle hooks or hooks provided by Fiori elements
		override: {
			/**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf salesapp.ext.controller.ObjPage_Sales
             */
			onInit: function () {
				// you can access the Fiori elements extensionAPI via this.base.getExtensionAPI
				var oModel = this.base.getExtensionAPI().getModel();
				
			},
			routing: {
			onAfterBinding: async function (oParameter) {
			
				debugger
				this.base.getView().mAggregations.content[0].mAggregations.sections[3].mAggregations._grid.mAggregations.content[0].mAggregations._grid.mAggregations.content[0].mAggregations.content.mAggregations.items[1].mAggregations._counter.bAllowTextSelection = false;
				var pagemode = this.base.getView().getModel('ui').oData.isEditable;
				var oUploadSet = this.base.getView().byId("salesapp::PurchaseEnquiryObjectPage--fe::CustomSubSection::Attach_File--uploadSet");
				var oBindingInfo = oUploadSet.getBindingInfo("items");
				var oTemplate = oBindingInfo.template;
     
			         oUploadSet.setUploadButtonInvisible(true);
					 oTemplate.setVisibleRemove(false);
					 oTemplate.setVisibleEdit(false);
					 oUploadSet.setUploadEnabled(false);

				



			
				this.base.getView().getContent()[0].mAggregations.headerTitle.mAggregations._actionsToolbar.mAggregations.content[4].mProperties.text = 'Raise Quotation';
				let funcname = 'postattach';
				let oFunction = oParameter.getModel().bindContext(`/${funcname}(...)`);
				var a;
				var uuid = window.location.href;
				const regex1 = /purchaseEnquiryUuid=([a-fA-F0-9-]+)/;;
				const match1 = uuid.match(regex1);
					if (match1) {
						a = match1[1];
						console.log(a); // Output: 1
					}
					
				
debugger
					var oModel = this.base.getExtensionAPI().getModel();
var sServiceUrl;
if (typeof oModel.getServiceUrl === "function") {
					
sServiceUrl = oModel.getServiceUrl(); 

}
					const response1 = await new Promise((resolve, reject) => {
						jQuery.ajax({
				   
							url: sServiceUrl + "PurchaseEnquiry",  // here Authority is the table name
							method: "GET",
							dataType: "json",
							success: function (data) {
								resolve(data);
							},
							error: function (jqXHR, textStatus, errorThrown) {
								reject(new Error(textStatus + ': ' + errorThrown));
							}
						});
					});
                  var but;
					const res = response1.value;
					res.forEach(item => {
						if (item.purchaseEnquiryUuid === a) {
                        but = item.status;
							
							
						} 
						
					});

					if(but == 'Request' || but == 'In Process' || but == 'Negotation')
					{
						this.base.getView().mAggregations.content[0].mAggregations.sections[4].setVisible(false);
						
						this.base.getView().mAggregations.content[0].mAggregations.sections[5].setVisible(false);
					}
					else if(but == 'Approved')
					{
						this.base.getView().mAggregations.content[0].mAggregations.sections[0].setVisible(true);
						this.base.getView().mAggregations.content[0].mAggregations.sections[1].setVisible(true);
						this.base.getView().mAggregations.content[0].mAggregations.sections[2].setVisible(true);
						this.base.getView().mAggregations.content[0].mAggregations.sections[3].setVisible(true);
						this.base.getView().mAggregations.content[0].mAggregations.sections[4].setVisible(true);
						this.base.getView().mAggregations.content[0].mAggregations.sections[5].setVisible(true);
						
					}
					

					if(but == 'In Process' || but == 'Approved'){ 

					this.base.getView().getContent()[0].mAggregations.headerTitle.mAggregations._actionsToolbar.mAggregations.content[4].setEnabled(false);
				}
				else{
					this.base.getView().getContent()[0].mAggregations.headerTitle.mAggregations._actionsToolbar.mAggregations.content[4].setEnabled(true);
				}

				setTimeout(() => {
					this.getView().findAggregatedObjects(true, function (control) {
						return control.isA("sap.m.Button");
					}).forEach(function (oButton) {
					
						if (oButton.getId().includes("Save")) {
							oButton.setText("Send Quotation");
						}
					});
				}, 1000); // Adjust the delay (in milliseconds) as needed
				
					
				
					


			}
		}
		}
	});
});
