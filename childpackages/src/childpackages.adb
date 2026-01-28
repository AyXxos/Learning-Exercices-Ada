with Ada.Text_IO; use Ada.Text_IO;
with Week.ChildMon; use Week.ChildMon;

procedure Childpackages is
begin
   Put_Line ("The first day of the week is " & Get_First_Day_Of_Week);
end Childpackages;
