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
phi1 := KX1!(-2/(16*x^5 - 20*x^3 + 5*x - 1));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "5T2-[5,2,2]-5-221-221-g0";
s`BelyiDBFilename := "5T2-[5,2,2]-5-221-221-g0.m";
s`BelyiDBDegree := 5;
s`BelyiDBOrders := \[ 5, 2, 2 ];
s`BelyiDBType := "Spherical";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 > |
[ 2, 3, 4, 5, 1 ],
[ 3, 2, 1, 5, 4 ],
[ 4, 3, 2, 1, 5 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<5 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<5 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 3, 2, 1, 5, 4 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 3, 2, 1, 5, 4 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 >) |
[ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 3, 2, 1, 5, 4 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 > |
[ 2, 3, 4, 5, 1 ],
[ 3, 2, 1, 5, 4 ],
[ 4, 3, 2, 1, 5 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 >) |
[ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 > |
[ 2, 3, 4, 5, 1 ],
[ 3, 2, 1, 5, 4 ],
[ 4, 3, 2, 1, 5 ]
]
];
s`BelyiDBGaloisOrbits := [ PowerSequence(PowerSequence(PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 >)) |
[ PowerSequence(PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 >) |
[ PermutationGroup<5 |  
\[ 2, 3, 4, 5, 1 ],
\[ 4, 3, 2, 1, 5 ]:
 Order := 10 > |
[ 2, 3, 4, 5, 1 ],
[ 3, 2, 1, 5, 4 ],
[ 4, 3, 2, 1, 5 ]
]
]
];
s`BelyiDBSanityCheckTiming := 0.0100000000000000p15;
s`BelyiDBLocalSanityCheckTiming := 0.0100000000000000p15;
s`BelyiDBLocalSanityCheckPrime := 101;

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
