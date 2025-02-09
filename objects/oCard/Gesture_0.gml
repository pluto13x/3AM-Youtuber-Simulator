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
		iStatCalculator.addPopularity1 = iCardControl.cards[idx][$ "popularity"];
		iStatCalculator.addScary1 = iCardControl.cards[idx][$ "scary"];
		iStatCalculator.addReputation1 = iCardControl.cards[idx][$ "reputation"];
	}
	
	else if iCardControl.cards[idx][$ "type"] == "back" {
		oThumbnail.backIdx = iCardControl.cards[idx][$ "idx"];
		iStats.title2 = iCardControl.cards[idx][$ "inTitle"];
		
		iStatCalculator.addPopularity2 = iCardControl.cards[idx][$ "popularity"];
		iStatCalculator.addScary2 = iCardControl.cards[idx][$ "scary"];
		iStatCalculator.addReputation2 = iCardControl.cards[idx][$ "reputation"];
	}
	else if iCardControl.cards[idx][$ "type"] == "overlay" {
		iStats.overlayIdx = iCardControl.cards[idx][$ "idx"];
	}
	else {
		iStats.endingIdx = iCardControl.cards[idx][$ "idx"];
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