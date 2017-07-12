/// @description Insert description here
// You can write your code in this editor
draw_self();
if(shootRed) draw_circle_color(x-30, y-50, 8, c_red, c_red, false);
else draw_circle_color(x-30, y-50, 8, c_gray, c_gray, false);
if(shootGreen) draw_circle_color(x, y-50, 8, c_lime, c_lime, false);
else draw_circle_color(x, y-50, 8, c_gray, c_gray, false);
if(shootYellow)draw_circle_color(x+30, y-50, 8, c_yellow, c_yellow, false);
else draw_circle_color(x+30, y-50, 8, c_gray, c_gray, false);