\c topmodelsql
-- DROP TABLE IF EXISTS models;
-- DROP TABLE IF EXISTS model_brands;

CREATE TABLE model_profile AS
SELECT
DISTINCT model_id,
model_name,
price_per_event,
category,
agent,
trait,
rating,
next_event_date,
revenue
FROM models_1nf
ORDER BY model_id;

CREATE TABLE model_brands AS
SELECT
model_id,
brands,
area
FROM models_1nf;



SELECT * FROM model_profile;
SELECT * FROM model_brands;

