package body Abstract_Type
   with SPARK_Mode
is

   function Create (Buffer_Size : Natural) return T'Class is (T'(Buffer_Size => Buffer_Size));

   procedure Run (Context : in out T) is
   begin
      null;
   end Run;

end Abstract_Type;
