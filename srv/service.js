const cds = require('@sap/cds/libx/_runtime/cds');
const { select } = require('@sap/cds/libx/_runtime/hana/execute');

module.exports = async function (params) {
  

    const { PurchaseEnquiry, Files, Vehicle  } = this.entities;

    this.before('UPDATE',PurchaseEnquiry, fileUpload);
    this.before('CREATE',PurchaseEnquiry, fileUpload);
   async function fileUpload(req){
    if(req.data.EnqToFile){
        for (const enq of req.data.EnqToFile) { 
            
                enq.url = `/Files(ID=${enq.ID},IsActiveEntity=true)/content`
            
        }
    }
}

this.on('DELETE',Files, async (req) => {
    
    
    await DELETE.from(Files).where ({fileName:req.data.fileName});
       });

       this.before('CREATE', Files.drafts, async (req) =>{
        // debugger;
        console.log('Create called')
        console.log(JSON.stringify(req.data))
        req.data.url = `/Files(ID=${req.data.ID},IsActiveEntity=true)/content`
    })
}

