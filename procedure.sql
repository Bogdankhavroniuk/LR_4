DROP PROCEDURE IF EXISTS insert_statistic(integer,integer,integer,integer,integer);
CREATE OR REPLACE PROCEDURE insert_statistic(st_id integer , 
 p_id integer,
 t_games integer , 
 t_points integer, 
 f_goals integer)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO player(player_id) VALUES (p_id);
	INSERT INTO statistic(stat_id  , 
 player_id ,
 total_games,
 total_points  ,
 field_goals ) VALUES (st_id  , 
 p_id ,
 t_games  , 
 t_points , 
 f_goals );
END;
$$;
CALL insert_statistic(189, 199, 144, 444 , 4444)
