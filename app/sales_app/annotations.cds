using MyService as service from '../../srv/service';
annotate service.PurchaseEnquiry with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'purchaseEnquiryID',
                Value : purchaseEnquiryID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerID',
                Value : customerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryLocation',
                Value : deliveryLocation,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            ID : 'Quotation',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'VehicleDetails',
                    Target : 'enquiryToVehicle/@UI.LineItem#VehicleDetails',
                    Label : 'Vehicle Details',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'SalesOrder',
            ID : 'SalesOrder',
            Target : '@UI.FieldGroup#SalesOrder',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'PaymentDetails',
            ID : 'PaymentDetails',
            Target : '@UI.FieldGroup#PaymentDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'purchaseEnquiryID',
            Value : purchaseEnquiryID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerID',
            Value : customerID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'deliveryLocation',
            Value : deliveryLocation,
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type : 'UI.SelectOptionType',
                    PropertyName : status,
                    Ranges : [
                        {
                            Sign : #I,
                            Option : #EQ,
                            Low : 'Request',
                        },
                    ],
                },
            ],
        },
        Text : 'Requests',
    },
    UI.LineItem #tableView : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : cname,
        //     Label : 'CustomerName',
        // },
        {
            $Type : 'UI.DataField',
            Value : customerID,
            Label : 'CustomerID',
        },
        {
            $Type : 'UI.DataField',
            Value : purchaseEnquiryID,
            Label : 'PurchaseEnquiryID',
        },
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type : 'UI.SelectOptionType',
                    PropertyName : status,
                    Ranges : [
                        {
                            Sign : #I,
                            Option : #EQ,
                            Low : 'In Process',
                        },
                    ],
                },
            ],
        },
        Text : 'In Process',
    },
    UI.LineItem #tableView1 : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : cname,
        //     Label : 'CustomerName',
        // },
        {
            $Type : 'UI.DataField',
            Value : customerID,
            Label : 'CustomerID',
        },
        {
            $Type : 'UI.DataField',
            Value : purchaseEnquiryID,
            Label : 'PurchaseEnquiryID',
        },
    ],
    UI.SelectionPresentationVariant #tableView2 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView1',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type : 'UI.SelectOptionType',
                    PropertyName : status,
                    Ranges : [
                        {
                            Sign : #I,
                            Option : #EQ,
                            Low : 'Negotation',
                        },
                    ],
                },
            ],
        },
        Text : 'Negotation',
    },
    UI.LineItem #tableView2 : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : cname,
        //     Label : 'CustomerName',
        // },
        {
            $Type : 'UI.DataField',
            Value : customerID,
            Label : 'CustomerID',
        },
        {
            $Type : 'UI.DataField',
            Value : purchaseEnquiryID,
            Label : 'PurchaseEnquiryID',
        },
    ],
    UI.SelectionPresentationVariant #tableView3 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView2',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type : 'UI.SelectOptionType',
                    PropertyName : status,
                    Ranges : [
                        {
                            Sign : #I,
                            Option : #EQ,
                            Low : 'Approved',
                        },
                    ],
                },
            ],
        },
        Text : 'Purchus Order',
    },
    // UI.HeaderInfo : {
    //     TypeName : 'Customer Information',
    //     TypeNamePlural : '',
    //     Title : {
    //         $Type : 'UI.DataField',
    //         Value : enquiryToCustomer.name,
    //     },
    // },
    // UI.FieldGroup #TotalPrice : {
    //     $Type : 'UI.FieldGroupType',
    //     Data : [
    //         {
    //             $Type : 'UI.DataField',
    //             Value : enquiryToCustomer.customerToEnquiry.enquiryToVehicle.totalPrice,
    //             Label : 'totalPrice',
    //         },
    //     ],
    // },
    // UI.FieldGroup #TotalPrice1 : {
    //     $Type : 'UI.FieldGroupType',
    //     Data : [
    //         {
    //             $Type : 'UI.DataField',
    //             Value : enquiryToVehicle.totalPrice,
    //             Label : 'totalPrice',
    //         },
    //     ],
    // },
    UI.DeleteHidden : true,
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation3',
        },
    ],
    UI.FieldGroup #PurchaseInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.customerID,
            //     Label : 'CustomerID',
            // },
            {
                $Type : 'UI.DataField',
                Value : deliveryLocation,
                Label : 'DeliveryLocation',
            },
            {
                $Type : 'UI.DataField',
                Value : purchaseEnquiryID,
                Label : 'PurchaseEnquiryID',
            }
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.name,
            //     Label : 'CustomerName',
            // },
        ],
    },
    UI.LineItem #tableView3 : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : cname,
        //     Label : 'CustomerName',
        // },
        {
            $Type : 'UI.DataField',
            Value : customerID,
            Label : 'CustomerID',
        },
        {
            $Type : 'UI.DataField',
            Value : purchaseEnquiryID,
            Label : 'PurchaseEnquiryID',
        },
    ],
    UI.SelectionPresentationVariant #tableView4 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView3',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                {
                    $Type : 'UI.SelectOptionType',
                    PropertyName : status,
                    Ranges : [
                        {
                            Sign : #I,
                            Option : #EQ,
                            Low : 'Request',
                        },
                    ],
                },
            ],
        },
        Text : 'Request',
    },
    UI.LineItem #tableView4 : [
        {
            $Type : 'UI.DataField',
            Value : customerID,
            Label : 'customerID',
        },
        {
            $Type : 'UI.DataField',
            Value : deliveryLocation,
            Label : 'deliveryLocation',
        },
    ],
    UI.SelectionPresentationVariant #tableView5 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView4',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'SalesOrder&Payment',
    },
    UI.FieldGroup #SalesOrder : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : EnqToSales.dealerCode,
                Label : 'DealerCode',
            },
            {
                $Type : 'UI.DataField',
                Value : EnqToSales.discount,
                Label : 'Discount',
            },
            {
                $Type : 'UI.DataField',
                Value : EnqToSales.price,
                Label : 'Price',
            },
            {
                $Type : 'UI.DataField',
                Value : EnqToSales.soID,
                Label : 'SOID',
            },
            {
                $Type : 'UI.DataField',
                Value : EnqToSales.poID,
                Label : 'POID',
            },
        ],
    },
    UI.FieldGroup #PaymentDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : enquiryTOPayment.accountNo,
                Label : 'AccountNumber',
            },
            {
                $Type : 'UI.DataField',
                Value : enquiryTOPayment.amount,
                Label : 'Amount',
            },
            {
                $Type : 'UI.DataField',
                Value : enquiryTOPayment.paymentId,
                Label : 'PaymentId',
            },
            {
                $Type : 'UI.DataField',
                Value : enquiryTOPayment.paymentMethod,
                Label : 'PaymentMethod',
            },
            {
                $Type : 'UI.DataField',
                Value : enquiryTOPayment.status,
                Label : 'PaymentStatus',
            },
        ],
    },
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : customerID,
                Label : 'CustomerID',
            },
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.name,
            //     Label : 'CustomerName',
            // },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : 'Status',
            },
        ],
    },
    UI.FieldGroup #GeneralInformation1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.address,
            //     Label : 'address',
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.customerID,
            //     Label : 'customerID',
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Value : enquiryToCustomer.name,
            //     Label : 'name',
            // },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : 'status',
            },
        ],
    },
    UI.FieldGroup #GeneralInformation2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cloc,
                Label : 'Address',
            },
            {
                $Type : 'UI.DataField',
                Value : customerID,
                Label : 'CustomerID',
            },
            // {
            //     $Type : 'UI.DataField',
            //     Value : cname,
            //     Label : 'Name',
            // },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : 'Status',
            },
        ],
    },
    // UI.HeaderInfo : {
    //     Title : {
    //         $Type : 'UI.DataField',
    //         Value : cname,
    //     },
    //     TypeName : '',
    //     TypeNamePlural : '',
    // },
    UI.FieldGroup #GeneralInformation3 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            // {
            //     $Type : 'UI.DataField',
            //     Value : cname,
            //     Label : 'CustomerName',
            // },
            {
                $Type : 'UI.DataField',
                Value : cloc,
                Label : 'CustomerLocation',
            },
            {
                $Type : 'UI.DataField',
                Value : customerID,
                Label : 'CustomerID',
            },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : 'Status',
            },
        ],
    },
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'enquiryTOPayment/@Communication.Contact#contact',
            Label : 'Contact Name',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.ConnectedFields#connected',
            Label : 'Lab',
        },
    ],
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{purchaseEnquiryID}>{customerID}',
        Data : {
            $Type : 'Core.Dictionary',
            purchaseEnquiryID : {
                $Type : 'UI.DataField',
                Value : purchaseEnquiryID,
            },
            customerID : {
                $Type : 'UI.DataField',
                Value : customerID,
            },
        },
    },
    UI.FieldGroup #Comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
);

