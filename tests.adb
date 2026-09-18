pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with IDLL_Demo; use IDLL_Demo;
procedure Tests is
   L : constant Str_Lists.List := Sample;
begin
   Assert (Natural (L.Length) = 3);
   Assert (L.First_Element = "zero");
   Assert (Joined (L) = "zero,alpha,beta");
   Put_Line ("PASS Indefinite_Doubly_Linked_Lists");
   Put_Line ("All Indefinite_Doubly_Linked_Lists topic tests passed.");
end Tests;
