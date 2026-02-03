with Ada.Text_IO; use Ada.Text_IO;

procedure Enumerationstypes is
   type Backpack is (
      Water, Sausage, Cereals, Knife,
      Socks);

   subtype Food is
      Backpack range Water .. Cereals;
begin
   Put_Line ("In my backpack there is ");
   for I in Backpack loop
      case I is
         when Food =>
            Put_Line ("Miam ! Some " & Backpack'Image (I));
         when others =>
            Put_Line ("Nice " & Backpack'Image (I));
      end case;
   end loop;
end Enumerationstypes;
