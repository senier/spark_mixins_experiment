package body Use_Abstract
   with SPARK_Mode
is

   function Create (Buffer_Size : Natural;
                    Remote_Addr : String) return T
   is
   begin
      return (Abstract_Type.T (Abstract_Type.Create (Buffer_Size)) with FD => 42);
   end Create;

   function Channel_Has_Data (Context : T) return Boolean is (False);

   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset)
   is
      pragma Unreferenced (Context, Buffer, Length);
   begin
      null;
   end Read;

end Use_Abstract;
