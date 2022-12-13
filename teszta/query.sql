-- Baráth Dávid 
-- Szoft 2 N
-- 2022.12.13

-- 1,
select * from tesztak
join kategoriak on tesztak.kategoriaId = kategoriak.id
where kategoriak.nev = "Tarhonyák";

-- 2,
select tesztak.nev,rendelesek.datum,rendeleselemek.mennyiseg,vevok.nev
from rendeleselemek
join rendelesek on rendeleselemek.rendelesId = rendelesek.id
join vevok on rendelesek.vevoId = vevok.id
join tesztak on  rendeleselemek.tesztaId = tesztak.id
join kategoriak on tesztak.kategoriaId = kategoriak.id
where vevok.nev = "Pál Norbert";


-- 3,
select tesztak.nev ,tesztak.ar
from tesztak
where tesztak.ar =
(select min(tesztak.ar) from tesztak);


--4,
select count(tesztak.nev) as tesztaDarabszama
from tesztak
join kategoriak on tesztak.kategoriaId = kategoriak.id
where tesztak.nev like '%8 tojásos';

--5,
select vevok.nev,rendelesek.datum
from rendelesek
join vevok on rendelesek.vevoId = vevok.id
where vevok.nev ="Borbély Noé";
