load "config.m";
SetVerbose("Shimura", true);

getrandnext := function(d);
  objs := BelyiDBGetNotComputed(d,0);
  if #objs eq 0 then 
    return false; 
  else
    return Random(objs);
  end if;
end function;

// asg := 1;   // this is the previous computed number; increment, paste

for sIn in BelyiDBGetNotComputed(8,0 : only_hyperbolic := true) do
// sIn := getrandnext(8);
// filenames := [ "8T49-[15,4,4]-53-4211-4211-g0.m", "8T49-[15,6,6]-53-3221-3221-g0.m", "8T49-[5,6,15]-5111-3221-53-g0.m", "8T49-[6,15,2]-62-53-221111-g0.m", "8T49-[6,4,4]-62-4211-4211-g0.m", "8T49-[6,5,6]-62-5111-3221-g0.m", "8T49-[6,6,4]-62-3221-4211-g0.m", "8T49-[7,15,2]-71-53-221111-g0.m", "8T49-[7,3,5]-71-3311-5111-g0.m", "8T49-[7,3,6]-71-3311-3221-g0.m", "8T49-[7,4,4]-71-4211-4211-g0.m", "8T49-[7,5,4]-71-5111-4211-g0.m", "8T49-[7,5,5]-71-5111-5111-g0.m", "8T49-[7,5,6]-71-5111-3221-g0.m", "8T49-[7,6,2]-71-62-221111-g0.m", "8T49-[7,6,3]-71-62-311111-g0.m", "8T49-[7,6,6]-71-3221-3221-g0.m", "8T50-[10,10,3]-521-521-3311-g0.m", "8T50-[10,10,4]-521-521-4211-g0.m", "8T50-[10,10,6]-521-521-3221-g0.m", "8T50-[10,12,4]-521-431-4211-g0.m", "8T50-[10,15,4]-521-53-41111-g0.m", "8T50-[10,3,12]-521-3311-431-g0.m", "8T50-[10,6,12]-521-3221-431-g0.m", "8T50-[12,12,3]-431-431-3311-g0.m", "8T50-[12,12,6]-431-431-3221-g0.m", "8T50-[12,6,6]-431-332-3221-g0.m", "8T50-[15,10,6]-53-521-32111-g0.m", "8T50-[15,2,12]-53-22211-431-g0.m", "8T50-[15,4,12]-53-41111-431-g0.m", "8T50-[15,4,6]-53-422-32111-g0.m", "8T50-[15,6,6]-53-332-32111-g0.m", "8T50-[4,12,12]-4211-431-431-g0.m", "8T50-[4,4,12]-41111-44-431-g0.m", "8T50-[4,4,12]-422-4211-431-g0.m", "8T50-[4,4,6]-41111-44-332-g0.m", "8T50-[4,6,12]-4211-332-431-g0.m", "8T50-[5,10,10]-5111-521-521-g0.m", "8T50-[5,10,4]-5111-521-422-g0.m", "8T50-[5,12,12]-5111-431-431-g0.m", "8T50-[5,4,6]-5111-422-332-g0.m", "8T50-[5,6,10]-5111-332-521-g0.m", "8T50-[6,10,2]-611-521-2222-g0.m", "8T50-[6,10,4]-611-521-4211-g0.m", "8T50-[6,10,6]-62-521-32111-g0.m", "8T50-[6,12,2]-611-431-2222-g0.m", "8T50-[6,15,4]-611-53-41111-g0.m", "8T50-[6,2,15]-611-22211-53-g0.m", "8T50-[6,2,6]-62-22211-332-g0.m", "8T50-[6,3,10]-611-3311-521-g0.m", "8T50-[6,3,12]-611-3311-431-g0.m", "8T50-[6,3,4]-611-3311-422-g0.m", "8T50-[6,3,6]-611-3311-332-g0.m", "8T50-[6,4,4]-611-41111-44-g0.m", "8T50-[6,4,5]-611-422-5111-g0.m", "8T50-[6,4,6]-611-4211-332-g0.m", "8T50-[6,4,6]-611-44-32111-g0.m", "8T50-[6,6,10]-611-3221-521-g0.m", "8T50-[6,6,12]-611-3221-431-g0.m", "8T50-[6,6,2]-611-62-22211-g0.m", "8T50-[6,6,4]-611-611-4211-g0.m", "8T50-[6,6,5]-611-611-5111-g0.m", "8T50-[6,6,6]-611-611-3221-g0.m", "8T50-[7,10,4]-71-521-41111-g0.m", "8T50-[7,12,6]-71-431-32111-g0.m", "8T50-[7,2,10]-71-22211-521-g0.m", "8T50-[7,2,4]-71-22211-422-g0.m", "8T50-[7,2,6]-71-22211-611-g0.m", "8T50-[7,4,6]-71-41111-332-g0.m", "8T50-[7,4,6]-71-422-32111-g0.m", "8T50-[7,6,6]-71-332-32111-g0.m", "8T50-[8,10,2]-8-521-221111-g0.m", "8T50-[8,10,3]-8-521-311111-g0.m", "8T50-[8,12,3]-8-431-311111-g0.m", "8T50-[8,2,4]-8-22211-4211-g0.m", "8T50-[8,2,5]-8-22211-5111-g0.m", "8T50-[8,2,6]-8-221111-611-g0.m", "8T50-[8,4,6]-8-41111-3221-g0.m", "8T50-[8,4,6]-8-4211-32111-g0.m", "8T50-[8,6,3]-8-611-311111-g0.m" ];
// sIn := BelyiDBRead(filenames[asg]);

if sIn`BelyiDBPointedSize gt 20 then continue; end if;

Gammas := BelyiDBToGammas(sIn);
prec := 30;
d := Degree(Universe(DefiningPermutation(Gammas[1])));
m0 := #PassportRepresentatives(DefiningPermutation(Gammas[1]) : Pointed := true);
precNewton := 200*m0*Round(Log(d));
halfbaseprecNewton := precNewton div 2;
for i := 1 to #Gammas do
  Gamma := Gammas[i];
  while not assigned Gamma`TriangleBelyiCurve do
    try 
      X, phi := BelyiMap(Gamma : prec := prec, precNewton := precNewton);
    catch e
      print "ERROR ERROR ERROR ERROR, increasing precision: ", e`Object;
      prec +:= 15;
      precNewton +:= halfbaseprecNewton;
      Gamma := TriangleSubgroup(sIn`BelyiDBPointedPassport[i]);
      Gammas[i] := Gamma;
    end try;
  end while;
end for;

print "Final precision:", prec;
sOut := GammasToBelyiDB(Gammas); BelyiDBWrite(sOut);

end for;
