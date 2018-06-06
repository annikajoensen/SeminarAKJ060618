pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - 2018-06-06 - AKJ
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD_Resource Type";"CSD_Resource Type")
            {

            }
            field("CSD_Maximum Participants";"CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        ShowType: Boolean;
}