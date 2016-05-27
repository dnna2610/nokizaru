hp_temp = 100;
max_hp_temp = 100;;
walljump_temp = false;
doublejump_temp = false;
fireball_temp = false;
hpupgrade_temp = false;
backtrack_temp = false;
fileName = "nokizaru.ini";
if file_exists(fileName){
    ini_open(fileName);
    hp_temp = ini_read_real("player", "hp", 100);
    max_hp_temp = ini_read_real("player", "max_hp", 100);
    walljump_temp = ini_read_bool("player", "walljump", false);
    doublejump_temp = ini_read_bool("player", "doublejump", false);
    fireball_temp = ini_read_bool("player", "fireball", false);
    hpupgrade_temp = ini_read_bool("player", "hpupgrade", false);
    backtrack_temp = ini_read_bool("player", "backtrack", false);
    ini_close();
}
if (instance_exists(obj_player)) {
    hp_temp = obj_player.hp;
    max_hp_temp = obj_player.max_hp;
    walljump_temp = obj_player.walljump;
    doublejump_temp = obj_player.doublejump;
    fireball_temp = obj_player.fireball;
    hpupgrade_temp = obj_player.hpupgrade;
    backtrack_temp = obj_player.backtrack;
} else hp_temp = 100;
if (file_exists(fileName)) file_delete(fileName);
ini_open(fileName);
ini_write_real("player", "hp", hp_temp);
ini_write_real("player", "max_hp", max_hp_temp);
ini_write_bool("player", "walljump", walljump_temp);
ini_write_bool("player", "doublejump", doublejump_temp);
ini_write_bool("player", "fireball", fireball_temp);
ini_write_bool("player", "hpupgrade", hpupgrade_temp);
ini_write_bool("player", "backtrack", backtrack_temp);
ini_close();
