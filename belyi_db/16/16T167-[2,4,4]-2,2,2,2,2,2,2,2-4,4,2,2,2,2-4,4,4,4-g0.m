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
phi1 := KX1!((x^16 + 64*x^15 - 1152*x^14 - 160768*x^13 - 2843648*x^12 + 59260928*x^11 + 3164635136*x^10 + 56143642624*x^9 + 493590282240*x^8 + 1368932745216*x^7 - 15369532080128*x^6 - 176257874526208*x^5 - 633204411203584*x^4 + 828193174978560*x^3 + 15043911080738816*x^2 + 50074250609950720*x + 59212003985588224)/(x^16 + 64*x^15 + 2944*x^14 + 101376*x^13 + 2792448*x^12 + 64503808*x^11 + 1259372544*x^10 + 20995375104*x^9 + 300182536192*x^8 + 3652244733952*x^7 + 37423937486848*x^6 + 317414256410624*x^5 + 2145596479635456*x^4 + 10871201102561280*x^3 + 37952854320742400*x^2 + 80206366769152000*x + 76667850588160000));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "16T167-[2,4,4]-2,2,2,2,2,2,2,2-4,4,2,2,2,2-4,4,4,4-g0";
s`BelyiDBFilename := "16T167-[2,4,4]-2,2,2,2,2,2,2,2-4,4,2,2,2,2-4,4,4,4-g0.m";
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
[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<16 |  
\[ 2, 1, 4, 3, 6, 5, 9, 10, 7, 8, 12, 11, 14, 13, 16, 15 ],
\[ 15, 16, 13, 14, 11, 12, 8, 7, 10, 9, 5, 6, 3, 4, 1, 2 ]:
 Order := 4 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<16 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<16 |  
\[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
\[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
\[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]:
 Order := 64 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<16 |  
\[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
\[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
\[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]:
 Order := 64 >) |
[ PermutationGroup<16 |  
\[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
\[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
\[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]:
 Order := 64 > |
[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]
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
[ 8, 10, 4, 3, 12, 11, 15, 1, 16, 2, 6, 5, 14, 13, 7, 9 ],
[ 3, 4, 1, 2, 7, 9, 11, 5, 12, 6, 8, 10, 15, 16, 13, 14 ],
[ 11, 12, 2, 1, 9, 7, 13, 3, 14, 4, 10, 8, 16, 15, 5, 6 ]
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
