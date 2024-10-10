namespace db;




entity PurchaseEnquiry {
key purchaseEnquiryUuid  : UUID;
  purchaseEnquiryID : String;
  contactPerson : String;
   cloc : String;
   cphone : String;
   email : String;
   salesorder : String;
   documentType: String;
   deliveryLocation : String;
   companyName : String;
   van : String;
   division : String;
   distributionchanells : String;
   totalPrice : String;
   tax : String;
   grandTotal : String;
   quotationID : String;
   customerID : String;
   status : String;
   
  enquiryToVehicle : Composition of many Vehicle on enquiryToVehicle.vehicleToEnquiry = $self;
  enquiryToQuotation : Composition of  many Quotation on enquiryToQuotation.quototionToEnquiry = $self;
  enquiryTOPayment : Composition of one PaymentDetails on enquiryTOPayment.paymentToEnquiry = $self;
  EnqToFile: Composition of many Files on EnqToFile.FileToEnq = $self;
  EnqToSales : Composition of one SalesOrder on EnqToSales.SalesToEnq = $self;
}

entity Vehicle @(UI: {CreateHidden: true, DeleteHidden: true ,}){ 
    key vehicleID : UUID;
    vehicleCode : String;
    purchaseEnquiryUuid  : String;
    vehicleName : String;
    vehicleColor : String;
    quantity : Int16;
    discountedPrice : String;
    price : String;
    tax : String;
    actualPrice : String;
    discount : String default '0';
    
    vehicleToEnquiry : Association to one PurchaseEnquiry on vehicleToEnquiry.purchaseEnquiryUuid = purchaseEnquiryUuid;
   
}

entity Quotation {
key quotatationUuid : UUID; 
 @readonly
  quotationID : String;
  customerID : String;
  purchaseEnquiryID : String;
  totalPrice : Decimal;
  deliveryLeadTime : String;
  validity : Date;
  
  quototionToEnquiry : Association to one PurchaseEnquiry on quototionToEnquiry.purchaseEnquiryID = purchaseEnquiryID;
  quotationToPurchase : Association to  one PurchaseOrder on quotationToPurchase.purchaseToQuotation = $self; 
}

entity PaymentDetails{
    key paymentUuid : UUID;
    purchaseEnquiryUuid  : String;
  paymentId : String;
  transactionId: String;
  accountNo : String;
  amount : String;
  paymentMethod : String;
  pstatus : String;
  soID : String;
  paymentToSales : Association to many SalesOrder on paymentToSales.soID = soID;
    paymentToEnquiry : Association to many PurchaseEnquiry on paymentToEnquiry.purchaseEnquiryUuid = purchaseEnquiryUuid;
}
entity PurchaseOrder {
  key poID : String;
  quotationID : String;
  deliveryLocation : String;
  purchaseToQuotation : Association to one Quotation on purchaseToQuotation.quotationID = quotationID;
  purchaseToSales : Association to  one SalesOrder on purchaseToSales.salesToPurchase = $self; 
}

entity SalesOrder {
  key soID : String;
  poID : String;
  purchaseEnquiryUuid : String;
  dealerCode : String;
  price : Decimal;
  taxes : Decimal;
  discount : Decimal;
  salesToPurchase : Association to one PurchaseOrder on salesToPurchase.poID = poID ; 
  salesToPayment : Association to one PaymentDetails on  salesToPayment.paymentToSales = $self;
  SalesToEnq : Association to one PurchaseEnquiry on SalesToEnq.purchaseEnquiryUuid = purchaseEnquiryUuid;
 
  
}

entity Stocks{
     key vehicleCode : String;
    vehicleName : String;
    vehicleColor : String;
    quantity : Int16;
    pricePerUnit : Decimal;
}

entity Invoice {
  key invoiceID : String;
  paymentId : String;
  billedTo : String;
  invoiceDate : String;
  invoiceStatus : String;
  invoiceToPayment : Association to one PaymentDetails on invoiceToPayment.paymentId = paymentId
}

entity Sequence{
  key Uid : String;
  QuotationId : String;
}

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Files: cuid, managed{
    key ID: UUID;
    @Core.MediaType: mediaType
    content: LargeBinary;
    @Core.IsMediaType: true
    mediaType: String;
    fileName: String;
    size: Integer;
    url: String;
   purchaseEnquiryUuid: String;
FileToEnq: Association to one PurchaseEnquiry on FileToEnq. purchaseEnquiryUuid =  purchaseEnquiryUuid;
}

entity Comment{
  key commentId : String;
  createdBy : String;
  createdAt : String;
  commentsText : String;
}



