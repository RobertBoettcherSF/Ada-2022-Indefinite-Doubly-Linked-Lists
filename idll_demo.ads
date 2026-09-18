--  Ada 2022 topic: Ada.Containers.Indefinite_Doubly_Linked_Lists.
pragma Ada_2022;
with Ada.Containers.Indefinite_Doubly_Linked_Lists;
package IDLL_Demo is
   package Str_Lists is new Ada.Containers.Indefinite_Doubly_Linked_Lists (String);
   function Sample return Str_Lists.List;
   function Joined (L : Str_Lists.List) return String;
end IDLL_Demo;
