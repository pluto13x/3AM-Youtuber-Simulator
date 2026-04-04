if randomizeCards {
	show_debug_message("tried to randomize")
	for (var i = 0; i < cardsAmount; i += 1) {
		cardOrder[i] = i;
	}

	cardOrder = array_shuffle(cardOrder);
	randomizeCards = false;
	with oCard {
		recreate = true
	}
}