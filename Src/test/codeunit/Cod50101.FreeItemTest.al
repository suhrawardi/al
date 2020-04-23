codeunit 50102 FreeItemTest
{
    Subtype = Test;

    var
        Assert: Codeunit Assert;
        LibraryUtility: Codeunit "Library - Utility";
        LibrarySales: Codeunit "Library - Sales";
        LibraryInventory: Codeunit "Library - Inventory";

    // [FEATURE] Add Sales Line with Item

    [Test]
    procedure AddSalesLineWithItemElligbleToAFreeGift()
    var
        Item: Record Item;
    begin
        CreateItem(Item);

    end;

    local procedure CreateItem(var Item: record Item)
    begin
        LibraryInventory.CreateItem(Item)
    end;
}