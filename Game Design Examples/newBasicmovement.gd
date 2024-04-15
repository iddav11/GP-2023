extends Sprite2D
var speed = 100
var rot_speed = 150
var speed2 = 0

func _Ready():
	pass
	
func _process(delta):
	position.x += speed*delta
	position.y += speed2*delta 
	#Get screen size and create a variable for it
	var r = get_viewport_rect()
	#if (position.x > r.size.x):
		#Changing the speed value to negative upon reaching the edge of the screen
		#speed = -speed
		#pass
	#if (position.x < (r.position.x)*-1):
		#Cant have it change back by using just speed, as new variable above is now the value for speed i.e -100
		#Double Negative makes positive
		#Change variable back to positive speed upon reaching opposte end of screen
		#speed = -speed
		#pass
		#Rotate the sprite
	rotation += deg_to_rad(rot_speed*delta)
	
	if (position.x > r.size.x):
		speed = 0
		speed2 = 100
		position.x = r.size.x
		pass
	if (position.y > r.size.y):
		speed = -100
		speed2 = 0
		position.y = r.size.y
		pass
	if (position.x < 0):
		speed = 0
		speed2 = -100
		position.x = 0
		pass
	if (position.y < 0):
		speed = 100
		speed2 = 0
		position.y = 0
		pass
	pass
	
	
