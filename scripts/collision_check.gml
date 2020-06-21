
// Return to position at start of step
x = xprevious;
y = yprevious;

// Check to see if where was going has a collision
if(place_free(x+hspeed,y+vspeed))
    {
        x = x + hspeed;
        y = y + vspeed;
    }
// There is a collision -- what type?
else
    {
        // Horizontal collision?
        if(abs(hspeed) > 0)
            {
                move_contact_solid(180*(hspeed < 0),abs(hspeed))
                if(!place_free(sign(x+hspeed),0))
                    {
                        hspeed = 0;
                    }
            }
        // Vertical collision?
        if(vspeed != 0)
            {
                move_contact_solid(90+180*(vspeed>0),abs(vspeed))   
                // Check if landing on top of platform
                if(!place_free(0,sign(y+vspeed)))
                    {
                        vspeed =0;
                    }
                // Check if hitting underside of platform
                if(!place_free(x,y+1))
                    {
                        // Jumping is state variable for jumping state machine
                        Jumping = false;
                    }
            }
    }
    
    
    
