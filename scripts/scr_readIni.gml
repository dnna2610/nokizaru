fileName = "nokizaru.ini";
if file_exists(fileName){
    file = file_text_open_read(fileName);
    values[0] = file_text_read_string(file);
    file_text_readln(file);
    values[1] = file_text_read_string(file);
    file_text_readln(file);
    file_text_close(file);
    if (values[0] == "true") obj_player.backtrack = true;
    else obj_player.backtrack = false;
    if (values[1] == "true") obj_player.walljump = true;
    else obj_player.walljump = false;
}
