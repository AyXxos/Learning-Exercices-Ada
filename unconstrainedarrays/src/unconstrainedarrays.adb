with Ada.Text_IO; use Ada.Text_IO;

procedure Unconstrainedarrays is
   type Food is (Cookie, Cake, Pie);

   type Food_Backpack is
   array (Natural range <>) of Food;

   Workload : constant Food_Backpack := (Cookie, Cake, Pie, Cookie, Cake);
begin
   for I in Workload'Range loop
      Put_Line (Food'Image (Workload (I)));
   end loop;
   --  String are also unconstrained arrays,
   --  so we can use the same approach to print them:

   declare
      Str : constant String := "Hello, World!";
   begin
      for I in Str'Range loop
         Put (Str (I));
      end loop;
      New_Line;
      for I in reverse Str'Range loop
         Put (Str (I));
      end loop;
   end;
end Unconstrainedarrays;
