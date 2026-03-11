with Ada.Text_IO; use Ada.Text_IO;
with satellite_infos; use satellite_infos;

procedure Nanosat is
begin
   Display_Satellite_Infos;
   Put_Line ("");
   Put_Line ("You can also access the satellite information using functions:");
   Put_Line ("Satellite Name: " & Get_Satellite_Name);
   Put_Line ("Launch Date: " & Get_Launch_Date);

end Nanosat;
