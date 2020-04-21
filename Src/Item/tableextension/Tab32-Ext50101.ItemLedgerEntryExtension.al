tableextension 50101 ItemLedgerEntryExtension extends "Item Ledger Entry"
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