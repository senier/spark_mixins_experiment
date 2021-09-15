package body Abstract_Type with SPARK_Mode
is
   function Create (Size : Natural) return S is (State => 0, Buffer_Size => Size);

   procedure Run (Context : in out T'Class)
   is
   begin
      while Context.State.State < Natural'Last loop
         Context.State.State := Context.State.State + 1;
      end loop;
   end Run;
end Abstract_Type;
