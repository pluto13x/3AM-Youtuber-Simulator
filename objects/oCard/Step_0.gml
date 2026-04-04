if recreate {
    with (iCardControl) {
        if (next < array_length(cardOrder)) {
            other.idx = cardOrder[next];
            next++;
        }
    }
    recreate = false;
}