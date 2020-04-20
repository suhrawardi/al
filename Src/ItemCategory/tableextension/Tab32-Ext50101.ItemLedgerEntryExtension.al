tableextension 50101 ItemLedgerEntryExtension extends "Item Ledger Entry"
{
    fields
    {
        field(50101; "Item Category SDM"; Code[20])
        {
            TableRelation = "Item Category".No;
            Caption = 'Item Category';
        }
    }
}