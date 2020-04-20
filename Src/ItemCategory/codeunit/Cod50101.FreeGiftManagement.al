codeunit 50101 "FreeGiftManagement"
{
    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Quantity', false, false)]
    local procedure AddFreeGift(var Rec: Record "Sales Line")
    var
        FreeGift: Record FreeGift;
        SalesLine: Record "Sales Line";
        Item: Record Item;
    begin
        if (Rec.Type = Rec.Type::Item) and (Item.Get(Rec."Item No.")) then
        begin
            if FreeGift.Get(Item."Item Category", Rec."No.") then
            begin
                OnBeforeFreeGiftSalesLineAdded(Rec);
                //Creates a new Sales Line with the free gift
                SalesLine.init;
                SalesLine.TransferFields(Rec);
                SalesLine."Line No." := Rec."Line No." + 10000;
                SalesLine.Validate("Line Discount %s", 100)
                if SalesLine.Insert() then;
                OnAfterFreeGiftSalesLineAdded(Rec, SalesLine);
            end;
        end;
    end;

    [IntegrationEvent(true, true)]
    local procedure OnBeforeFreeGiftSalesLineAdded(var Rec: Record "Sales Line")
    begin

    end;

    [IntegrationEvent(true, true)]
    local procedure OnAfterFreeGiftSalesLineAdded(var Rec: Record "Sales Line", var SalesLineGift: Record "Sales Line")
    begin

    end;
}