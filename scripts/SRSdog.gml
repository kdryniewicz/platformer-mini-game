switch(global.DogState)
{
    case DOGLEFT:
        sprite_index = spr_dog_runningL;
        break;
    case DOGRIGHT:
        sprite_index = spr_dog_runningR;
        break;
    default:
        sprite_index = spr_dog_idle;    
        break;    
}

