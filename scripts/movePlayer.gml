// Visual states should be seperated out into seperate script to change the sprite as there may be states that do not need a render change
if(keyboard_check_direct(vk_return))
        room_restart();

    if keyboard_check_pressed(vk_left)
        {
            global.PlayerState = LEFT;
            hspeed = -MAXSPEED; 
        }
    else if keyboard_check_released(vk_left)
        {
            global.PlayerState = STANDING;
            hspeed = 0;
        }
    else if keyboard_check_pressed(vk_right)
        {
            global.PlayerState = RIGHT;
            hspeed = MAXSPEED;
        }
    else if keyboard_check_released(vk_right)
        {
            global.PlayerState = STANDING;
            hspeed = 0;
        }
     else  if(!Jumping and keyboard_check_pressed(vk_up))
        {
            audio_play_sound(snd_jump, 10, false);
            vspeed = -JUMPHEIGHT;
            gravity_direction = 270;
            gravity = 2;
            global.PlayerState = JUMPING;
            Jumping = true;
        }

        if(vspeed > MAXSPEED)
            vspeed = MAXSPEED;

            
