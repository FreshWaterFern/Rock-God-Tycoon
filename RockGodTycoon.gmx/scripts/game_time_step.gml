/// game_time_step()

/* 
   This script allows the game to step forward in time
   while also accounting for every condition. This script
   should be called in each step by obj_game
*/

gml_pragma("forceinline"); // Boosts YYC performance, increases memory usage

if ( room == rm_garage && menu_set == "none" && !game_time_pause )
{

switch(game_time_speed)
{
case 0:{game_time_seconds+=2/room_speed;break;} // Normal Speed
case 1:{game_time_seconds+=45/room_speed;break;} // Fast Speed
case 2:{game_time_seconds+=30+5/room_speed;break;} // Sanic Speed
}

// Seconds
if ( game_time_seconds > 59 )
{
game_time_minutes++;
game_time_seconds -= 60;
}

// Minutes
if ( game_time_minutes > 59 )
{
game_time_hours++;
game_time_minutes -= 60;
}

// Hours
if ( game_time_hours > 24 )
{
game_time_hours -= 24;
game_time_day++;
game_world_date = string(game_time_day)+"/"+string(game_time_month)+" Year "+string(game_time_year);
}

// Months
if ( game_time_day > game_month_day_count[|game_time_month] )
{
game_time_day = 1;
game_time_month ++;
game_world_date = string(game_time_day)+"/"+string(game_time_month)+" Year "+string(game_time_year);
}

// Years
if ( game_time_month > 12 )
{
game_time_month = 1;
game_time_year++;
game_world_date = string(game_time_day)+"/"+string(game_time_month)+" Year "+string(game_time_year);
}

}
