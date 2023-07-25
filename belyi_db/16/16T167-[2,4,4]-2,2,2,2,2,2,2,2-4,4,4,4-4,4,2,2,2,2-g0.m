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
phi1 := KX1!((-x^16 - 64*x^15 + 1152*x^14 + 160768*x^13 + 2843648*x^12 - 59260928*x^11 - 3164635136*x^10 - 56143642624*x^9 - 493590282240*x^8 - 1368932745216*x^7 + 15369532080128*x^6 + 176257874526208*x^5 + 633204411203584*x^4 - 828193174978560*x^3 - 15043911080738816*x^2 - 50074250609950720*x - 59212003985588224)/(4096*x^14 + 262144*x^13 + 5636096*x^12 + 5242880*x^11 - 1905262592*x^10 - 35148267520*x^9 - 193407746048*x^8 + 2283311988736*x^7 + 52793469566976*x^6 + 493672130936832*x^5 + 2778800890839040*x^4 + 10043007927582720*x^3 + 22908943240003584*x^2 + 30132116159201280*x + 17455846602571776));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "16T167-[2,4,4]-2,2,2,2,2,2,2,2-4,4,4,4-4,4,2,2,2,2-g0";
s`BelyiDBFilename := "16T167-[2,4,4]-2,2,2,2,2,2,2,2-4,4,4,4-4,4,2,2,2,2-g0.m";
s`BelyiDBDegree := 16;
s`BelyiDBOrders := \[ 2, 4, 4 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<16 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 ]:
 Order := 20922789888000 > |
[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<16 |  
\[ 2, 1, 5, 6, 3, 4, 8, 7, 10, 9, 13, 14, 11, 12, 16, 15 ],
\[ 15, 16, 12, 11, 14, 13, 9, 10, 7, 8, 4, 3, 6, 5, 1, 2 ]:
 Order := 4 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<16 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<16 |  
\[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
\[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
\[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]:
 Order := 64 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<16 |  
\[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
\[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
\[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]:
 Order := 64 >) |
[ PermutationGroup<16 |  
\[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
\[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
\[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]:
 Order := 64 > |
[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<16 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 ]:
 Order := 20922789888000 >) |
[ PermutationGroup<16 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 ]:
 Order := 20922789888000 > |
[ 8, 7, 12, 6, 14, 4, 2, 1, 16, 15, 13, 3, 11, 5, 10, 9 ],
[ 3, 5, 7, 1, 8, 2, 4, 6, 11, 13, 15, 9, 16, 10, 12, 14 ],
[ 5, 3, 15, 8, 16, 7, 6, 4, 13, 11, 10, 1, 9, 2, 14, 12 ]
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
