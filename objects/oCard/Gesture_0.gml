if idx != -1 {
	if iCardControl.cards[idx][$ "type"] == "front" {
		oThumbnail.frontIdx = iCardControl.cards[idx][$ "idx"];
		if iCardControl.cards[idx][$ "position"] == 1 {
			iStats.title1 = iCardControl.cards[idx][$ "inTitle"];
		}
		else {
			iStats.title1 = iStats.title2;
			iStats.title2 = iCardControl.cards[idx][$ "inTitle"];
		}
	}
	
	else if iCardControl.cards[idx][$ "type"] == "back" {
		oThumbnail.backIdx = iCardControl.cards[idx][$ "idx"];
		iStats.title2 = iCardControl.cards[idx][$ "inTitle"];
	}
	else if iCardControl.cards[idx][$ "type"] == "overlay" {
		oThumbnail.overlayIdx = iCardControl.cards[idx][$ "idx"];
	}
	else {
		oThumbnail.endingIdx = iCardControl.cards[idx][$ "idx"];
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