page 123456700 "Seminar Setup"
// CSD1.00 - 2018-01-01 - AKJ
{
    PageType = Card;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                
                field("Seminar Nos.";"Seminar Nos.")
                {
                    
                }
                field("Seminar Registration Nos.";"Seminar Registration Nos.")
                {
                    
                }
                field("Posted Seminar Reg. Nos.";"Posted Seminar Reg. Nos.")
                {

                }
            }
        }
    }

    var
        myInt : Integer;
    
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            Insert;
        end;
    end;

}