\c topmodelsql
SELECT * FROM model_profile;

CREATE TABLE revenues AS
SELECT model_id,
revenue
FROM model_profile;



\echo '5. 1. A new brand 'Atlantis Doromania' has hit the scene and wants to work with all models from London.' 
SELECT 
model_profile.model_id,
model_name,
area
FROM model_profile
JOIN model_brands
ON model_profile.model_id = model_brands.model_id
WHERE area = 'London';

\echo '5.2. Verity has too much work and needs an assistant in their area, update the agents table to reflect the new team member. Verity''s assistant will take over the models that work for Dior.'

WITH ChangingAgent AS (
    SELECT 
    model_profile.model_id, 
    agent, 
    brands
    FROM model_profile
    JOIN model_brands
    ON model_profile.model_id = model_brands.model_id
)
UPDATE model_profile
SET  agent = 'Yoonhee'
FROM ChangingAgent
WHERE model_profile.model_id = ChangingAgent.model_id AND ChangingAgent.agent ='Verity' 
AND ChangingAgent.brands = 'Dior';

SELECT * FROM model_profile WHERE agent = 'Yoonhee';

\echo '5.3. Sam Pagne has been dropped by Harrods due to questionable social media posts about Bounties in Celebrations, update the data accordingly.'

DELETE FROM model_profile
WHERE model_name = 'Sam Pagne';
SELECT * FROM model_profile ;

\echo '5.4. A new model has hit the scene and will be working with Rose and Aldi. They''re a fan of the central aisle of delights and charge just £20 per event. Their rating is `4` and their trait is `Browser`. Update the data accordingly.'



SELECT * FROM model_profile
WHERE model_name = 'Yoona Lee';