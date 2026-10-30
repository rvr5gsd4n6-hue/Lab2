--1 Вывести дисциплины, стандарт которых введён более 5 лет назад
SELECT * FROM public."Disciplines" WHERE year_introduced < 2021;
--2 Вывести дисциплины, которые преподают преподаватели с почасовой оплатой
SELECT DISTINCT
    d.discipline_id,
    d.name,
    d.description,
    d.year_introduced
FROM public."Disciplines" AS d
JOIN public."Teaching_Load" AS t
    ON d.discipline_id = t.discipline_id
WHERE t.hourly_pay > 0;
