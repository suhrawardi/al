tableextension 50100 "ItemTableExtensions" extends Item
{
    fields
    {
        field(50101; "Free Item No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Item";
            Caption = 'Free Item No.';
        }
    }
}