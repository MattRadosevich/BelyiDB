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
phi1 := KX1!(-1/(x^3 - 1));
Append(~curves, X1);
Append(~maps, phi1);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "3T1-[3,3,1]-3-3-111-g0";
s`BelyiDBFilename := "3T1-[3,3,1]-3-3-111-g0.m";
s`BelyiDBDegree := 3;
s`BelyiDBOrders := \[ 3, 3, 1 ];
s`BelyiDBType := "Spherical";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 1;
s`BelyiDBPointedSize := 1;
s`BelyiDBPermutationTriple := [ PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 > |
[ 2, 3, 1 ],
[ 3, 1, 2 ],
[ 1, 2, 3 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 >;
s`BelyiDBMonodromyGroup := PermutationGroup<3 |  
\[ 2, 3, 1 ],
\[ 3, 1, 2 ],
\[ 1, 2, 3 ]:
 Order := 3 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<3 |  
\[ 2, 3, 1 ],
\[ 3, 1, 2 ],
\[ 1, 2, 3 ]:
 Order := 3 >) |
[ PermutationGroup<3 |  
\[ 2, 3, 1 ],
\[ 3, 1, 2 ],
\[ 1, 2, 3 ]:
 Order := 3 > |
[ 2, 3, 1 ],
[ 3, 1, 2 ],
[ 1, 2, 3 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 >) |
[ PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 > |
[ 2, 3, 1 ],
[ 3, 1, 2 ],
[ 1, 2, 3 ]
]
];
s`BelyiDBGaloisOrbits := [ PowerSequence(PowerSequence(PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 >)) |
[ PowerSequence(PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 >) |
[ PermutationGroup<3 |  
\[ 2, 3, 1 ]:
 Order := 3 > |
[ 2, 3, 1 ],
[ 3, 1, 2 ],
[ 1, 2, 3 ]
]
]
];
s`BelyiDBSanityCheckTiming := 0.0100000000000000p15;
s`BelyiDBLocalSanityCheckTiming := 0.000000000000000p15;
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
