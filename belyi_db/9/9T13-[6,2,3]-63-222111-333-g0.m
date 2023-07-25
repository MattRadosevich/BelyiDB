s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | -2, 0, 0, 1]));
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
phi1 := KX1!((-729*x^6 + 13122*nu1^2*x^5 - 196830*nu1*x^4 + 1574640*x^3 - 3542940*nu1^2*x^2 + 8503056*nu1*x - 8503056)/(x^9 - 18*nu1^2*x^8 + 234*nu1*x^7 - 1068*x^6 - 1332*nu1^2*x^5 + 17856*nu1*x^4 - 15072*x^3 - 95760*nu1^2*x^2 + 103968*nu1*x + 438976));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "9T13-[6,2,3]-63-222111-333-g0";
s`BelyiDBFilename := "9T13-[6,2,3]-63-222111-333-g0.m";
s`BelyiDBDegree := 9;
s`BelyiDBOrders := \[ 6, 2, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 > |
[ 2, 4, 1, 7, 8, 3, 6, 9, 5 ],
[ 1, 6, 3, 9, 7, 2, 5, 8, 4 ],
[ 3, 1, 2, 6, 4, 5, 9, 7, 8 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<9 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<9 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<9 |  
\[ 2, 4, 1, 7, 8, 3, 6, 9, 5 ],
\[ 1, 6, 3, 9, 7, 2, 5, 8, 4 ],
\[ 3, 1, 2, 6, 4, 5, 9, 7, 8 ]:
 Order := 54 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<9 |  
\[ 2, 4, 1, 7, 8, 3, 6, 9, 5 ],
\[ 1, 6, 3, 9, 7, 2, 5, 8, 4 ],
\[ 3, 1, 2, 6, 4, 5, 9, 7, 8 ]:
 Order := 54 >) |
[ PermutationGroup<9 |  
\[ 2, 4, 1, 7, 8, 3, 6, 9, 5 ],
\[ 1, 6, 3, 9, 7, 2, 5, 8, 4 ],
\[ 3, 1, 2, 6, 4, 5, 9, 7, 8 ]:
 Order := 54 > |
[ 3, 1, 6, 2, 9, 7, 4, 5, 8 ],
[ 1, 2, 4, 3, 7, 8, 5, 6, 9 ],
[ 2, 3, 1, 5, 6, 4, 8, 9, 7 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 >) |
[ PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 > |
[ 2, 4, 1, 7, 8, 3, 6, 9, 5 ],
[ 1, 6, 3, 9, 7, 2, 5, 8, 4 ],
[ 3, 1, 2, 6, 4, 5, 9, 7, 8 ]
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
