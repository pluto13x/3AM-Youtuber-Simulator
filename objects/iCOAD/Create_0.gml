comments = undefined;

if (file_exists(working_directory + "COAD.json")) {
	var json = "";
	var file = file_text_open_read(working_directory + "COAD.json");
	
	while(!file_text_eof(file)) {
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	
	comments = json_parse(json);
}
