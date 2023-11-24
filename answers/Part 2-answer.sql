Part 2:
-- Types of Pokemon:
Select count(id) from types;


--Name of the pokemon ID 45: Eevee
Select name from pokemons WHERE id = 45;

--How many pokemon are there: 656
Select count(id) from pokemons;

-- How many types are there: 18
Select count(types) from pokemons;

--How many pokemon have a secondary type: 316
Select count(secondary_type) from pokemons;