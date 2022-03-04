
--insert into EVENT values (null, 1, "2022-02-25T22:35:02.590772", "La soirée de folie au b148", true, "La Chopine du B148", "B148 - The place to beer");

--insert into EVENT values (null, 1, "2023-02-25T22:35:02.590772", "La soirée de folie au b148", true, "La Chopine du B148", "B148 - The place to beer");

--insert into EVENT values (null, 1, "2023-01-02T22:35:02.590772", "La soirée de folie au b148", false, "La Chopine du B148", "B148 - The place to beer");

--insert into event (creator, date, description, enable, name, place) values (1, "2023-01-02T22:35:02.590772", "La soirée de folie au b148", false, "La Chopine du B148", "B148 - The place to beer");
select 1;   


--IF NOT EXISTS (select * from event where id_event = 1) THEN insert into event values (1, 1, '2022-03-04 20:29:29.542164', 'La soirée de folie au b148', true, 'La Chopine du B148', 'B148 - The place to beer');
--IF NOT EXISTS (select * from event where id_event = 2) THEN insert into event values ((select MAX(id_event)+1 from event), 1, '2022-03-06 20:29:29.542164', 'La soirée de folie au b148', true, 'La Chopine du B148', 'B148 - The place to beer');
--IF NOT EXISTS (select * from event where id_event = 3) THEN insert into event values ((select MAX(id_event)+1 from event), 1, '2022-05-06 20:29:29.542164', 'La soirée de folie au b148', true, 'La Chopine du B148', 'B148 - The place to beer');
--IF NOT EXISTS (select * from event where id_event = 4) THEN insert into event values ((select MAX(id_event)+1 from event), 1, '2022-08-06 12:29:29.542164', 'La soirée de folie au b148', true, 'La Chopine du B148', 'B148 - The place to beer');
--IF NOT EXISTS (select * from event where id_event = 5) THEN insert into event values ((select MAX(id_event)+1 from event), 1, '2023-03-04 20:29:29.542164', 'La soirée de folie au b148', true, 'La Chopine du B148', 'B148 - The place to beer');

