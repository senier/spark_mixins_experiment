with Ada.Streams;
with Abstract_Type;

package Use_Abstract
   with Elaborate_Body, SPARK_Mode
is

   type T is new Abstract_Type.T with private;

   overriding
   function Channel_Has_Data (Context : T) return Boolean;

   overriding
   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset);

   function Create (Buffer_Size : Natural;
                    Remote_Addr : String) return T;

private

   type T is new Abstract_Type.T with
   record
      FD : Integer;
   end record;

end Use_Abstract;
