{{ config(materialized='table') }}

SELECT 
    a.athlete_id,
    a.name,
    a.sex,
    a.born,
    a.height,
    a.weight,
    a.country,
    a.country_noc,
    a.description,
    a.special_notes,
    e.edition,
    e.edition_id,
    e.sport,
    e.event,
    e.pos,
    e.medal
FROM 
    raw."Olympic_Athlete_Bio" a
LEFT JOIN 
    raw."Olympic_Athlete_Event_Results" e
ON 
    a.athlete_id = e.athlete_id
