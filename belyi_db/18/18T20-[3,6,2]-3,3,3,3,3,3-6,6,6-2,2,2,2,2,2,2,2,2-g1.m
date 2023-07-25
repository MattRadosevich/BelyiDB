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
aInvs1 := [0,0,0,-60*nu1,253];
E1 := EllipticCurve(aInvs1);
X1 := BaseChange(E1, K1);
KX1<x,y> := FunctionField(X1);
phi1 := KX1!((x^9 - 18*nu1^2*x^8 + 234*nu1*x^7 - 1068*x^6 - 1332*nu1^2*x^5 + 17856*nu1*x^4 - 15072*x^3 - 95760*nu1^2*x^2 + 103968*nu1*x + 438976)/(x^9 - 18*nu1^2*x^8 + 234*nu1*x^7 - 339*x^6 - 14454*nu1^2*x^5 + 214686*nu1*x^4 - 1589712*x^3 + 3447180*nu1^2*x^2 - 8399088*nu1*x + 8942032));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "18T20-[3,6,2]-3,3,3,3,3,3-6,6,6-2,2,2,2,2,2,2,2,2-g1";
s`BelyiDBFilename := "18T20-[3,6,2]-3,3,3,3,3,3-6,6,6-2,2,2,2,2,2,2,2,2-g1.m";
s`BelyiDBDegree := 18;
s`BelyiDBOrders := \[ 3, 6, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 1;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<18 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 ]:
 Order := 6402373705728000 > |
[ 8, 7, 11, 12, 9, 10, 16, 14, 18, 15, 17, 13, 4, 1, 6, 2, 3, 5 ],
[ 5, 3, 18, 15, 17, 13, 11, 9, 14, 8, 16, 7, 10, 6, 12, 4, 2, 1 ],
[ 9, 11, 5, 6, 3, 4, 17, 18, 1, 14, 2, 16, 15, 10, 13, 12, 7, 8 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<18 |  
\[ 2, 1, 5, 6, 3, 4, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 18, 17 ],
\[ 11, 15, 12, 8, 16, 18, 6, 17, 2, 5, 13, 14, 1, 3, 9, 10, 4, 7 ]:
 Order := 6 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<18 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<18 |  
\[ 8, 7, 11, 12, 9, 10, 16, 14, 18, 15, 17, 13, 4, 1, 6, 2, 3, 5 ],
\[ 5, 3, 18, 15, 17, 13, 11, 9, 14, 8, 16, 7, 10, 6, 12, 4, 2, 1 ],
\[ 9, 11, 5, 6, 3, 4, 17, 18, 1, 14, 2, 16, 15, 10, 13, 12, 7, 8 ]:
 Order := 54 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<18 |  
\[ 8, 7, 11, 12, 9, 10, 16, 14, 18, 15, 17, 13, 4, 1, 6, 2, 3, 5 ],
\[ 5, 3, 18, 15, 17, 13, 11, 9, 14, 8, 16, 7, 10, 6, 12, 4, 2, 1 ],
\[ 9, 11, 5, 6, 3, 4, 17, 18, 1, 14, 2, 16, 15, 10, 13, 12, 7, 8 ]:
 Order := 54 >) |
[ PermutationGroup<18 |  
\[ 8, 7, 11, 12, 9, 10, 16, 14, 18, 15, 17, 13, 4, 1, 6, 2, 3, 5 ],
\[ 5, 3, 18, 15, 17, 13, 11, 9, 14, 8, 16, 7, 10, 6, 12, 4, 2, 1 ],
\[ 9, 11, 5, 6, 3, 4, 17, 18, 1, 14, 2, 16, 15, 10, 13, 12, 7, 8 ]:
 Order := 54 > |
[ 14, 16, 17, 13, 18, 15, 2, 1, 5, 6, 3, 4, 12, 8, 10, 7, 11, 9 ],
[ 18, 17, 2, 16, 1, 14, 12, 10, 8, 13, 7, 15, 6, 9, 4, 11, 5, 3 ],
[ 9, 11, 16, 7, 14, 8, 4, 6, 1, 12, 2, 10, 15, 5, 13, 3, 18, 17 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<18 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 ]:
 Order := 6402373705728000 >) |
[ PermutationGroup<18 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 ]:
 Order := 6402373705728000 > |
[ 8, 7, 11, 12, 9, 10, 16, 14, 18, 15, 17, 13, 4, 1, 6, 2, 3, 5 ],
[ 5, 3, 18, 15, 17, 13, 11, 9, 14, 8, 16, 7, 10, 6, 12, 4, 2, 1 ],
[ 9, 11, 5, 6, 3, 4, 17, 18, 1, 14, 2, 16, 15, 10, 13, 12, 7, 8 ]
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
