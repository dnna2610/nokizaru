/// ini_read_bool(section, key, default)
str = ini_read_string(argument0, argument1, argument2);
result = true;
if (str == "true") result = true;
else result = false;
return result;
