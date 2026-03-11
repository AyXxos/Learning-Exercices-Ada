with Ada.Text_IO; use Ada.Text_IO;

package body satellite_infos is

   procedure Display_Satellite_Infos is
   begin
      Put_Line ("Satellite Name: " & Name);
      Put_Line ("Launch Date: " & Date_Launched);
   end Display_Satellite_Infos;

   function Get_Satellite_Name return String is
   begin
      return Name;
   end Get_Satellite_Name;

   function Get_Launch_Date return String is
   begin
      return Date_Launched;
   end Get_Launch_Date;

end satellite_infos;