insert into points values (1, 'MEGA');
insert into points values (2, 'VEGAS');
insert into points values (3, 'AVIAPARK');

insert into materials values (1, 'Дуб', 300);
insert into materials values (2, 'Сосна', 200);
insert into materials values (3, 'Береза', 400);
insert into materials values (4, 'Ясень', 500);
insert into materials values (5, 'Клен', 700);
insert into materials values (6, 'Ива', 1000);
insert into materials values (7, 'Ветла', 300);
insert into materials values (8, 'Железо', 2000);
insert into materials values (9, 'Сталь', 3000);
insert into materials values (10, 'Шелк', 1000);
insert into materials values (11, 'Сукно', 3100);

select material_name, PRICE_OF_MATERIAL from materials;
select * from materials where (PRICE_OF_MATERIAL >= 1000) AND (PRICE_OF_MATERIAL <= 3000);
select * from materials order by PRICE_OF_MATERIAL;
select * from materials order by PRICE_OF_MATERIAL desc;
select (PRICE_OF_MATERIAL * 1.5) as "Наценка" from materials;

insert into types_of_furniture values (1, 'Стол');
insert into types_of_furniture values (2, 'Стул');
insert into types_of_furniture values (3, 'Диван');
insert into types_of_furniture values (4, 'Тумбочка');

insert into developers values (1, 'ЗАО Гарнизон');
insert into developers values (2, 'ООО СТРОЙ ПРОМ ИНВЕСТ');

insert into names_of_product values (1, 'СИЛА', 1, 3);
insert into names_of_product values (2, 'МОЩЬ', 1, 2);
insert into names_of_product values (8, 'ЮНОСТЬ', 1, 2);
insert into names_of_product values (9, 'ОТРОЧЕСТВО', 1, 2);
insert into names_of_product values (3, 'МУДРОСТЬ', 1, 4);
insert into names_of_product values (4, 'ЩЕДРОСТЬ', 1, 1);
insert into names_of_product values (5, 'ВОЛГА', 2, 3);
insert into names_of_product values (10, 'ЕНИСЕЙ', 2, 2);
insert into names_of_product values (11, 'ДОН', 2, 3);
insert into names_of_product values (6, 'ЛАДОГА', 2, 2);
insert into names_of_product values (7, 'СЕНЕЖЬ', 2, 1);

select FK_DEVELOPER_ID, count(*) from names_of_product group by FK_DEVELOPER_ID;
select FK_DEVELOPER_ID, FK_TYPE_ID, count(*) from names_of_product group by FK_DEVELOPER_ID, FK_TYPE_ID;
select FK_DEVELOPER_ID, FK_TYPE_ID, count(*) from names_of_product group by FK_DEVELOPER_ID, FK_TYPE_ID order by FK_DEVELOPER_ID;
select FK_DEVELOPER_ID, FK_TYPE_ID, count(*) from names_of_product where FK_TYPE_ID in (1, 2, 3) group by FK_DEVELOPER_ID, FK_TYPE_ID order by FK_DEVELOPER_ID;

select
    FK_DEVELOPER_ID as "id производителя",
    FK_TYPE_ID as "id типа товара",
    count(*) as "общее количество"
from
    names_of_product
where
    FK_TYPE_ID in (1, 2, 3)
group by
    FK_DEVELOPER_ID,
    FK_TYPE_ID
order by
    FK_DEVELOPER_ID;

select unique price_of_material from materials;

select (3+5) from dual;