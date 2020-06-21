image_speed = 0.22;
switch(global.PlayerState)
{
    case STANDING:
        sprite_index = spr_stand;
        break;
    case FALLING:
        sprite_index = spr_falling;
        break;
    case JUMPING:
        sprite_index = spr_jmp_up;
        break;
    case LEFT:
        sprite_index = spr_left;
        break;
    case RIGHT:
        sprite_index = spr_right;
        break;
    default:
        sprite_index = spr_stand;    
        break;   
    
}

