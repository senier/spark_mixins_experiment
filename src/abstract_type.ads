with Ada.Streams;

package Abstract_Type
   with SPARK_Mode
is

   type T is tagged private;

   function Create (Buffer_Size : Natural) return T'Class;

   function Channel_Has_Data (Context : T) return Boolean is (raise Program_Error);
   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset) is null;

   procedure Run (Context : in out T);

private

   type T is tagged
   record
      Buffer_Size: Natural;
   end record;

end Abstract_Type;
