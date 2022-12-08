using Godot;
using System;

public class Player : KinematicBody2D
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";
	private int directionX;
	private int directionY;

	[Export]
	public int velocity = 10;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		directionX = 0;
		directionY = 0;
	}

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
		public override void _Process(float delta)
		{
			LookAt(GetGlobalMousePosition());
			inputMovement();
			MoveAndCollide(new Vector2(directionX, directionY).Normalized() * (delta*velocity));
			
		}
	public override void _Input(InputEvent @event)
	{
		base._Input(@event);
		
	}

	private void inputMovement()	{
		if(Input.IsActionPressed("ui_left"))	{
			directionX = -1;
		}
		else if(Input.IsActionPressed("ui_right"))	{
			directionX = 1;
		}
		else{
			directionX = 0;
		}
		if(Input.IsActionPressed("ui_down"))	{
			directionY = 1;
		}
		else if(Input.IsActionPressed("ui_up"))	{
			directionY = -1;
		}
		else {
			directionY = 0;
		}

	}

	public void punch()	{
		
	}
}
