/*  JavaScript 6th Edition
    Chapter 12
    Hands-on Project 12-1

    Author: Jonathan Hudgins	
    Date:   4/10/2020

    Filename: script.js
*/

function display(event) {
	$(event.currentTarget).next().fadeIn("slow");
}

$("h3").click(display);