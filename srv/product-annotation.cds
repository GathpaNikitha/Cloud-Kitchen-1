using{nnrg.ProductLocal as Product} from './cloudkitchen';

annotate Product with @(
    UI.LineItem:[
        {
            $Type:'UI.DataField',
            Value: Product
        },
        {
            $Type:'UI.DataField',
            Value: BaseUnit
        },
        {
            $Type:'UI.DataField',
            Value: ProductType
        },
        {
            $Type:'UI.DataField',
            Value: ProductGroup
        },
         {
            $Type:'UI.DataField',
            Value: ProductDescription
        },

    ]
);

annotate Product with @(       
    UI.FieldGroup #ProductInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Product',
            Value : Product
        },
        {
            $Type : 'UI.DataField',
            Value : BaseUnit
        },
        {
            $Type : 'UI.DataField',
            Value :  ProductType
        },
        {
            $Type : 'UI.DataField',
            Value : ProductGroup
        },
         {
            $Type : 'UI.DataField',
            Value : ProductDescription
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : ' ProductInformation',
            Label : 'Product Information',
            Target : '@UI.FieldGroup#ProductInformation',
        },
    ],    
);