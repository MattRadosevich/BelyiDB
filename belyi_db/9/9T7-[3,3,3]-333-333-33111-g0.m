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
phi1 := KX1!((x^9 + 729*x^8 + 157464*x^7 + 4251528*x^6 - 1291401630*x^5 + 6973568802*x^4 + 1506290861232*x^3 - 617673396283947*x - 5559060566555523)/(1458*x^8 + 8503056*x^6 + 13947137604*x^4 - 11118121133111046));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "9T7-[3,3,3]-333-333-33111-g0";
s`BelyiDBFilename := "9T7-[3,3,3]-333-333-33111-g0.m";
s`BelyiDBDegree := 9;
s`BelyiDBOrders := \[ 3, 3, 3 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<9 |  
\[ 2, 3, 4, 5, 6, 7, 8, 9, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7, 8, 9 ]:
 Order := 362880 > |
[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
[ 7, 1, 9, 8, 3, 4, 2, 6, 5 ],
[ 5, 2, 7, 4, 8, 3, 6, 1, 9 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<9 |  
\[ 5, 9, 6, 2, 8, 7, 3, 1, 4 ]:
 Order := 3 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<9 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<9 |  
\[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
\[ 7, 1, 9, 8, 3, 4, 2, 6, 5 ],
\[ 5, 2, 7, 4, 8, 3, 6, 1, 9 ]:
 Order := 27 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<9 |  
\[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
\[ 7, 1, 9, 8, 3, 4, 2, 6, 5 ],
\[ 5, 2, 7, 4, 8, 3, 6, 1, 9 ]:
 Order := 27 >) |
[ PermutationGroup<9 |  
\[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
\[ 7, 1, 9, 8, 3, 4, 2, 6, 5 ],
\[ 5, 2, 7, 4, 8, 3, 6, 1, 9 ]:
 Order := 27 > |
[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
[ 6, 1, 4, 8, 7, 2, 9, 3, 5 ],
[ 8, 2, 6, 4, 1, 7, 3, 5, 9 ]
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
[ 2, 3, 1, 7, 9, 5, 8, 4, 6 ],
[ 7, 1, 9, 8, 3, 4, 2, 6, 5 ],
[ 5, 2, 7, 4, 8, 3, 6, 1, 9 ]
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
