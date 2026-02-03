with Ada.Text_IO; use Ada.Text_IO;

procedure Enumerationstypes is
   type Backpack is (
      Water, Sausage, Knife,
      Socks);
begin
   Put_Line ("In my backpack there is ");
   for I in Backpack loop
      Put_Line (Backpack'Image (I));
   end loop;
end Enumerationstypes;
