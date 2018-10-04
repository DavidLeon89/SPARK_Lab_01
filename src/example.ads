package Example
   with SPARK_Mode => On
is

   function Max (N1, N2, N3 : Integer) return Integer
      with Post => Max'Result >= N1 and Max'Result >= N2 and Max'Result >= N3 and (Max'Result = N1 or Max'Result = N2 or Max'Result = N3);
   --  Modifica esta postcondicion para que podamos verificar
   --  formalmente esta funcion.

end Example;
