codeunit 50101 "FreeGiftManagement"
{
    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Quantity', false, false)]
    local procedure AddFreeGift(var Rec: Record "Sales Line")
    var
        SalesLine: Record "Sales Line";
        Item: Record Item;
    begin
        if (Rec.Type = Rec.Type::Item) then begin
            if Item.Get(Rec."No.") then begin
                OnBeforeFreeGiftSalesLineAdded(Rec);
                //Creates a new Sales Line with the free gift
                SalesLine.init;
                SalesLine.TransferFields(Item);
                SalesLine."Line No." := Rec."Line No." + 10000;
                SalesLine.Validate(Quantity, 1);
                SalesLine.Validate("Line Discount %", 100);
                if SalesLine.Insert() then;
                OnAfterFreeGiftSalesLineAdded(Rec, SalesLine);
            end;
        end;
    end;

    [IntegrationEvent(true, false)]
    local procedure OnBeforeFreeGiftSalesLineAdded(var Rec: Record "Sales Line")
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnAfterFreeGiftSalesLineAdded(var Rec: Record "Sales Line"; var SalesLineGift: Record "Sales Line")
    begin
    end;
}