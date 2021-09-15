package body Use_Abstract with SPARK_Mode is

   function Create (Buffer_Size : Natural;
                    Remote_Addr : String) return T
   is (FD => 42, State => Abstract_Type.Create (Buffer_Size), Stats => Stats_Type (Remote_Addr'Length));

   function Channel_Has_Data (Context : T) return Boolean is (Context.FD > 0);

   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset) is
   begin
      Context.Stats := Context.Stats + 1;
      Buffer := (others => 0);
      Length := 0;
   end Read;

end Use_Abstract;
