package body Example
   with SPARK_Mode => On
is

   function Max (N1, N2, N3 : Integer) return Integer is
   begin
      --  Escribe aqui tu codigo para calcular el maximo de
      --  los tres numeros.
      if N1 >= N2  and N1 >= N3 then
         return N1;
      elsif N2 >= N1 and N2 >= N3 then 
         return N2;
      else
         return N3;
      end if;
   end Max;

end Example;
