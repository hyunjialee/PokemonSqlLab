Part 4: Final Report:
--Creating the columns:

Select p.name as 'Pokemon Name', tr.trainername as 'Trainer Name', pt.pokelevel as 'Level', t.name as 'Primary Type', tp.name as 'Secondary Type'
from pokemons p
LEFT JOIN pokemon_trainer pt on p.id = pt.pokemon_id
LEFT JOIN trainers tr on pt.trainerID = tr.trainerID
LEFT JOIN types t on p.primary_type = t.id
LEFT JOIN types tp on p.secondary_type = tp.id;

--Selecting Strongest Pokemon:

Select p.name as 'Pokemon Name', tr.trainername as 'Trainer Name', pt.pokelevel as 'Level', t.name as 'Primary Type', tp.name as 'Secondary Type'
from pokemons p
LEFT JOIN pokemon_trainer pt on p.id = pt.pokemon_id
LEFT JOIN trainers tr on pt.trainerID = tr.trainerID
LEFT JOIN types t on p.primary_type = t.id
LEFT JOIN types tp on p.secondary_type = tp.id
ORDER BY pokelevel desc, case when p.name = 'Mew' then 1 else 2 end;

--Mew is the strongest pokemon because in the lore of pokemon it is the ancestor of all Pokemon and also a considered a legendary pokemon. :)
-- TrainerName Cool is the strongest because he has 3 mews.
