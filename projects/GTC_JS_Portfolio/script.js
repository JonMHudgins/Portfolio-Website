/*  Script to implement jQuery fadeIn effect

    Author: Jonathan Hudgins	
    Date:   4/10/2020

    Filename: script.js
*/

function showHide(event) {
	$(event.currentTarget).next().fadeToggle("slow");
}

$("h3").click(showHide);