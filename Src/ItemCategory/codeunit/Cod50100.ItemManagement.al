codeunit 50100 "Item Management"
{
    trigger OnRun()
    begin
    end;
    
    procedure AssignDefaultCategory(ItemCode: Code[20])
    var
        Item : Record Item;
        ItemCategory : Record "Item Category"
    begin
        //Set default category for an item
        Item.Get(ItemCode);
        ItemCategory.SetRange(Default, true);
        if ItemCategory.FindFirst() then
        begin
            Item."Item Category" := ItemCategory.No;
            Item.Modify();
        end;
    end;
    
    procedure AssignDefaultCategory()
    var
        Item : Record Item;
        ItemCategory : Record "Item Category"
    begin
        //Set default category for an item
        Item.Get(ItemCode);
        ItemCategory.SetRange(Default, true);
        if ItemCategory.FindFirst() then
        repeat
            Item."Item Category" := ItemCategory.No;
            Item.Modify();
        untill Item.Next() = 0;
    end;
    
    procedure CreateDefaultCategory()
    var
        ItemCategory : Record "Item Category"
    begin
        ItemCategory.No := 'DEFAULT';
        ItemCategory.Description := 'Default Item Category';
        ItemCategory.Default := true;
        if ItemCategory.Insert then;
    end;
}