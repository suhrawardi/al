pageextension 50102 "ItemCardExtension" extends "Item Card"
{
    layout
    {
        addlast(General)
        {
            field("Item Category SDM"; "Item Category SDM")
            {
                ToolTip = 'Item Category'
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        addlast("Functions")
        {
            action("Assign default category")
            {
                Image = ChangeItem;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                Caption = 'Assign Default Category';
                ToolTip = 'Assigns the default category for the selected item';

                trigger OnAction()
                var
                    ItemManagement: CodeUnit "Item Management";
                begin
                    ItemManagement.AssignDefaultCategory(Rec."No.");
                end;

            }
        }
    }
}