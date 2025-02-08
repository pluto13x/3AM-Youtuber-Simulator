//import cards from json
cards = undefined;

if (file_exists(working_directory + "cards.json")) {
	var json = "";
	var file = file_text_open_read(working_directory + "cards.json");
	
	while(!file_text_eof(file)) {
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	
	cards = json_parse(json);
}

cardsAmount = array_length_1d(cards);
for (var i = 0; i < cardsAmount; i += 1) {
	cardChecker[i] = false;
	cardOrder[i] = i;
}

cardOrder = array_shuffle(cardOrder);
show_debug_message(cardOrder);
next = 0;

pickedCards = [];

//define card positions
card1x = 0;
card1y = 0;

card2x = 0;
card2y = 0;

card3x = 0;
card3y = 0;