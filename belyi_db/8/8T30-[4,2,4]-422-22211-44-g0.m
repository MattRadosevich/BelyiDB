s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | -2, 0, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial([RationalField() | -2, 0, 1]));
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
phi1 := KX1!((256*x^6 + (-4096*nu1 + 6144)*x^5 + (-83968*nu1 + 113152)*x^4 + (-854016*nu1 + 1195008)*x^3 + (-4941824*nu1 + 7014656)*x^2 + (-15353856*nu1 + 21812224)*x - 19902464*nu1 + 28222464)/(x^8 + (-16*nu1 + 24)*x^7 + (-304*nu1 + 508)*x^6 + (-3728*nu1 + 5352)*x^5 + (-25392*nu1 + 38182)*x^4 + (-114608*nu1 + 163624)*x^3 + (-301328*nu1 + 455356)*x^2 + (-471472*nu1 + 676696)*x - 262800*nu1 + 511649));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((256*x^6 + (4096*nu2 + 6144)*x^5 + (83968*nu2 + 113152)*x^4 + (854016*nu2 + 1195008)*x^3 + (4941824*nu2 + 7014656)*x^2 + (15353856*nu2 + 21812224)*x + (19902464*nu2 + 28222464))/(x^8 + (16*nu2 + 24)*x^7 + (304*nu2 + 508)*x^6 + (3728*nu2 + 5352)*x^5 + (25392*nu2 + 38182)*x^4 + (114608*nu2 + 163624)*x^3 + (301328*nu2 + 455356)*x^2 + (471472*nu2 + 676696)*x + (262800*nu2 + 511649)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "8T30-[4,2,4]-422-22211-44-g0";
s`BelyiDBFilename := "8T30-[4,2,4]-422-22211-44-g0.m";
s`BelyiDBDegree := 8;
s`BelyiDBOrders := \[ 4, 2, 4 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 > |
[ 3, 8, 7, 1, 6, 5, 4, 2 ],
[ 1, 4, 6, 2, 8, 3, 7, 5 ],
[ 2, 5, 1, 7, 3, 8, 6, 4 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<8 |  
\[ 7, 6, 4, 3, 8, 2, 1, 5 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<8 |  
\[ 7, 6, 4, 3, 8, 2, 1, 5 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<8 |  
\[ 3, 8, 7, 1, 6, 5, 4, 2 ],
\[ 1, 4, 6, 2, 8, 3, 7, 5 ],
\[ 2, 5, 1, 7, 3, 8, 6, 4 ]:
 Order := 64 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<8 |  
\[ 3, 8, 7, 1, 6, 5, 4, 2 ],
\[ 1, 4, 6, 2, 8, 3, 7, 5 ],
\[ 2, 5, 1, 7, 3, 8, 6, 4 ]:
 Order := 64 >) |
[ PermutationGroup<8 |  
\[ 3, 8, 7, 1, 6, 5, 4, 2 ],
\[ 1, 4, 6, 2, 8, 3, 7, 5 ],
\[ 2, 5, 1, 7, 3, 8, 6, 4 ]:
 Order := 64 > |
[ 4, 8, 1, 7, 6, 5, 3, 2 ],
[ 8, 6, 3, 4, 7, 2, 5, 1 ],
[ 3, 1, 5, 8, 2, 7, 4, 6 ]
],
[ PermutationGroup<8 |  
\[ 3, 8, 7, 1, 6, 5, 4, 2 ],
\[ 1, 4, 6, 2, 8, 3, 7, 5 ],
\[ 2, 5, 1, 7, 3, 8, 6, 4 ]:
 Order := 64 > |
[ 4, 8, 1, 7, 6, 5, 3, 2 ],
[ 8, 2, 4, 3, 7, 6, 5, 1 ],
[ 4, 1, 5, 8, 6, 7, 3, 2 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 >) |
[ PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 > |
[ 3, 8, 7, 1, 6, 5, 4, 2 ],
[ 1, 4, 6, 2, 8, 3, 7, 5 ],
[ 2, 5, 1, 7, 3, 8, 6, 4 ]
],
[ PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 > |
[ 4, 5, 1, 7, 2, 8, 3, 6 ],
[ 7, 3, 2, 6, 5, 4, 1, 8 ],
[ 2, 5, 1, 7, 3, 8, 6, 4 ]
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
