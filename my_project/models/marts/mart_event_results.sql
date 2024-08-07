{{ config(materialized='table') }}

SELECT 
    r.result_id,
    r.event_title,
    r.edition,
    r.edition_id,
    r.sport,
    r.sport_url,
    r.result_date,
    r.result_location,
    r.result_participants,
    r.result_format,
    r.result_detail,
    r.result_description,
    e.athlete_id,
    a.name AS athlete_name,
    e.pos,
    e.medal
FROM 
    raw."Olympic_Results" r
LEFT JOIN 
    raw."Olympic_Athlete_Event_Results" e
ON 
    r.result_id = e.result_id
LEFT JOIN 
    raw."Olympic_Athlete_Bio" a
ON 
    e.athlete_id = a.athlete_id