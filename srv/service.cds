using {  db}  from '../db/schema';

service MyService {

   

    @odata.draft.enabled
     @odata.draft.bypass
    entity PurchaseEnquiry as projection on db.PurchaseEnquiry;
  
  
    entity Vehicle as projection on db.Vehicle;
    entity Quotation as projection on db.Quotation;
    entity PaymentDetails as projection on db.PaymentDetails;
      @odata.draft.enabled
    entity Sequence as projection on db.Sequence;

    entity Sales as projection on db.SalesOrder;
    @odata.draft.enabled
    entity PurchaseOrder as projection on db.PurchaseOrder;
    @odata.draft.enabled
    entity Invoice as projection on db.Invoice;
    entity Stocks as projection on db.Stocks;
    function postattach(p : String) returns String;
    @odata.draft.bypass
    entity Files as projection on db.Files;

   entity Comment as projection on db.Comment;



}


