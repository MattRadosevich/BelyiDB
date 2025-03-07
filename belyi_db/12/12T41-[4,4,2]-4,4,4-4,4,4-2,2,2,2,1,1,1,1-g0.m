s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | -2, -4, 0, 2, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial([RationalField() | -2, 4, 0, -2, 1]));
place2 := InfinitePlaces(K2)[1];
conj2 := false;
CC<I> := ComplexField(20);
z2 := 0.00000000000000000000p20;
base_field_data_2 := [* K2, place2, conj2, z2 *];
Append(~base_field_data, base_field_data_2);
s`BelyiDBBaseFieldData := base_field_data;

/*
Belyi Maps
*/

curves := [* *];
maps := [* *];
K1<nu1> := K1;
X1 := Curve(ProjectiveSpace(PolynomialRing(K1, 2)));
KX1<x> := FunctionField(X1);
phi1 := KX1!((1/144*x^12 + 1/18*(2*nu1^3 + 7)*x^11 + 1/18*(68*nu1^3 - 76*nu1^2 + 152*nu1 + 177)*x^10 + 1/27*(-3916*nu1^3 - 7528*nu1^2 + 16848*nu1 + 8690)*x^9 + 1/3*(-24200*nu1^3 - 14120*nu1^2 + 45040*nu1 + 23989)*x^8 + 1/9*(-780128*nu1^3 + 480768*nu1^2 + 518400*nu1 + 155504)*x^7 + 1/27*(24705728*nu1^3 + 59369408*nu1^2 - 75483520*nu1 - 58475184)*x^6 + 1/9*(184708992*nu1^3 + 118417664*nu1^2 - 314992128*nu1 - 193613888)*x^5 + 1/9*(499093760*nu1^3 - 917267200*nu1^2 - 28378624*nu1 + 506045680)*x^4 + 1/243*(-147722180864*nu1^3 - 223864147968*nu1^2 + 362690555904*nu1 + 228506342528)*x^3 + 1/81*(-246184277504*nu1^3 - 33976557056*nu1^2 + 324547271680*nu1 + 171903020160)*x^2 + 1/81*(203408174080*nu1^3 + 713925945344*nu1^2 - 760027189248*nu1 - 658973766144)*x + 1/243*(2005136136192*nu1^3 + 1012161755136*nu1^2 - 3326395011072*nu1 - 1749209126144))/(x^11 + (16*nu1^3 - 16)*x^10 + (-624*nu1^3 - 624*nu1^2 + 1248*nu1 + 1044)*x^9 + (-1120*nu1^3 + 5600*nu1^2 - 4480)*x^8 + (-57600*nu1^3 - 57600*nu1^2 + 115200*nu1 + 83232)*x^7 + (-965632*nu1^3 + 1602048*nu1^2 - 636416)*x^6 + 1/3*(104997376*nu1^3 + 104997376*nu1^2 - 209994752*nu1 - 136986240)*x^5 + (107756544*nu1^3 - 206990336*nu1^2 + 99233792)*x^4 + (-1492553728*nu1^3 - 1492553728*nu1^2 + 2985107456*nu1 + 1807494400)*x^3 + 1/27*(-55940427776*nu1^3 + 85531385856*nu1^2 - 29590958080)*x^2 + 1/9*(84447465472*nu1^3 + 84447465472*nu1^2 - 168894930944*nu1 - 111481519104)*x + 1/3*(8442929152*nu1^3 - 16074956800*nu1^2 + 7632027648)));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((1/144*x^12 + 1/18*(2*nu2^3 + 11)*x^11 + 1/18*(220*nu2^3 - 76*nu2^2 - 152*nu2 + 465)*x^10 + 1/27*(12932*nu2^3 - 9320*nu2^2 - 16848*nu2 + 19498)*x^9 + 1/3*(20840*nu2^3 - 30920*nu2^2 - 45040*nu2 + 37429)*x^8 + 1/9*(-261728*nu2^3 - 999168*nu2^2 - 518400*nu2 + 593584)*x^7 + 1/27*(-50777792*nu2^3 + 16114112*nu2^2 + 75483520*nu2 - 41291952)*x^6 + 1/9*(-130283136*nu2^3 + 196574464*nu2^2 + 314992128*nu2 - 217344832)*x^5 + 1/9*(470715136*nu2^3 + 945645824*nu2^2 + 28378624*nu2 - 387058448)*x^4 + 1/243*(214968375040*nu2^3 - 138826407936*nu2^2 - 362690555904*nu2 + 210714796672)*x^3 + 1/81*(78362994176*nu2^3 - 290570714624*nu2^2 - 324547271680*nu2 + 260675894400)*x^2 + 1/81*(-556619015168*nu2^3 + 46101243904*nu2^2 + 760027189248*nu2 - 344359905792)*x + 1/243*(-1321258874880*nu2^3 + 2314233255936*nu2^2 + 3326395011072*nu2 - 2367403365632))/(x^11 + (16*nu2^3 + 16)*x^10 + (624*nu2^3 - 624*nu2^2 - 1248*nu2 + 1044)*x^9 + (-1120*nu2^3 - 5600*nu2^2 + 4480)*x^8 + (57600*nu2^3 - 57600*nu2^2 - 115200*nu2 + 83232)*x^7 + (-965632*nu2^3 - 1602048*nu2^2 + 636416)*x^6 + 1/3*(-104997376*nu2^3 + 104997376*nu2^2 + 209994752*nu2 - 136986240)*x^5 + (107756544*nu2^3 + 206990336*nu2^2 - 99233792)*x^4 + (1492553728*nu2^3 - 1492553728*nu2^2 - 2985107456*nu2 + 1807494400)*x^3 + 1/27*(-55940427776*nu2^3 - 85531385856*nu2^2 + 29590958080)*x^2 + 1/9*(-84447465472*nu2^3 + 84447465472*nu2^2 + 168894930944*nu2 - 111481519104)*x + 1/3*(8442929152*nu2^3 + 16074956800*nu2^2 - 7632027648)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "12T41-[4,4,2]-4,4,4-4,4,4-2,2,2,2,1,1,1,1-g0";
s`BelyiDBFilename := "12T41-[4,4,2]-4,4,4-4,4,4-2,2,2,2,1,1,1,1-g0.m";
s`BelyiDBDegree := 12;
s`BelyiDBOrders := \[ 4, 4, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<12 |  
\[ 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<12 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<12 |  
\[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
\[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
\[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]:
 Order := 72 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<12 |  
\[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
\[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
\[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]:
 Order := 72 >) |
[ PermutationGroup<12 |  
\[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
\[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
\[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]:
 Order := 72 > |
[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
[ 5, 9, 12, 2, 6, 10, 3, 7, 11, 1, 4, 8 ],
[ 1, 8, 3, 6, 11, 4, 9, 2, 7, 10, 5, 12 ]
],
[ PermutationGroup<12 |  
\[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
\[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
\[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]:
 Order := 72 > |
[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
[ 3, 1, 6, 8, 4, 2, 11, 9, 5, 7, 12, 10 ],
[ 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 >) |
[ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 10, 6, 9, 5, 1, 11, 2, 12, 8, 4, 7, 3 ],
[ 11, 7, 4, 10, 12, 8, 5, 1, 3, 9, 6, 2 ],
[ 7, 2, 5, 4, 3, 12, 1, 10, 9, 8, 11, 6 ]
],
[ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 10, 12, 7, 5, 9, 11, 2, 4, 8, 6, 1, 3 ],
[ 5, 7, 4, 2, 12, 10, 3, 1, 11, 9, 6, 8 ],
[ 9, 2, 5, 12, 3, 6, 7, 10, 1, 8, 11, 4 ]
]
];

/*
Numerical Data
*/


/*
Powser Bases
*/


/*
Return for eval
*/

return s;
