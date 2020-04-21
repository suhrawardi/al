tableextension 50100 "ItemTableExtensions" extends Item
{
    fields
    {
        field(50101; FreeItemNo; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Item";
            Caption = 'Free Item No.';
        }
    }
}