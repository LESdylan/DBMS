SELECT DISTINCT "name"
FROM (("performances"
JOIN "teams" ON "performances"."team_id" = "teams"."id")
JOIN "players" ON "performances"."player_id" = "players"."id")
WHERE "first_name" = "Satchel" AND "last_name"  = "Paige"