annotate service.Vehicle with @(
    UI.LineItem #VehicleDetails : [
        {
            $Type : 'UI.DataField',
            Value : vehicleCode,
            Label : 'Vehicle Code',
        },
        {
            $Type : 'UI.DataField',
            Value : vehicleName,
            Label : 'Vehicle Name',
        },
        {
            $Type : 'UI.DataField',
            Value : vehicleColor,
            Label : 'Vehicle Color',
        },
        {
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'Quantity',
        },
        // {
        //     $Type : 'UI.DataField',
        //     Value : pricePerUnit,
        //     Label : 'Price Per Unit',
        // },
        // {
        //     $Type : 'UI.DataField',
        //     Value : atualPrice,
        //     Label : 'Actual Price',
        // },
        {
            $Type : 'UI.DataField',
            Value : discount,
            Label : 'Discount',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'Discounted Price',
        },
    ]
);

annotate service.Vehicle with {
    vehicleCode @Common.FieldControl : #ReadOnly
};

annotate service.Vehicle with {
    vehicleName @Common.FieldControl : #ReadOnly
};

annotate service.Vehicle with {
    vehicleColor @Common.FieldControl : #ReadOnly
};

annotate service.Vehicle with {
    quantity @Common.FieldControl : #ReadOnly
};

annotate service.Vehicle with {
    price @Common.FieldControl : #ReadOnly
};

