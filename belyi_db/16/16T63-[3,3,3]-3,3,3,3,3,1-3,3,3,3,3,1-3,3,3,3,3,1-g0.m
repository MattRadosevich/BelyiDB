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
phi1 := KX1!((x^16 + 4096*x^15 + 5013504*x^14 + 905969664*x^13 - 1128838201344*x^12 + 61229053771776*x^11 + 22576822008938496*x^10 + 820781032088272896*x^9 - 313948744773764382720*x^8 - 27735832636326917701632*x^7 + 423601807536629288534016*x^6 + 185900678964646453482356736*x^5 + 6320623084797979418400129024*x^4 - 380724590519595936731866595328*x^3 - 27412170517410907444694394863616*x^2 + 42105093914743153835050590510514176)/(8192*x^15 + 1811939328*x^13 + 122458107543552*x^11 + 1641562064176545792*x^9 - 55471665272653835403264*x^7 + 371801357929292906964713472*x^5 - 761449181039191873463733190656*x^3));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "16T63-[3,3,3]-3,3,3,3,3,1-3,3,3,3,3,1-3,3,3,3,3,1-g0";
s`BelyiDBFilename := "16T63-[3,3,3]-3,3,3,3,3,1-3,3,3,3,3,1-3,3,3,3,3,1-g0.m";
s`BelyiDBDegree := 16;
s`BelyiDBOrders := \[ 3, 3, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<16 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 ]:
 Order := 20922789888000 > |
[ 1, 4, 6, 5, 2, 7, 3, 13, 15, 16, 10, 9, 14, 8, 12, 11 ],
[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
[ 5, 6, 16, 12, 7, 14, 1, 9, 13, 10, 4, 11, 8, 2, 3, 15 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<16 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<16 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<16 |  
\[ 1, 4, 6, 5, 2, 7, 3, 13, 15, 16, 10, 9, 14, 8, 12, 11 ],
\[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
\[ 5, 6, 16, 12, 7, 14, 1, 9, 13, 10, 4, 11, 8, 2, 3, 15 ]:
 Order := 48 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<16 |  
\[ 1, 4, 6, 5, 2, 7, 3, 13, 15, 16, 10, 9, 14, 8, 12, 11 ],
\[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
\[ 5, 6, 16, 12, 7, 14, 1, 9, 13, 10, 4, 11, 8, 2, 3, 15 ]:
 Order := 48 >) |
[ PermutationGroup<16 |  
\[ 1, 4, 6, 5, 2, 7, 3, 13, 15, 16, 10, 9, 14, 8, 12, 11 ],
\[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
\[ 5, 6, 16, 12, 7, 14, 1, 9, 13, 10, 4, 11, 8, 2, 3, 15 ]:
 Order := 48 > |
[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
[ 9, 8, 2, 11, 6, 16, 13, 3, 12, 7, 14, 1, 10, 4, 15, 5 ],
[ 16, 9, 11, 10, 5, 12, 6, 2, 8, 15, 13, 7, 3, 1, 4, 14 ]
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
[ 1, 4, 6, 5, 2, 7, 3, 13, 15, 16, 10, 9, 14, 8, 12, 11 ],
[ 6, 13, 9, 16, 1, 5, 4, 8, 14, 11, 15, 2, 12, 3, 10, 7 ],
[ 5, 6, 16, 12, 7, 14, 1, 9, 13, 10, 4, 11, 8, 2, 3, 15 ]
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
