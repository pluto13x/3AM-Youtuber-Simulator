try {
	if (popularity <= 0) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sMcdonalds;
		oGameOverText.thetext = "My channel fell off as fast as it grew. \n\n I really shouldn't have quit my job to become a children's horror YouTuber. I'm just as irrelevant now as before I began. \n\n I don't think I'd have a good job but... \n\n at least I wouldn't be working at McDonald's."
	}
	else if (reputation <= 0) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sApology;
		oGameOverText.thetext = "Turns out, PR managment really is a necessary job. \n\n I 3AMd a little too close to the sun, and people started accusing me of exposing children to problematic content. \n\n Like come on! Yes I wanted to exploit them, but not in THAT way! \n\n I made an apology song with my ukulele, but I just got laughed off the internet. \n\n I'm done with this."
	}
	else if (scary <= 0) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sDisstrack;
		oGameOverText.thetext = "There is a reason I chose horror as the genre of my channel. I'm not sure what the reason was for not sticking to it, though. \n\n My channel derailed further and further, until another YouTuber and I started fake beef. \n\n The children just weren't interested. My views steadily decreased from there until my channel died. \n\n Well... Time to look for a normal job."
	}
	else if (scary >= 50) {
		oShowDay.gameover = true;
		oGameOver.sprite_index = sLifeRuined;
		oGameOverText.thetext = "If you told me a few weeks ago that I'd get my channel terminated for being too disturbing for children, I wouldn't have believed you. \n\n Yet here we are. \n\n Angry moms kept complaining on Facebook, and it seems they mass reported my channel. It's gone now. \n\n And to put salt in my wound, drama channels are making up reasons why it got terminated. \n\n Maybe I'm not built for YouTube."
	}
}
catch (e) {
	show_debug_message("Error: " + string(e));
}