
DROP FUNCTION IF EXISTS get_position(text); 
CREATE OR REPLACE FUNCTION get_position(pos  text ) 
    RETURNS TABLE (player text, player_points integer)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT player_name::text, total_points::integer
		FROM player join statistic on player.player_id  =  statistic.player_id
		WHERE player_position = pos;
END;
$$
