with Ada.Text_IO; use Ada.Text_IO;

procedure Inoutparameters is
   
   procedure Display_Money (Account : in Float) is
   begin
      Put_Line("You currently have :" & Float'Image(Account));
   end Display_Money;

   procedure Add_To_Account (Account : in out Float; Amount : in Float) is
   begin
      Account := Account + Amount;
   end Add_To_Account;


   my_account : Float := 1000.0;
   bonus : Float := 0.0;
begin
   Display_Money (my_account);
   Add_To_Account(my_account, 100.0);
   Display_Money (my_account);
end Inoutparameters;
