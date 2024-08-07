{{ config(materialized='table') }}

SELECT 
    c.noc,
    c.country,
    m.edition,
    m.edition_id,
    m.gold,
    m.silver,
    m.bronze,
    m.total
FROM 
    raw."Olympics_Country" c
LEFT JOIN 
    raw."Olympic_Games_Medal_Tally" m
ON 
    c.noc = m.country_noc