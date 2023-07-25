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
phi1 := KX1!(-4096*x^6/(x^8 - 1792*x^6 + 1105920*x^4 - 254803968*x^2 + 12230590464));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "8T13-[6,2,3]-62-2222-3311-g0";
s`BelyiDBFilename := "8T13-[6,2,3]-62-2222-3311-g0.m";
s`BelyiDBDegree := 8;
s`BelyiDBOrders := \[ 6, 2, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<8 |  
\[ 2, 3, 4, 5, 6, 7, 8, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8 ]:
 Order := 40320 > |
[ 7, 6, 4, 3, 1, 8, 2, 5 ],
[ 4, 7, 6, 1, 8, 3, 2, 5 ],
[ 8, 2, 1, 6, 5, 7, 4, 3 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<8 |  
\[ 6, 5, 4, 3, 2, 1, 8, 7 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<8 |  
\[ 6, 5, 4, 3, 2, 1, 8, 7 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<8 |  
\[ 7, 6, 4, 3, 1, 8, 2, 5 ],
\[ 4, 7, 6, 1, 8, 3, 2, 5 ],
\[ 8, 2, 1, 6, 5, 7, 4, 3 ]:
 Order := 24 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<8 |  
\[ 7, 6, 4, 3, 1, 8, 2, 5 ],
\[ 4, 7, 6, 1, 8, 3, 2, 5 ],
\[ 8, 2, 1, 6, 5, 7, 4, 3 ]:
 Order := 24 >) |
[ PermutationGroup<8 |  
\[ 7, 6, 4, 3, 1, 8, 2, 5 ],
\[ 4, 7, 6, 1, 8, 3, 2, 5 ],
\[ 8, 2, 1, 6, 5, 7, 4, 3 ]:
 Order := 24 > |
[ 5, 7, 4, 3, 8, 2, 1, 6 ],
[ 5, 6, 7, 8, 1, 2, 3, 4 ],
[ 3, 2, 8, 7, 5, 4, 6, 1 ]
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
[ 7, 6, 4, 3, 1, 8, 2, 5 ],
[ 4, 7, 6, 1, 8, 3, 2, 5 ],
[ 8, 2, 1, 6, 5, 7, 4, 3 ]
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
