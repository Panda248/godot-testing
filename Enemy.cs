using Godot;
using System;

public class Enemy : KinematicBody2D
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";
	[Export]
	private int health = 10;

	private Node target;
	private Vector2 distanceToTarget;
	private bool chasing;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		
	}

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(float delta)
	{
		
	}

	// public void chase(Node node)	{
	// 	chasing = true;
	// 	target = node;
	// }
	
	// public void stopChasing(Node node)	{
	// 	if(node.equals(target))	{
	// 		chasing = false;
	// 	}
	// }

	// public void chase()	{
	// 	if(chasing)	{
	// 		distanceToTarget = (PhysicsBody2D)target.getDistanceTo(this.global_transform.origin);
	// 	}
	// }
}
