with Ada.Streams;
package Abstract_Type with SPARK_Mode is

   type S is private;

   type T is abstract tagged
   record
      State : S;
   end record;

   function Channel_Has_Data (Context : T) return Boolean is abstract;

   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset) is abstract;

   function Create (Size : Natural) return S;
   procedure Run (Context : in out T'Class);

private
   type S is
   record
      State       : Natural;
      Buffer_Size : Natural;
   end record;

end Abstract_Type;

