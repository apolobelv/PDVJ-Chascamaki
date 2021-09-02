/// @description Insert description here
// You can write your code in this editor
xOrigin = 8;
yOrigin = RESOLUTION_H * 0.7;
textProgress = 0;

thisText = "I'm writing a long text in order to test whether or not the text wraps around the textbox. I'm hoping that it does.";
boxWidth = sprite_get_width(sprTextBox);
stringHeight = string_height(thisText) / 1.5;
