s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial(\[1, 1, 1]));
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
aInvs1 := [0,0,0,15*nu1 + 15,22];
E1 := EllipticCurve(aInvs1);
X1 := BaseChange(E1, K1);
KX1<x,y> := FunctionField(X1);
phi1 := KX1!((1/16*x^2 - 1/4*nu1*x + 1/16*(-7*nu1 - 7))/(x^2 - 4*nu1*x - 4*nu1 - 4)*y + 1/2);
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "6T4-[3,3,3]-33-33-33-g1";
s`BelyiDBFilename := "6T4-[3,3,3]-33-33-33-g1.m";
s`BelyiDBDegree := 6;
s`BelyiDBOrders := \[ 3, 3, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 1;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 > |
[ 6, 4, 2, 3, 1, 5 ],
[ 3, 1, 2, 6, 4, 5 ],
[ 6, 1, 5, 3, 4, 2 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<6 |  
\[ 4, 5, 6, 1, 2, 3 ]:
 Order := 2 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<6 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<6 |  
\[ 6, 4, 2, 3, 1, 5 ],
\[ 3, 1, 2, 6, 4, 5 ],
\[ 6, 1, 5, 3, 4, 2 ]:
 Order := 12 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<6 |  
\[ 6, 4, 2, 3, 1, 5 ],
\[ 3, 1, 2, 6, 4, 5 ],
\[ 6, 1, 5, 3, 4, 2 ]:
 Order := 12 >) |
[ PermutationGroup<6 |  
\[ 6, 4, 2, 3, 1, 5 ],
\[ 3, 1, 2, 6, 4, 5 ],
\[ 6, 1, 5, 3, 4, 2 ]:
 Order := 12 > |
[ 6, 4, 2, 3, 1, 5 ],
[ 3, 4, 5, 6, 1, 2 ],
[ 3, 1, 2, 6, 4, 5 ]
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
[ 6, 4, 2, 3, 1, 5 ],
[ 3, 1, 2, 6, 4, 5 ],
[ 6, 1, 5, 3, 4, 2 ]
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
