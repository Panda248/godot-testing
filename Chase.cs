using Godot;
using System;

public class Chase : KinematicBody2D
{
    // Declare member variables here. Examples:
    // private int a = 2;
    // private string b = "text";

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        
    }

    private void _on_FOV_body_exited(object body)
	{
		if(body == GetParent().GetNode("Player"))	{
			File f = new File();
			String path = "res://Enemy.cs";
			if(!f.FileExists(path))	{
				GD.Print("Chase.cs can't be found :(");
			}
            GD.Print("Idling");
			SetScript(GD.Load(path));
		}
	}
    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(float delta)
    {
        
    }
}
