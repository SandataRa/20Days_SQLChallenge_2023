-- INIT THE DATABASE
CREATE TABLE search_results (
  result_id integer primary key,
  query	VARCHAR,
  position	integer,
  rating	integer
);

insert into search_results (result_id, query, position, rating) values (1,	'drive',	1,	1);
insert into search_results (result_id, query, position, rating) values (2,	'telescope',	3,	3);
insert into search_results (result_id, query, position, rating) values (3,	'dog',	2,	5);
insert into search_results (result_id, query, position, rating) values (4,	'dog',	3,	5);
insert into search_results (result_id, query, position, rating) values (5,	'telescope',	2,	4);
insert into search_results (result_id, query, position, rating) values (6,	'drive',	3,	1);
insert into search_results (result_id, query, position, rating) values (7,	'dog',	1,	5);
insert into search_results (result_id, query, position, rating) values (8,	'telescope',	1,	5);
insert into search_results (result_id, query, position, rating) values (9,	'drive',	2,	2);

-- MY SOLUTION
with queries_above_three as (
    select query
    from search_results
    where rating >= 3 
  	GROUP BY query
), queries_below_three as (
    select 'total' as ratio, count(DISTINCT query) as tt_threshold
    from search_results
    where rating < 3 and query not in (SELECt * FROM queries_above_three)	
)
SELECT round(cast(tt_threshold / tt_line as numeric),2) as percentage_less_than_3
FROM (
  SELECT cast(tt_threshold as numeric), cast(tt_line as numeric)
  FROM queries_below_three as qbt
  INNER JOIN (
    SELECT 'total' as ratio, COUNT(DISTINCT QUERY) as tt_line
    FROM search_results
  ) sub_tb ON qbt.ratio = sub_tb.ratio
) sub_tb2
;







