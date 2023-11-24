Part 3:
--What is each pokemon's primary type?
Select p.name, t.name from pokemons p left join types t on p.primary_type = t.id;

--What is Rufflet's secondary type?
Select t.name from types t left join pokemon p on t.id = p.secondary_type where p.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?
Select p.name from pokemons p LEFT JOIN pokemon_trainer pt ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;

--How many pokemon have a secondary type poison?
Select count(*) from pokemons p LEFT JOIN types t ON p.secondary_type = t.id WHERE t.name = 'Poison';

--What are all the primary types and how many pokemon have that type?
Select t.names, count(*) from pokemons p LEFT JOIN types t ON p.primary_type = t.id GROUP BY p.primary_type;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
Select count(*) from pokemon_trainer where pokelevel = 100 and trainerID is not null; ???

--How many pokemon only belong to one trainer and no other?
Select count(*) from pokemon_trainer group by pokemon_id having count(*) = 1;

Select count(*) from (Select count(*) as a from pokemon_trainer group by pokemon_id having count(*) = 1) as sub;