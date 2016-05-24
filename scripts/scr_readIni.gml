fileName = "nokizaru.ini";
if file_exists(fileName){
    ini_open(fileName);
    obj_player.hp = ini_read_real("player", "hp", 100);
    obj_player.max_hp = ini_read_real("player", "max_hp", 100);
    obj_player.walljump = ini_read_bool("player", "walljump", false);
    obj_player.doublejump = ini_read_bool("player", "doublejump", false);
    obj_player.fireball = ini_read_bool("player", "fireball", false);
    obj_player.hpupgrade = ini_read_bool("player", "hpupgrade", false);
    obj_player.backtrack = ini_read_bool("player", "backtrack", false);
    ini_close();
}
