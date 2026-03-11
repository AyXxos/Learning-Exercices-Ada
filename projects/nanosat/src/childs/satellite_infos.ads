package satellite_infos is
   Name : constant String := "Nanosat";
   Date_Launched : constant String := "2024-06-01";

   procedure Display_Satellite_Infos;

   function Get_Satellite_Name return String;

   function Get_Launch_Date return String;
end satellite_infos;