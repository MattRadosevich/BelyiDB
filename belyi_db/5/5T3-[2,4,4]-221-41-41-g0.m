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
phi1 := KX1!((-1/625*x^5 + 1/125*(-8*nu1 + 81)*x^4 + 1/25*(496*nu1 - 1522)*x^3 + 1/25*(-33056*nu1 - 22558)*x^2 + 1/125*(-739952*nu1 - 1034361)*x + 1/625*(-1476984*nu1 - 9653287))/(x^4 + 1/5*(152*nu1 - 164)*x^3 + 1/25*(-18696*nu1 + 1422)*x^2 + 1/125*(547048*nu1 + 434764)*x + 1/625*(-1476984*nu1 - 9653287)));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((-1/625*x^5 + 1/125*(8*nu2 + 81)*x^4 + 1/25*(-496*nu2 - 1522)*x^3 + 1/25*(33056*nu2 - 22558)*x^2 + 1/125*(739952*nu2 - 1034361)*x + 1/625*(1476984*nu2 - 9653287))/(x^4 + 1/5*(-152*nu2 - 164)*x^3 + 1/25*(18696*nu2 + 1422)*x^2 + 1/125*(-547048*nu2 + 434764)*x + 1/625*(1476984*nu2 - 9653287)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "5T3-[2,4,4]-221-41-41-g0";
s`BelyiDBFilename := "5T3-[2,4,4]-221-41-41-g0.m";
s`BelyiDBDegree := 5;
s`BelyiDBOrders := \[ 2, 4, 4 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 2, 1, 3, 4, 5 ]:
 Order := 120 > |
[ 1, 5, 4, 3, 2 ],
[ 2, 5, 3, 1, 4 ],
[ 4, 2, 5, 3, 1 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<5 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<5 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<5 |  
\[ 1, 5, 4, 3, 2 ],
\[ 2, 5, 3, 1, 4 ],
\[ 4, 2, 5, 3, 1 ]:
 Order := 20 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<5 |  
\[ 1, 5, 4, 3, 2 ],
\[ 2, 5, 3, 1, 4 ],
\[ 4, 2, 5, 3, 1 ]:
 Order := 20 >) |
[ PermutationGroup<5 |  
\[ 1, 5, 4, 3, 2 ],
\[ 2, 5, 3, 1, 4 ],
\[ 4, 2, 5, 3, 1 ]:
 Order := 20 > |
[ 2, 1, 5, 4, 3 ],
[ 2, 5, 3, 1, 4 ],
[ 1, 4, 2, 5, 3 ]
],
[ PermutationGroup<5 |  
\[ 1, 5, 4, 3, 2 ],
\[ 2, 5, 3, 1, 4 ],
\[ 4, 2, 5, 3, 1 ]:
 Order := 20 > |
[ 4, 3, 2, 1, 5 ],
[ 4, 1, 3, 5, 2 ],
[ 1, 3, 5, 2, 4 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 2, 1, 3, 4, 5 ]:
 Order := 120 >) |
[ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 2, 1, 3, 4, 5 ]:
 Order := 120 > |
[ 1, 5, 4, 3, 2 ],
[ 2, 5, 3, 1, 4 ],
[ 4, 2, 5, 3, 1 ]
],
[ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 2, 1, 3, 4, 5 ]:
 Order := 120 > |
[ 1, 5, 4, 3, 2 ],
[ 4, 1, 3, 5, 2 ],
[ 2, 4, 1, 3, 5 ]
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
