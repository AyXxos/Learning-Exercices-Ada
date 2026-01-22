package body operations is

   function Increment_By
   (I: Integer; 
   Incr : Integer) return Integer is
   begin
      return I + Incr;
   end Increment_By;

end operations;