left(2, 1). 
left(3, 2). 
left(4, 3). 
left(1, 4).

right(4, 1). 
right(1, 2). 
right(2, 3). 
right(3, 4).

against(1, 3). 
against(3, 1). 
against(4, 2). 
against(2, 4).
solve :-permutation([Wolf, Nif, Naf, Nuf], [1, 2, 3, 4]),
permutation([HobWolf, HobNif, HobNaf, HobNuf], [flora, sport, cosmos, fauna]),
HobWolf = fauna,
left(Wolf, Naf),
( HobNif = cosmos -> CosmosPlace = Nif; HobNaf = cosmos -> CosmosPlace = Naf; HobNuf = cosmos -> CosmosPlace = Nuf; HobWolf   = cosmos -> CosmosPlace = Wolf),
right(Nif, CosmosPlace),
against(Nuf, Naf),
HobNuf \= sport,
write('Wolf hobbi: '), write(HobWolf), nl,
write('Nif hobbi: '), write(HobNif), nl,
write('Naf hobbi: '), write(HobNaf), nl,
write('Nuf hobbi: '), write(HobNuf), nl.