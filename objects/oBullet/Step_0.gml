//Move If the Paused Isn't Activated
speed = movementSpeed * global.timeSpeed;
direction += rotSpd * random_range(-1,1) 
bulletSize = 0;

//Destroy a Bullet Otside the Room
if (x < 0 || y < 0 || x > room_width || y > room_height)
	instance_destroy(self);
