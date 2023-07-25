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
phi1 := KX1!((-2985984*x^11 - 288947699712*x^10 - 11804916993490944*x^9 - 262905416148741783552*x^8 - 3428819093245210562396160*x^7 - 26025280353210077598185422848*x^6 - 106402078158295254985340023209984*x^5 - 194678249355036212415530357760196608*x^4 - 126151505582063465645263671828607401984*x^3)/(x^12 - 1181952*x^11 + 468088823808*x^10 - 63046303525896192*x^9 + 365544345796803035136*x^8 + 1576124625645027213705216*x^7 - 5900544796575899519884984320*x^6 - 32142294443651691610154798678016*x^5 - 3422078601943995921366744570003456*x^4 + 233905916600076009217259724848876224512*x^3 + 592659773224534161601448730250797574520832*x^2 + 635658261599169329739705562266234750272274432*x + 274604369010841150447552802899013412117622554624));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "12T43-[6,2,3]-6,3,2,1-2,2,2,2,2,2-3,3,3,3-g0";
s`BelyiDBFilename := "12T43-[6,2,3]-6,3,2,1-2,2,2,2,2,2-3,3,3,3-g0.m";
s`BelyiDBDegree := 12;
s`BelyiDBOrders := \[ 6, 2, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<12 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]:
 Order := 479001600 > |
[ 11, 1, 6, 8, 7, 9, 2, 4, 3, 5, 10, 12 ],
[ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 12, 11 ],
[ 9, 4, 2, 3, 1, 8, 6, 7, 5, 12, 10, 11 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<12 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<12 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<12 |  
\[ 11, 1, 6, 8, 7, 9, 2, 4, 3, 5, 10, 12 ],
\[ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 12, 11 ],
\[ 9, 4, 2, 3, 1, 8, 6, 7, 5, 12, 10, 11 ]:
 Order := 72 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<12 |  
\[ 11, 1, 6, 8, 7, 9, 2, 4, 3, 5, 10, 12 ],
\[ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 12, 11 ],
\[ 9, 4, 2, 3, 1, 8, 6, 7, 5, 12, 10, 11 ]:
 Order := 72 >) |
[ PermutationGroup<12 |  
\[ 11, 1, 6, 8, 7, 9, 2, 4, 3, 5, 10, 12 ],
\[ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 12, 11 ],
\[ 9, 4, 2, 3, 1, 8, 6, 7, 5, 12, 10, 11 ]:
 Order := 72 > |
[ 2, 7, 9, 8, 10, 3, 5, 4, 6, 11, 1, 12 ],
[ 3, 8, 1, 6, 11, 4, 9, 2, 7, 12, 5, 10 ],
[ 5, 3, 4, 2, 9, 7, 8, 6, 1, 11, 12, 10 ]
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
[ 11, 1, 6, 8, 7, 9, 2, 4, 3, 5, 10, 12 ],
[ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 12, 11 ],
[ 9, 4, 2, 3, 1, 8, 6, 7, 5, 12, 10, 11 ]
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
