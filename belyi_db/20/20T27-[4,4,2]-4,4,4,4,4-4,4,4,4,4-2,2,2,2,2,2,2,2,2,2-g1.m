s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial([RationalField() | -5, 0, 0, 0, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial([RationalField() | -5, 0, 0, 0, 1]));
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
aInvs1 := [0,0,0,-120*nu1^2 - 161,448*nu1^3 + 1288*nu1];
E1 := EllipticCurve(aInvs1);
X1 := BaseChange(E1, K1);
KX1<x,y> := FunctionField(X1);
phi1 := KX1!((x^10 + (-20*nu1^3 - 20*nu1)*x^9 + (1000*nu1^2 + 1940)*x^8 + (-16660*nu1^3 - 33460*nu1)*x^7 + (416280*nu1^2 + 808150)*x^6 + (-2812780*nu1^3 - 6683580*nu1)*x^5 + (34407800*nu1^2 + 71664500)*x^4 + (-102875500*nu1^3 - 285933100*nu1)*x^3 + (477683400*nu1^2 + 1529832625)*x^2 + (-948579200*nu1^3 - 1304426000*nu1)*x + (1293761600*nu1^2 + 1598016000))/(x^10 + (-20*nu1^3 - 20*nu1)*x^9 + (1000*nu1^2 + 1315)*x^8 + (-4160*nu1^3 - 20960*nu1)*x^7 + (-238720*nu1^2 - 288350)*x^6 + (5959720*nu1^3 + 15138920*nu1)*x^5 + (-171041200*nu1^2 - 405922850)*x^4 + (1262488000*nu1^3 + 2724890400*nu1)*x^3 + (-11815808000*nu1^2 - 25824468515)*x^2 + (27370683500*nu1^3 + 62127614700*nu1)*x - 62771873080*nu1^2 - 141740880001));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
aInvs2 := [0,0,0,-120*nu2^2 - 161,448*nu2^3 + 1288*nu2];
E2 := EllipticCurve(aInvs2);
X2 := BaseChange(E2, K2);
KX2<x,y> := FunctionField(X2);
phi2 := KX2!((x^10 + (-20*nu2^3 - 20*nu2)*x^9 + (1000*nu2^2 + 1940)*x^8 + (-16660*nu2^3 - 33460*nu2)*x^7 + (416280*nu2^2 + 808150)*x^6 + (-2812780*nu2^3 - 6683580*nu2)*x^5 + (34407800*nu2^2 + 71664500)*x^4 + (-102875500*nu2^3 - 285933100*nu2)*x^3 + (477683400*nu2^2 + 1529832625)*x^2 + (-948579200*nu2^3 - 1304426000*nu2)*x + (1293761600*nu2^2 + 1598016000))/(x^10 + (-20*nu2^3 - 20*nu2)*x^9 + (1000*nu2^2 + 1315)*x^8 + (-4160*nu2^3 - 20960*nu2)*x^7 + (-238720*nu2^2 - 288350)*x^6 + (5959720*nu2^3 + 15138920*nu2)*x^5 + (-171041200*nu2^2 - 405922850)*x^4 + (1262488000*nu2^3 + 2724890400*nu2)*x^3 + (-11815808000*nu2^2 - 25824468515)*x^2 + (27370683500*nu2^3 + 62127614700*nu2)*x - 62771873080*nu2^2 - 141740880001));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "20T27-[4,4,2]-4,4,4,4,4-4,4,4,4,4-2,2,2,2,2,2,2,2,2,2-g1";
s`BelyiDBFilename := "20T27-[4,4,2]-4,4,4,4,4-4,4,4,4,4-2,2,2,2,2,2,2,2,2,2-g1.m";
s`BelyiDBDegree := 20;
s`BelyiDBOrders := \[ 4, 4, 2 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 1;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<20 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ]:
 Order := 2432902008176640000 > |
[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<20 |  
\[ 18, 14, 20, 19, 17, 10, 16, 15, 13, 6, 12, 11, 9, 2, 8, 7, 5, 1, 4, 3 ],
\[ 12, 16, 15, 8, 19, 20, 11, 4, 18, 17, 7, 1, 14, 13, 3, 2, 10, 9, 5, 6 ]:
 Order := 10 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<20 |  
\[ 18, 14, 20, 19, 17, 10, 16, 15, 13, 6, 12, 11, 9, 2, 8, 7, 5, 1, 4, 3 ]:
 Order := 2 >;
s`BelyiDBMonodromyGroup := PermutationGroup<20 |  
\[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
\[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
\[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]:
 Order := 100 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<20 |  
\[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
\[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
\[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]:
 Order := 100 >) |
[ PermutationGroup<20 |  
\[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
\[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
\[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]:
 Order := 100 > |
[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
[ 8, 10, 13, 16, 11, 18, 5, 2, 3, 1, 19, 4, 20, 6, 14, 17, 12, 15, 7, 9 ],
[ 18, 16, 20, 17, 19, 15, 14, 10, 12, 8, 13, 9, 11, 7, 6, 2, 4, 1, 5, 3 ]
],
[ PermutationGroup<20 |  
\[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
\[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
\[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]:
 Order := 100 > |
[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
[ 17, 15, 13, 16, 11, 18, 20, 2, 19, 1, 6, 10, 4, 8, 14, 3, 12, 5, 7, 9 ],
[ 2, 1, 20, 17, 19, 15, 11, 10, 13, 8, 7, 16, 9, 18, 6, 12, 4, 14, 5, 3 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<20 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ]:
 Order := 2432902008176640000 >) |
[ PermutationGroup<20 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ]:
 Order := 2432902008176640000 > |
[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
[ 8, 10, 7, 1, 9, 2, 5, 12, 3, 14, 19, 4, 20, 6, 11, 17, 13, 15, 18, 16 ],
[ 18, 16, 5, 8, 3, 10, 14, 4, 12, 6, 13, 9, 11, 7, 19, 2, 20, 1, 15, 17 ]
],
[ PermutationGroup<20 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ]:
 Order := 2432902008176640000 > |
[ 8, 10, 12, 9, 14, 7, 5, 18, 3, 16, 19, 4, 20, 6, 1, 17, 2, 15, 13, 11 ],
[ 17, 15, 2, 11, 1, 13, 20, 7, 19, 9, 6, 10, 4, 8, 16, 3, 18, 5, 12, 14 ],
[ 2, 1, 10, 19, 8, 20, 11, 5, 13, 3, 7, 16, 9, 18, 17, 12, 15, 14, 4, 6 ]
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
