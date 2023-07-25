s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | 1, -1, 1]));
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
phi1 := KX1!(((36*nu1 - 36)*x^5 + (-72*nu1 + 216)*x^4 + (-648*nu1 + 360)*x^3 + (1872*nu1 - 4032)*x^2 + (36*nu1 + 7452)*x - 2376*nu1 - 3960)/(x^6 + (12*nu1 - 18)*x^5 + (-120*nu1 + 75)*x^4 + (360*nu1 + 20)*x^3 + (-240*nu1 - 585)*x^2 + (-372*nu1 + 894)*x + (360*nu1 - 323)));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "6T6-[2,3,6]-21111-33-6-g0";
s`BelyiDBFilename := "6T6-[2,3,6]-21111-33-6-g0.m";
s`BelyiDBDegree := 6;
s`BelyiDBOrders := \[ 2, 3, 6 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 > |
[ 4, 2, 3, 1, 5, 6 ],
[ 6, 1, 5, 3, 4, 2 ],
[ 5, 6, 4, 2, 3, 1 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<6 |  
\[ 4, 5, 6, 1, 2, 3 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<6 |  
\[ 4, 5, 6, 1, 2, 3 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<6 |  
\[ 4, 2, 3, 1, 5, 6 ],
\[ 6, 1, 5, 3, 4, 2 ],
\[ 5, 6, 4, 2, 3, 1 ]:
 Order := 24 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<6 |  
\[ 4, 2, 3, 1, 5, 6 ],
\[ 6, 1, 5, 3, 4, 2 ],
\[ 5, 6, 4, 2, 3, 1 ]:
 Order := 24 >) |
[ PermutationGroup<6 |  
\[ 4, 2, 3, 1, 5, 6 ],
\[ 6, 1, 5, 3, 4, 2 ],
\[ 5, 6, 4, 2, 3, 1 ]:
 Order := 24 > |
[ 1, 5, 3, 4, 2, 6 ],
[ 2, 6, 4, 5, 3, 1 ],
[ 6, 4, 5, 3, 1, 2 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 >) |
[ PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 > |
[ 4, 2, 3, 1, 5, 6 ],
[ 6, 1, 5, 3, 4, 2 ],
[ 5, 6, 4, 2, 3, 1 ]
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
