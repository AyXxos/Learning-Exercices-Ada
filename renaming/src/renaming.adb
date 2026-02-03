with Ada.Text_IO;

procedure Renaming is
   package TextIO renames Ada.Text_IO;
   procedure Say (Something : String)
      renames TextIO.Put_Line;
begin
   TextIO.Put_Line ("Hello world !");
   Say ("Hello world !");
end Renaming;
