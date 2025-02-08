with (iCardControl) {
	array_push(iCardControl.pickedCards, other.idx);
	other.idx = cardOrder[next];
    next += 1;
}