pragma Ada_2022;
with Ada.Strings.Unbounded;
package body IDLL_Demo is
   function Sample return Str_Lists.List is
      L : Str_Lists.List;
   begin
      L.Append ("alpha");
      L.Append ("beta");
      L.Prepend ("zero");
      return L;
   end Sample;
   function Joined (L : Str_Lists.List) return String is
      use Ada.Strings.Unbounded;
      Acc : Unbounded_String;
      First : Boolean := True;
   begin
      for E of L loop
         if First then
            Acc := To_Unbounded_String (E);
            First := False;
         else
            Append (Acc, ",");
            Append (Acc, E);
         end if;
      end loop;
      return To_String (Acc);
   end Joined;
end IDLL_Demo;
