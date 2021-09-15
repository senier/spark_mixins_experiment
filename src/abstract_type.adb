package body Abstract_Type with SPARK_Mode
is
   procedure Initialize (Context : in out T'Class;
                         Size    :        Natural) is
   begin
      Context.Buffer_Size := Size;
   end Initialize;

   procedure Run (Context : in out T'Class)
   is
   begin
      while Context.State < Natural'Last loop
         Context.State := Context.State + 1;
      end loop;
   end Run;
end Abstract_Type;

