tableextension 50100 "ItemTableExtensions" extends Item
{
    fields
    {
        field(50100; "Item Category SDM"; Code[20])
        {
            TableRelation = "Item Category".No;
            Caption = 'Item Category Code';
            DataClassification = CustomerContent;
        }
    }
}