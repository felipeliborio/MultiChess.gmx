pos[0] = 0;
pos[1] = 0;

if(mouse_x > global.a - 32 && mouse_x < global.a + 32){
    pos[0] = global.a;
} else if (mouse_x > global.b - 32 && mouse_x <= global.b + 32){
    pos[0] = global.b;
} else if (mouse_x > global.c - 32 && mouse_x <= global.c + 32){
    pos[0] = global.c;
} else if (mouse_x > global.d - 32 && mouse_x <= global.d + 32){
    pos[0] = global.d;
} else if (mouse_x > global.e - 32 && mouse_x <= global.e + 32){
    pos[0] = global.e;
} else if (mouse_x > global.f - 32 && mouse_x <= global.f + 32){
    pos[0] = global.f;
} else if (mouse_x > global.g - 32 && mouse_x <= global.g + 32){
    pos[0] = global.g;
} else if (mouse_x > global.h - 32 && mouse_x <= global.h + 32){
    pos[0] = global.h;
} else {
    pos[0] = mouse_x;
}

if(mouse_y > global.l1 - 32 && mouse_y <= global.l1 + 32){
    pos[1] = global.l1;
} else if (mouse_y > global.l2 - 32 && mouse_y <= global.l2 + 32){
    pos[1] = global.l2;
} else if (mouse_y > global.l3 - 32 && mouse_y <= global.l3 + 32){
    pos[1] = global.l3;
} else if (mouse_y > global.l4 - 32 && mouse_y <= global.l4 + 32){
    pos[1] = global.l4;
} else if (mouse_y > global.l5 - 32 && mouse_y <= global.l5 + 32){
    pos[1] = global.l5;
} else if (mouse_y > global.l6 - 32 && mouse_y <= global.l6 + 32){
    pos[1] = global.l6;
} else if (mouse_y > global.l7 - 32 && mouse_y <= global.l7 + 32){
    pos[1] = global.l7;
} else if (mouse_y > global.l8 - 32 && mouse_y <= global.l8 + 32){
    pos[1] = global.l8;
} else {
    pos[1] = mouse_y;
}

return pos;
