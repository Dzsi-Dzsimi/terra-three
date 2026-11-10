# terra-three

This project is made for learning purposes only. It uses Godot version 4.7, and uses assets from the youtube video titled: The new ultimate introduction to Godot.

The game is a 2D platformer shooter, with mechanics involving enemies, level restart and lighting. I used shaders, tweens, lighting in this project for the first time. I also used tilemaps with collisions for the graphics. The gameplay consists of the player having to shoot enemies and make it out of the level by working through its various layers. Each enemy has 3 health points and explodes upon death. If an enemy gets too close to the player, its explosion causes the player to die. The user should press "r" upon death.

# How to play:
- download project files and open in Godot. OR
- Open within browser using link: https://dzsi-dzimi.itch.io/2d-shooter-game

# First fix since release:
- Made the player start at the correct position when the game loads.

# What the game includes:
- player character with 2D movement.
- Player control: moving left and right using A and D respectively. Space to jump. Point and click to shoot.
- Gravity and platform collisions
- Enemy: Has 3 health points, explodes upon death or contact with the player. Activates only when the player is close enough to the individual enemy. 
- Lighting through shaders
- 1 Level. This level took a long time to design, however there are a lot of areas of improvement to be made (mainly just adding a way to 'exit' the level, adding more levels, adding collision areas that cause the player to die)
- Restart to the level: R

# This is what the game currently looks like:
<img width="639" height="360" alt="third 2" src="https://github.com/user-attachments/assets/054e66b1-2c4d-407c-a6d3-cdcb99c06a3b" />
<img width="642" height="367" alt="third 1" src="https://github.com/user-attachments/assets/184a146c-069c-4fb4-adff-c12062706913" />
<img width="642" height="358" alt="third 3" src="https://github.com/user-attachments/assets/5e36631d-48d8-46e4-bb25-bbf7d15516e0" />
<img width="727" height="409" alt="third 5" src="https://github.com/user-attachments/assets/9b0855df-03e4-40fb-9cce-7a5dacadffc6" />
<img width="636" height="364" alt="third 4" src="https://github.com/user-attachments/assets/d17c84ed-1a4b-4a55-8cb4-957789f40b2f" />
<img width="637" height="356" alt="third_show" src="https://github.com/user-attachments/assets/f45c1820-f9b7-44f1-84d6-2ca213fcd698" />
<img width="632" height="353" alt="third 7" src="https://github.com/user-attachments/assets/65595799-75cd-4c15-9b08-023c8cb78b30" />
<img width="638" height="360" alt="third 6" src="https://github.com/user-attachments/assets/f534bd06-f0d9-4367-b829-9c5d16315912" />

# Future improvements:
- Make a health system for the player.
- Make an indicator for the enemy health. This could be through a health bar or colour change of the enemy light.
- Make ending screen.
- Make additional levels.
- Make parts of the level damage the player so that platforming is incentivised.
- Make player movement better. Currently the way it works is that velocity.x is set to a number if the A or D are pressed. Same with jump.
