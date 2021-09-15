package body Use_Abstract with SPARK_Mode is

   function Create (Buffer_Size : Natural;
                    Remote_Addr : String) return T
   is
      Result : T := (Abstract_Type.Default_Value with FD => 42, others => <>);
   begin
      Abstract_Type.Initialize (Result, Buffer_Size);
      return Result;
   end Create;

   function Channel_Has_Data (Context : T) return Boolean is (False);

   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset) is null;

end Use_Abstract;
