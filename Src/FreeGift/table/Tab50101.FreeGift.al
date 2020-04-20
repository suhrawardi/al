table 50101 FreeGift
{
    DataClassification = "CustomerContent";
    DrillDownPageId = "Free Gift List";
    LookupPageId = "Free Gift List";
    Caption = 'Free Gifts';

    fields
    {
        field(1; ItemCategoryCode; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Item Category";
            Caption = 'Item Category Code';
        }
        field(2; ItemNo; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Item";
            Caption = 'Item No.';
        }
    }

    keys
    {
        key(PK; ItemCategoryCode, ItemNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}