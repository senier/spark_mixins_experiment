with Ada.Streams;
package Abstract_Type with SPARK_Mode is
   type T is abstract tagged private;

   function Channel_Has_Data (Context : T) return Boolean is abstract;

   procedure Read (Context : in out T;
                   Buffer  :    out Ada.Streams.Stream_Element_Array;
                   Length  :    out Ada.Streams.Stream_Element_Offset) is abstract;

   procedure Initialize (Context : in out T'Class;
                         Size    :        Natural);
   procedure Run (Context : in out T'Class);

private
   type T is abstract tagged
   record
      State       : Natural;
      Buffer_Size : Natural;
   end record;
end Abstract_Type;

