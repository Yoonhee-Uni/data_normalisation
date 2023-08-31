\c topmodelsql

CREATE TABLE models_1nf AS
SELECT 
model_id,
model_name,
area,
price_per_event,
category,
agent,
unnest(string_to_array(brand, ', '))AS brands,
trait,
rating,
next_event_date,
revenue FROM models;

SELECT * FROM models_1nf