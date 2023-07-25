s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | 1, 2, 0, 2, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial([RationalField() | 1, -2, 0, -2, 1]));
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
phi1 := KX1!((x^6 + (8*nu1^3 + 12*nu1^2 + 16)*x^5 + (28*nu1^3 + 56*nu1^2 - 28*nu1 + 106)*x^4 + 1/3*(664*nu1^3 + 1052*nu1^2 + 112*nu1 + 1328)*x^3 + (260*nu1^3 + 520*nu1^2 - 260*nu1 + 793)*x^2 + 1/3*(1928*nu1^3 + 4416*nu1^2 + 3048*nu1 + 3856)*x + 1/9*(7136*nu1^3 + 14272*nu1^2 - 7136*nu1 - 928))/(x^6 + (8*nu1^3 + 12*nu1^2 + 16)*x^5 + (28*nu1^3 + 56*nu1^2 - 28*nu1 + 25)*x^4 + 1/3*(-1280*nu1^3 - 1864*nu1^2 + 112*nu1 - 2560)*x^3 + (-2656*nu1^3 - 5312*nu1^2 + 2656*nu1 - 6497)*x^2 + 1/3*(-33064*nu1^3 - 39324*nu1^2 + 20544*nu1 - 66128)*x + 1/9*(-71596*nu1^3 - 143192*nu1^2 + 71596*nu1 - 217441)));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((x^6 + (8*nu2^3 - 12*nu2^2 - 16)*x^5 + (-28*nu2^3 + 56*nu2^2 + 28*nu2 + 106)*x^4 + 1/3*(664*nu2^3 - 1052*nu2^2 + 112*nu2 - 1328)*x^3 + (-260*nu2^3 + 520*nu2^2 + 260*nu2 + 793)*x^2 + 1/3*(1928*nu2^3 - 4416*nu2^2 + 3048*nu2 - 3856)*x + 1/9*(-7136*nu2^3 + 14272*nu2^2 + 7136*nu2 - 928))/(x^6 + (8*nu2^3 - 12*nu2^2 - 16)*x^5 + (-28*nu2^3 + 56*nu2^2 + 28*nu2 + 25)*x^4 + 1/3*(-1280*nu2^3 + 1864*nu2^2 + 112*nu2 + 2560)*x^3 + (2656*nu2^3 - 5312*nu2^2 - 2656*nu2 - 6497)*x^2 + 1/3*(-33064*nu2^3 + 39324*nu2^2 + 20544*nu2 + 66128)*x + 1/9*(71596*nu2^3 - 143192*nu2^2 - 71596*nu2 - 217441)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "6T10-[4,4,2]-42-42-2211-g0";
s`BelyiDBFilename := "6T10-[4,4,2]-42-42-2211-g0.m";
s`BelyiDBDegree := 6;
s`BelyiDBOrders := \[ 4, 4, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 > |
[ 6, 1, 2, 5, 4, 3 ],
[ 4, 1, 6, 5, 2, 3 ],
[ 5, 6, 3, 4, 1, 2 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<6 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<6 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<6 |  
\[ 6, 1, 2, 5, 4, 3 ],
\[ 4, 1, 6, 5, 2, 3 ],
\[ 5, 6, 3, 4, 1, 2 ]:
 Order := 36 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<6 |  
\[ 6, 1, 2, 5, 4, 3 ],
\[ 4, 1, 6, 5, 2, 3 ],
\[ 5, 6, 3, 4, 1, 2 ]:
 Order := 36 >) |
[ PermutationGroup<6 |  
\[ 6, 1, 2, 5, 4, 3 ],
\[ 4, 1, 6, 5, 2, 3 ],
\[ 5, 6, 3, 4, 1, 2 ]:
 Order := 36 > |
[ 6, 1, 2, 5, 4, 3 ],
[ 4, 1, 6, 5, 2, 3 ],
[ 5, 6, 3, 4, 1, 2 ]
],
[ PermutationGroup<6 |  
\[ 6, 1, 2, 5, 4, 3 ],
\[ 4, 1, 6, 5, 2, 3 ],
\[ 5, 6, 3, 4, 1, 2 ]:
 Order := 36 > |
[ 6, 1, 2, 5, 4, 3 ],
[ 4, 5, 6, 3, 2, 1 ],
[ 5, 4, 3, 2, 1, 6 ]
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
[ 6, 1, 2, 5, 4, 3 ],
[ 4, 1, 6, 5, 2, 3 ],
[ 5, 6, 3, 4, 1, 2 ]
],
[ PermutationGroup<6 |  
\[ 2, 3, 4, 5, 6, 1 ],
\[ 2, 1, 3, 4, 5, 6 ]:
 Order := 720 > |
[ 6, 1, 2, 5, 4, 3 ],
[ 4, 5, 6, 3, 2, 1 ],
[ 5, 4, 3, 2, 1, 6 ]
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
