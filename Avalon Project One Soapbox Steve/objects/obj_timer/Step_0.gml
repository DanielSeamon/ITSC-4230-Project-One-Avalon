/// @description Insert description here
// You can write your code in this editor

//Timer Code
	//Timer increments by 1 frame each step
	timer += room_speed / 60;
	
	// After 60 frames pass, increment seconds by 1
	if (timer % 60 == 0){
		sec++;
		
		// Once sec reaches 60, set itself back to 0
		if (sec > 59){
			sec = 0;
		}
	}
	
	// After 3600 frames (60 seconds pass) increment minute by 1
	if (timer % 3600 == 0){
		minute++;
	}
	
	// Increment milisecond by roughly 16.7 every frame
	mili += (1000 / 60);
		
		// If miliseconds reaches 1000, set it back to 0
		if (mili > 999){
			mili = 0;
		}