with (iStatCalculator) {
	
	iStats.popularity += addPopularity;
	iStats.reputation += addReputation;
	iStats.scary += addScary;

	addScary1 = 0;
	addReputation1 = 0;
	addPopularity1 = 0;
	addScary2 = 0;
	addReputation2 = 0;
	addPopularity2 = 0;
}

with (iCardControl) {

}

with(iStats){
	subscribers += (popularity + reputation + scary) * 347;
	title1 = "";
	title2 = "";
}

with(oThumbnail) {
	frontIdx = -1;
	backIdx = -1;
}
