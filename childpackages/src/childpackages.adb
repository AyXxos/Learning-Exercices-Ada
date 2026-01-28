with Ada.Text_IO; use Ada.Text_IO;
with Week.ChildMon; use Week.ChildMon;
with Week.ChildTue;

procedure Childpackages is
begin
   Put_Line ("The first day of the week is " & Get_First_Day_Of_Week);
   Put_Line ("And the second day of the week is "
   &  Week.ChildTue.Get_Second_Day_Of_Week);
end Childpackages;
