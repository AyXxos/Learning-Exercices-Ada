with weekdays;
with Ada.Text_IO; use Ada.Text_IO;
with operations;
procedure Packagesintro is
   use operations;
   procedure Display_Values (Nb : Integer; Incre : Integer) is
      Incrd : constant Integer := Increment_By (Nb, Incre);
   begin
      Put_Line (Integer'Image (Nb) &
      " incremented by"
      & Integer'Image (Incre)
      & " is"
      &  Integer'Image (Incrd));
   end Display_Values;

   Val : constant Integer := 5;
   Incrementor : constant Integer := 3;
begin
   Put_Line ("The second day of the week is " & weekdays.Tue);

   Put_Line ("Our value is" & Integer'Image (Val));
   Put_Line ("It'll be incremented by" & Integer'Image (Incrementor));
   Display_Values (Val, Incrementor);

end Packagesintro;
