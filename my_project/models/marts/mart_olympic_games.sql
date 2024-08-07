{{ config(materialized='table') }}

SELECT 
    g.edition,
    g.edition_id,
    g.edition_url,
    g.year,
    g.city,
    g.country_flag_url,
    g.country_noc,
    g.start_date,
    g.end_date,
    g.competition_date,
    m.country,
    m.gold,
    m.silver,
    m.bronze,
    m.total
FROM 
    raw."Olympics_Games" g
LEFT JOIN 
    raw."Olympic_Games_Medal_Tally" m
ON 
    g.edition_id = m.edition_id
