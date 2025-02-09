if idx != -1 {
	if iCardControl.cards[idx][$ "type"] == "front" {
		oThumbnail.frontIdx = iCardControl.cards[idx][$ "idx"];
	}
	else if iCardControl.cards[idx][$ "type"] == "back" {
		oThumbnail.backIdx = iCardControl.cards[idx][$ "idx"];
	}
}

with (iCardControl) {
	if next != -1 {
		array_push(iCardControl.pickedCards, other.idx);
		other.idx = cardOrder[next];
		if next < cardsAmount - 1 {
			next += 1;
		}
		else {
			next = -1;
		}
	}
	if next == -1 {
		other.idx = -1;
	}
}