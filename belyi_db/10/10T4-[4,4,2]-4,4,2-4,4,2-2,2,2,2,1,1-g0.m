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
K2<nu2> := NumberField(Polynomial(\[1, 0, 1]));
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
phi1 := KX1!((x^10 + (-40*nu1 + 220)*x^8 + (-6600*nu1 + 17550)*x^6 + (-359000*nu1 + 599500)*x^4 + (-6435000*nu1 + 7345625)*x^2)/(x^10 + (-40*nu1 - 405)*x^8 + (12400*nu1 + 38050)*x^6 + (-826400*nu1 + 563950)*x^4 + (-3699760*nu1 + 5171805)*x^2 - 1476984*nu1 + 9653287));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((x^10 + (40*nu2 + 220)*x^8 + (6600*nu2 + 17550)*x^6 + (359000*nu2 + 599500)*x^4 + (6435000*nu2 + 7345625)*x^2)/(x^10 + (40*nu2 - 405)*x^8 + (-12400*nu2 + 38050)*x^6 + (826400*nu2 + 563950)*x^4 + (3699760*nu2 + 5171805)*x^2 + (1476984*nu2 + 9653287)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "10T4-[4,4,2]-4,4,2-4,4,2-2,2,2,2,1,1-g0";
s`BelyiDBFilename := "10T4-[4,4,2]-4,4,2-4,4,2-2,2,2,2,1,1-g0.m";
s`BelyiDBDegree := 10;
s`BelyiDBOrders := \[ 4, 4, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<10 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10 ]:
 Order := 3628800 > |
[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<10 |  
\[ 6, 7, 8, 9, 10, 1, 2, 3, 4, 5 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<10 |  
\[ 6, 7, 8, 9, 10, 1, 2, 3, 4, 5 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<10 |  
\[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
\[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
\[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]:
 Order := 20 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<10 |  
\[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
\[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
\[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]:
 Order := 20 >) |
[ PermutationGroup<10 |  
\[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
\[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
\[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]:
 Order := 20 > |
[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
[ 4, 1, 8, 5, 2, 9, 6, 3, 10, 7 ],
[ 7, 6, 5, 4, 3, 2, 1, 10, 9, 8 ]
],
[ PermutationGroup<10 |  
\[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
\[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
\[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]:
 Order := 20 > |
[ 6, 9, 2, 5, 8, 1, 4, 7, 10, 3 ],
[ 2, 5, 8, 1, 4, 7, 10, 3, 6, 9 ],
[ 9, 8, 7, 6, 5, 4, 3, 2, 1, 10 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<10 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10 ]:
 Order := 3628800 >) |
[ PermutationGroup<10 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10 ]:
 Order := 3628800 > |
[ 6, 3, 10, 7, 4, 1, 8, 5, 2, 9 ],
[ 2, 9, 6, 3, 10, 7, 4, 1, 8, 5 ],
[ 3, 2, 1, 10, 9, 8, 7, 6, 5, 4 ]
],
[ PermutationGroup<10 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10 ]:
 Order := 3628800 > |
[ 6, 9, 2, 5, 8, 1, 4, 7, 10, 3 ],
[ 4, 7, 10, 3, 6, 9, 2, 5, 8, 1 ],
[ 5, 4, 3, 2, 1, 10, 9, 8, 7, 6 ]
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
