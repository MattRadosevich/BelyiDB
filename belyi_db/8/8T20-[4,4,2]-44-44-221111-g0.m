s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial(\[1, 0, 1]));
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
phi1 := KX1!((1/64*x^8 + 1/4*(nu1 + 2)*x^7 + 1/4*(32*nu1 + 17)*x^6 + (89*nu1 - 22)*x^5 + 1/2*(624*nu1 - 1085)*x^4 + (-1060*nu1 - 2760)*x^3 + (-9152*nu1 - 2236)*x^2 + (-12560*nu1 + 13920)*x + (8064*nu1 + 14852))/(x^7 + 16*nu1*x^6 - 44*x^5 + 624*nu1*x^4 - 5520*x^3 - 18304*nu1*x^2 + 27840*x + 16128*nu1));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "8T20-[4,4,2]-44-44-221111-g0";
s`BelyiDBFilename := "8T20-[4,4,2]-44-44-221111-g0.m";
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
[ 2, 4, 1, 3, 7, 5, 8, 6 ],
[ 3, 1, 6, 8, 4, 2, 5, 7 ],
[ 1, 2, 5, 6, 3, 4, 7, 8 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<8 |  
\[ 7, 8, 5, 6, 3, 4, 1, 2 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<8 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<8 |  
\[ 2, 4, 1, 3, 7, 5, 8, 6 ],
\[ 3, 1, 6, 8, 4, 2, 5, 7 ],
\[ 1, 2, 5, 6, 3, 4, 7, 8 ]:
 Order := 32 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<8 |  
\[ 2, 4, 1, 3, 7, 5, 8, 6 ],
\[ 3, 1, 6, 8, 4, 2, 5, 7 ],
\[ 1, 2, 5, 6, 3, 4, 7, 8 ]:
 Order := 32 >) |
[ PermutationGroup<8 |  
\[ 2, 4, 1, 3, 7, 5, 8, 6 ],
\[ 3, 1, 6, 8, 4, 2, 5, 7 ],
\[ 1, 2, 5, 6, 3, 4, 7, 8 ]:
 Order := 32 > |
[ 2, 4, 1, 3, 7, 5, 8, 6 ],
[ 3, 1, 6, 8, 4, 2, 5, 7 ],
[ 1, 2, 5, 6, 3, 4, 7, 8 ]
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
[ 2, 4, 1, 3, 7, 5, 8, 6 ],
[ 3, 1, 6, 8, 4, 2, 5, 7 ],
[ 1, 2, 5, 6, 3, 4, 7, 8 ]
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
