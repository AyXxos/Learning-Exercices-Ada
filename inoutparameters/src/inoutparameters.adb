with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO; 

procedure Inoutparameters is
   
   procedure Display_Money (Account : in Float) is
   begin
      Put_Line ("You currently have :" & Float'Image(Account));
   end Display_Money;

   procedure Add_To_Account (Account : in out Float; Amount : in Float) is
   begin
      Account := Account + Amount;
   end Add_To_Account;

   procedure Apply_Financial_Interests (Account : in out Float;  Rate : in Float) is
   Gain : Float;
   begin
      Gain := Account * Rate;
      Add_To_Account (Account, Gain);
   end Apply_Financial_Interests;



   my_account : Float := 1000.0;
   bonus : Float := 0.05;
begin
   Display_Money (my_account);
   Put_Line ("----------------------");
   Put_Line ("How much do you want to add to your account ?");
   Get (bonus);
   Add_To_Account (my_account, bonus);
   Display_Money (my_account);
   Put_Line ("----------------------");
   Put_Line ("New Year ! Applying financial interests...");
   Apply_Financial_Interests (my_account, bonus);
   Put_Line ("----------------------");
   Display_Money (my_account);
end Inoutparameters;
