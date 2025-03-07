s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := RationalsAsNumberField();
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
s`BelyiDBBaseFieldData := base_field_data;

/*
Belyi Maps
*/

curves := [* *];
maps := [* *];
K1<nu1> := K1;
X1 := Curve(ProjectiveSpace(PolynomialRing(K1, 2)));
KX1<x> := FunctionField(X1);
phi1 := KX1!((-4096*x^7 + 524288*x^6 + 16777216*x^5 - 4294967296*x^4 + 68719476736*x^3 + 8796093022208*x^2 - 281474976710656*x)/(x^8 - 2560*x^7 + 1425408*x^6 + 262144000*x^5 + 24796725248*x^4 + 1073741824000*x^3 + 23914377904128*x^2 - 175921860444160*x + 281474976710656));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "8T19-[4,4,2]-4211-44-2222-g0";
s`BelyiDBFilename := "8T19-[4,4,2]-4211-44-2222-g0.m";
s`BelyiDBDegree := 8;
s`BelyiDBOrders := \[ 4, 4, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 > |
[ 5, 2, 4, 3, 8, 6, 1, 7 ],
[ 4, 1, 7, 5, 2, 8, 6, 3 ],
[ 3, 5, 1, 8, 2, 7, 6, 4 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<8 |  
\[ 8, 6, 4, 3, 7, 2, 5, 1 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<8 |  
\[ 8, 6, 4, 3, 7, 2, 5, 1 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<8 |  
\[ 5, 2, 4, 3, 8, 6, 1, 7 ],
\[ 4, 1, 7, 5, 2, 8, 6, 3 ],
\[ 3, 5, 1, 8, 2, 7, 6, 4 ]:
 Order := 32 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<8 |  
\[ 5, 2, 4, 3, 8, 6, 1, 7 ],
\[ 4, 1, 7, 5, 2, 8, 6, 3 ],
\[ 3, 5, 1, 8, 2, 7, 6, 4 ]:
 Order := 32 >) |
[ PermutationGroup<8 |  
\[ 5, 2, 4, 3, 8, 6, 1, 7 ],
\[ 4, 1, 7, 5, 2, 8, 6, 3 ],
\[ 3, 5, 1, 8, 2, 7, 6, 4 ]:
 Order := 32 > |
[ 5, 2, 4, 3, 8, 6, 1, 7 ],
[ 4, 1, 7, 5, 2, 8, 6, 3 ],
[ 3, 5, 1, 8, 2, 7, 6, 4 ]
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
[ 5, 2, 4, 3, 8, 6, 1, 7 ],
[ 4, 1, 7, 5, 2, 8, 6, 3 ],
[ 3, 5, 1, 8, 2, 7, 6, 4 ]
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
