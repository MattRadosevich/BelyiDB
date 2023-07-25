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
phi1 := KX1!((x^9 + 314928*x^8 + 22212108036*x^7 - 403685950810176*x^6 + 2140855991520160302*x^5 - 4084975594243128077136*x^4 + 3864241020168490477825044*x^3 - 1860791584097281910092485408*x^2 + 381520424476945831628649898809*x)/(531441*x^8 + 6198727824*x^7 + 28242953648100*x^6 + 59296646043258912*x^5 + 40525551530189762670*x^4 - 47269003304813339178288*x^3 - 77532982670720079587186892*x^2 + 30903154382632612361920641803529));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "9T11-[2,3,6]-22221-333-621-g0";
s`BelyiDBFilename := "9T11-[2,3,6]-22221-333-621-g0.m";
s`BelyiDBDegree := 9;
s`BelyiDBOrders := \[ 2, 3, 6 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 > |
[ 1, 9, 8, 7, 6, 5, 4, 3, 2 ],
[ 8, 6, 2, 9, 1, 3, 4, 5, 7 ],
[ 5, 4, 1, 9, 2, 8, 7, 6, 3 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<9 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<9 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<9 |  
\[ 1, 9, 8, 7, 6, 5, 4, 3, 2 ],
\[ 8, 6, 2, 9, 1, 3, 4, 5, 7 ],
\[ 5, 4, 1, 9, 2, 8, 7, 6, 3 ]:
 Order := 54 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<9 |  
\[ 1, 9, 8, 7, 6, 5, 4, 3, 2 ],
\[ 8, 6, 2, 9, 1, 3, 4, 5, 7 ],
\[ 5, 4, 1, 9, 2, 8, 7, 6, 3 ]:
 Order := 54 >) |
[ PermutationGroup<9 |  
\[ 1, 9, 8, 7, 6, 5, 4, 3, 2 ],
\[ 8, 6, 2, 9, 1, 3, 4, 5, 7 ],
\[ 5, 4, 1, 9, 2, 8, 7, 6, 3 ]:
 Order := 54 > |
[ 6, 8, 4, 3, 5, 1, 9, 2, 7 ],
[ 5, 3, 6, 7, 8, 2, 9, 1, 4 ],
[ 3, 5, 9, 2, 1, 8, 7, 6, 4 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 >) |
[ PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 > |
[ 1, 9, 8, 7, 6, 5, 4, 3, 2 ],
[ 8, 6, 2, 9, 1, 3, 4, 5, 7 ],
[ 5, 4, 1, 9, 2, 8, 7, 6, 3 ]
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
