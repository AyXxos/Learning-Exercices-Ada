with Ada.Text_IO; use Ada.Text_IO;

procedure Arrays is
   type My_Int is range 0 .. 500;
   type Bounds is range 1 .. 5;

   type My_Int_Array is
      array (Bounds) of My_Int;

   Arr : constant My_Int_Array := (2, 3 , 300, 200, 51);

   V : My_Int;
begin
   for I in Bounds loop
      V := Arr (I);
      Put_Line (My_Int'Image (V));
   end loop;
   New_Line;
end Arrays;
