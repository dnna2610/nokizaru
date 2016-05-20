fileName = "nokizaru.ini";
if (file_exists(fileName)) file_delete(fileName);
var file = file_text_open_write(fileName);
if (obj_player.backtrack) values[0] = "true";
else values[0] = "false";
if (obj_player.walljump) values[1] = "true";
else values[1] = "false";
for (i=0; i<array_length_1d(values); i+=1)
{
    file_text_write_string(file, values[i]);
    file_text_writeln(file);
};
file_text_close(file);
