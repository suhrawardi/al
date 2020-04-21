pageextension 50102 "ItemCardExtension" extends "Item Card"
{
    layout
    {
        addlast("Prices & Sales")
        {
            field("Free Item No."; "Free Item No.")
            {
                ToolTip = 'Free Item';
                ApplicationArea = All;
            }
        }
    }
}
