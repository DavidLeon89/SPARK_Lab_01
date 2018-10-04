with Ada.Text_IO;      use Ada.Text_IO;
with Example;          use Example;
with Test_Assertions;  use Test_Assertions;

procedure Test_Example is

   procedure Test_1 is
      Msg   : constant String := "Test_1: the first value is the maximum";
   begin
      Assert_True (Max (-1, -3, 0) = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

   procedure Test_2 is
      Msg   : constant String := "Test_2: the second value is the maximum";
   begin
      Assert_True (Max (3, 10, 1) = 10, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2;

   procedure Test_3 is
      Msg   : constant String := "Test_3: the third value is the maximum";
   begin
      Assert_True (Max (3, 1, 10) = 10, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_3;

begin
   Put_Line ("********************* Test_Max");
   Test_1;
   Test_2;
   Test_3;
end Test_Example;
