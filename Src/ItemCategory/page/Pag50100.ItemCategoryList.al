page 50100 "Item List Page"
{
    PageType = List;
    SourceTable = "Item Category";
    UsageCategory = Lists;
    Caption = 'Item Category List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(No; No)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field(Default; Default)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Default Category")
            {
                Image = CreateForm;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;
                ToolTip = 'Create a default Item Category';
                Caption = 'Create default category';

                trigger OnAction()
                var
                    ItemManagement: CodeUnit "Item Management";
                begin
                    //!Integration event raised
                    OnBeforeCreateDefaultCategoryAction(Rec);
                    ItemManagement.CreateDefaultCategory();
                    //!Integration event raised
                    OnAfterCreateDefaultCategoryAction(Rec);
                end;
            }
        }
    }

    [IntegrationEvent(true, true)]
    local procedure OnBeforeCreateDefaultCategoryAction(var ItemCategory: Record "Item Category")
    begin

    end;

    [IntegrationEvent(true, true)]
    local procedure OnAfterCreateDefaultCategoryAction(var ItemCategory: Record "Item Category")
    begin

    end;
}