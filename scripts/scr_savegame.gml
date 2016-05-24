
/*
if (file_exists("Save.sav")) file_delete("Save.sav");
var SaveFile = file_text_open_write("Save.sav");
file_text_write_string(file, scr_name[i]);
file_text_writeln(file);
var SavedRoom = room;
file_text_write_real(SaveFile,SavedRoom);
file_text_close(SaveFile);
*/

game_save("Save.sav");
