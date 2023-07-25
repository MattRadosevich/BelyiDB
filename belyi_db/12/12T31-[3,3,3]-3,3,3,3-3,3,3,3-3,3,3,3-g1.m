s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | -3, 0, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial([RationalField() | 1, 0, -1, 0, 1]));
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
aInvs1 := [0,0,0,-60*nu1 - 135,420*nu1 + 694];
E1 := EllipticCurve(aInvs1);
X1 := BaseChange(E1, K1);
KX1<x,y> := FunctionField(X1);
phi1 := KX1!((1/128*x^5 + 1/128*(-14*nu1 - 19)*x^4 + 1/64*(116*nu1 + 197)*x^3 + 1/64*(-1290*nu1 - 1651)*x^2 + 1/128*(9640*nu1 + 23093)*x + 1/128*(-28142*nu1 - 35399))/(x^5 + (-14*nu1 - 19)*x^4 + (220*nu1 + 367)*x^3 + (-1854*nu1 - 3257)*x^2 + (8032*nu1 + 14048)*x - 13928*nu1 - 24212)*y + 1/2);
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
aInvs2 := [0,0,0,120*nu2^3 - 135*nu2^2 - 60*nu2 + 135,420*nu2^3 - 840*nu2 + 694];
E2 := EllipticCurve(aInvs2);
X2 := BaseChange(E2, K2);
KX2<x,y> := FunctionField(X2);
phi2 := KX2!((1/128*x^5 + 1/128*(-14*nu2^3 + 19*nu2^2 - 14*nu2)*x^4 + 1/64*(-232*nu2^3 + 197*nu2^2 + 116*nu2 - 197)*x^3 + 1/64*(-1290*nu2^3 + 2580*nu2 - 1651)*x^2 + 1/128*(9640*nu2^3 - 23093*nu2^2 + 9640*nu2)*x + 1/128*(56284*nu2^3 - 35399*nu2^2 - 28142*nu2 + 35399))/(x^5 + (-14*nu2^3 + 19*nu2^2 - 14*nu2)*x^4 + (-440*nu2^3 + 367*nu2^2 + 220*nu2 - 367)*x^3 + (-1854*nu2^3 + 3708*nu2 - 3257)*x^2 + (8032*nu2^3 - 14048*nu2^2 + 8032*nu2)*x + (27856*nu2^3 - 24212*nu2^2 - 13928*nu2 + 24212))*y + 1/2);
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "12T31-[3,3,3]-3,3,3,3-3,3,3,3-3,3,3,3-g1";
s`BelyiDBFilename := "12T31-[3,3,3]-3,3,3,3-3,3,3,3-3,3,3,3-g1.m";
s`BelyiDBDegree := 12;
s`BelyiDBOrders := \[ 3, 3, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 1;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<12 |  
\[ 8, 3, 11, 6, 12, 5, 1, 9, 7, 2, 10, 4 ]:
 Order := 4 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<12 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<12 |  
\[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
\[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
\[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]:
 Order := 48 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<12 |  
\[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
\[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
\[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]:
 Order := 48 >) |
[ PermutationGroup<12 |  
\[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
\[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
\[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]:
 Order := 48 > |
[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
[ 2, 12, 4, 8, 7, 9, 10, 3, 11, 5, 6, 1 ],
[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ]
],
[ PermutationGroup<12 |  
\[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
\[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
\[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]:
 Order := 48 > |
[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
[ 3, 4, 6, 7, 8, 1, 2, 11, 10, 12, 5, 9 ],
[ 11, 6, 5, 8, 7, 9, 3, 10, 2, 4, 12, 1 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 >) |
[ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 2, 5, 12, 9, 1, 7, 10, 3, 11, 6, 4, 8 ],
[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
[ 10, 5, 12, 7, 8, 1, 11, 2, 3, 6, 4, 9 ]
],
[ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 3, 4, 6, 7, 8, 1, 2, 11, 10, 12, 5, 9 ],
[ 10, 12, 4, 9, 1, 7, 11, 2, 3, 5, 6, 8 ],
[ 11, 6, 5, 8, 7, 9, 3, 10, 2, 4, 12, 1 ]
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
