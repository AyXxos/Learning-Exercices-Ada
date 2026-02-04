with Ada.Text_IO; use Ada.Text_IO;

procedure Records is
   type Months is (
      January, February, Mars,
      April, May, June, July,
      August, September, October,
      November, December
   );

   subtype Day_Range is Integer range 1 .. 31;

   type Date is record
      Day : Day_Range;
      Month : Months;
      Year : Integer range 0 .. 3000 := 2026;
   end record;

   procedure Display_Date (D : Date) is
   begin
      Put_Line ("Day" & Day_Range'Image (D.Day) &
      ", Month " & Months'Image (D.Month) &
      ", Year" & Integer'Image (D.Year)
      );
   end Display_Date;

   procedure Change_Day_Of_Date (
      D : in out Date;
      Day : Day_Range) is
   begin
      D.Day := Day;
   end Change_Day_Of_Date;

   Birth : Date := (2, October, 203);
begin
   Display_Date (Birth);
   Put_Line ("After changing the day:");
   Change_Day_Of_Date (Birth, 15);
   Display_Date (Birth);

end Records;