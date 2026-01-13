with Ada.Text_IO; use Ada.Text_IO;

procedure Inoutparameters is
   
   procedure Display_Money (Account : in Float) is
   begin
      Put_Line("You currently have :" & Float'Image(Account));
   end Display_Money;

   my_account : Float := 1000.00;
   bonus : Float := 0.0;

begin
   Display_Money (my_account);
end Inoutparameters;