annotate service.PurchaseEnquiry with {
    purchaseEnquiryID @Common.FieldControl : #ReadOnly
};

annotate service.PurchaseEnquiry with {
    customerID @Common.FieldControl : #ReadOnly
};

annotate service.PurchaseEnquiry with {
    status @Common.FieldControl : #ReadOnly
};

annotate service.PurchaseEnquiry with {
    deliveryLocation @Common.FieldControl : #ReadOnly
};

// annotate service.Customer with {
//     address @Common.FieldControl : #ReadOnly
// };

// annotate service.Customer with {
//     name @Common.FieldControl : #ReadOnly
// };

annotate service.Quotation with {
    quotationID @Common.FieldControl : #ReadOnly
};

// annotate service.Customer with {
//     customerID @Common.FieldControl : #ReadOnly
// };

annotate service.Sales with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : soID,
            Label : 'soID',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },
        {
            $Type : 'UI.DataField',
            Value : discount,
            Label : 'discount',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : ' Sales',
    }
);

annotate service.Sales with {
    discount @Common.FieldControl : #ReadOnly
};

annotate service.Sales with {
    dealerCode @Common.FieldControl : #ReadOnly
};

annotate service.Sales with {
    price @Common.FieldControl : #ReadOnly
};

annotate service.Sales with {
    soID @Common.FieldControl : #ReadOnly
};

annotate service.Sales with {
    poID @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with {
    accountNo @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with {
    amount @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with {
    paymentId @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with {
    paymentMethod @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with {
    pstatus @Common.FieldControl : #ReadOnly
};

// annotate service.Customer with {
//     status @Common.FieldControl : #ReadOnly
// };

// annotate service.PurchaseEnquiry with {
//     address @Common.FieldControl : #ReadOnly
// };

// annotate service.PurchaseEnquiry with {
//     name @Common.FieldControl : #ReadOnly
// };

// annotate service.PurchaseEnquiry with {
//     cname @Common.FieldControl : #ReadOnly
// };

annotate service.PurchaseEnquiry with {
    cloc @Common.FieldControl : #ReadOnly
};

annotate service.PaymentDetails with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : accountNo,
    }
);

annotate service.PurchaseOrder with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : deliveryLocation,
            Label : 'deliveryLocation',
        },
        {
            $Type : 'UI.DataField',
            Value : poID,
            Label : 'poID',
        },
        {
            $Type : 'UI.DataField',
            Value : quotationID,
            Label : 'quotationID',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View PurchaseOrder',
    }
);

