s := BelyiDBInitialize();

/*
Base Field Data
*/

base_field_data := [* *];
K1<nu1> := NumberField(Polynomial(\[1, 1, 1]));
place1 := InfinitePlaces(K1)[1];
conj1 := false;
CC<I> := ComplexField(20);
z1 := 0.00000000000000000000p20;
base_field_data_1 := [* K1, place1, conj1, z1 *];
Append(~base_field_data, base_field_data_1);
K2<nu2> := NumberField(Polynomial(\[1, 1, 1]));
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
phi1 := KX1!((1/117649*x^7 + 1/16807*(216*nu1 + 10278)*x^6 + 1/16807*(13277304*nu1 + 175115385)*x^5 + 1/16807*(185025496752*nu1 - 356058497196)*x^4 + 1/2401*(-57828337334064*nu1 - 4710550519809)*x^3 + 1/2401*(22932183445658568*nu1 + 32057932875174954)*x^2 + 1/2401*(4027890021580307304*nu1 - 952213119174473391)*x)/(x^6 + 1/7*(9144*nu1 + 31734)*x^5 + 1/49*(206974440*nu1 + 384764175)*x^4 + 1/343*(1820852492400*nu1 + 2292784900020)*x^3 + 1/2401*(7762285366137360*nu1 + 7013670103341135)*x^2 + 1/16807*(15965535056399620056*nu1 + 10106231311431170550)*x + 1/117649*(12585356000994278904840*nu1 + 4853396996701073345601)));
Append(~curves, X1);
Append(~maps, phi1);
K2<nu2> := K2;
X2 := Curve(ProjectiveSpace(PolynomialRing(K2, 2)));
KX2<x> := FunctionField(X2);
phi2 := KX2!((1/117649*x^7 + 1/16807*(-216*nu2 + 10062)*x^6 + 1/16807*(-13277304*nu2 + 161838081)*x^5 + 1/16807*(-185025496752*nu2 - 541083993948)*x^4 + 1/2401*(57828337334064*nu2 + 53117786814255)*x^3 + 1/2401*(-22932183445658568*nu2 + 9125749429516386)*x^2 + 1/2401*(-4027890021580307304*nu2 - 4980103140754780695)*x)/(x^6 + 1/7*(-9144*nu2 + 22590)*x^5 + 1/49*(-206974440*nu2 + 177789735)*x^4 + 1/343*(-1820852492400*nu2 + 471932407620)*x^3 + 1/2401*(-7762285366137360*nu2 - 748615262796225)*x^2 + 1/16807*(-15965535056399620056*nu2 - 5859303744968449506)*x + 1/117649*(-12585356000994278904840*nu2 - 7731959004293205559239)));
Append(~curves, X2);
Append(~maps, phi2);
s`BelyiDBBelyiCurves := curves;
s`BelyiDBBelyiMaps := maps;

/*
auto printing
*/

s`BelyiDBName := "7T4-[2,3,6]-2221-331-61-g0";
s`BelyiDBFilename := "7T4-[2,3,6]-2221-331-61-g0.m";
s`BelyiDBDegree := 7;
s`BelyiDBOrders := \[ 2, 3, 6 ];
s`BelyiDBType := "Euclidean";
s`BelyiDBGenus := 0;
s`BelyiDBSize := 2;
s`BelyiDBPointedSize := 2;
s`BelyiDBPermutationTriple := [ PermutationGroup<7 |  
\[ 2, 3, 4, 5, 6, 7, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7 ]:
 Order := 5040 > |
[ 1, 7, 6, 5, 4, 3, 2 ],
[ 2, 6, 3, 7, 4, 1, 5 ],
[ 6, 4, 2, 7, 5, 3, 1 ]
];
s`BelyiDBAutomorphismGroup := PermutationGroup<7 |   >;
s`BelyiDBPointedAutomorphismGroup := PermutationGroup<7 |   >;
s`BelyiDBMonodromyGroup := PermutationGroup<7 |  
\[ 1, 7, 6, 5, 4, 3, 2 ],
\[ 2, 6, 3, 7, 4, 1, 5 ],
\[ 6, 4, 2, 7, 5, 3, 1 ]:
 Order := 42 >;
s`BelyiDBPassport := [ PowerSequence(PermutationGroup<7 |  
\[ 1, 7, 6, 5, 4, 3, 2 ],
\[ 2, 6, 3, 7, 4, 1, 5 ],
\[ 6, 4, 2, 7, 5, 3, 1 ]:
 Order := 42 >) |
[ PermutationGroup<7 |  
\[ 1, 7, 6, 5, 4, 3, 2 ],
\[ 2, 6, 3, 7, 4, 1, 5 ],
\[ 6, 4, 2, 7, 5, 3, 1 ]:
 Order := 42 > |
[ 4, 3, 2, 1, 7, 6, 5 ],
[ 6, 1, 3, 5, 7, 2, 4 ],
[ 7, 3, 6, 2, 5, 1, 4 ]
],
[ PermutationGroup<7 |  
\[ 1, 7, 6, 5, 4, 3, 2 ],
\[ 2, 6, 3, 7, 4, 1, 5 ],
\[ 6, 4, 2, 7, 5, 3, 1 ]:
 Order := 42 > |
[ 1, 7, 6, 5, 4, 3, 2 ],
[ 2, 6, 3, 7, 4, 1, 5 ],
[ 6, 4, 2, 7, 5, 3, 1 ]
]
];
s`BelyiDBPointedPassport := [ PowerSequence(PermutationGroup<7 |  
\[ 2, 3, 4, 5, 6, 7, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7 ]:
 Order := 5040 >) |
[ PermutationGroup<7 |  
\[ 2, 3, 4, 5, 6, 7, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7 ]:
 Order := 5040 > |
[ 1, 7, 6, 5, 4, 3, 2 ],
[ 2, 6, 3, 7, 4, 1, 5 ],
[ 6, 4, 2, 7, 5, 3, 1 ]
],
[ PermutationGroup<7 |  
\[ 2, 3, 4, 5, 6, 7, 1 ],
\[ 2, 1, 3, 4, 5, 6, 7 ]:
 Order := 5040 > |
[ 1, 7, 6, 5, 4, 3, 2 ],
[ 6, 1, 3, 5, 7, 2, 4 ],
[ 2, 5, 1, 4, 7, 3, 6 ]
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
