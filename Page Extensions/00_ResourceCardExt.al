pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type";"CSD_Resource Type")
            {

            }
            field("CSD_Quantity Per Day";"CSD_Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group(Room)
            {
                field("CSD_Maximum Participants";"CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }
    
    trigger OnAfterGetCurrRecord();
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);
    end;
    
    var
        [InDataSet]
        ShowMaxField: Boolean;
}