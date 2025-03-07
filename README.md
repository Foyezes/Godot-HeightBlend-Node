# Godot HeightBlend Node
This is a visual shader addon for Godot 4.2+. This adds the HeightBlend node to the visual shader editor.
This node lets you blend between two heightmaps or use a single heightmap with a mask.
![image](https://github.com/user-attachments/assets/d2007988-32c0-43f1-89eb-78199f137161)

You can blend between two heightmaps. In first example below, the first heightmap is a rock and the second one is dirt. Using the `Height Offset` parameter you can place the dirt in the crevices of the rock. You can mask the blended texture, as seen in the second example.

| Two heightmap blend                                                                        | With mask                                                                                |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| ![image](https://github.com/user-attachments/assets/d57e4b43-172b-4a33-9d40-df22675d8988) | ![image](https://github.com/user-attachments/assets/d3608fba-8a51-46d1-bd5b-6a20e3cf5131)

You can use a single heightmap. In this case you want to leave the Height 2 value at 0.5.

![image](https://github.com/user-attachments/assets/5afb256f-5320-4989-b569-e9691c2342d0)

You can adjust the `Contrast` and `Height Offset` parameters to get desired results.

# Installation

You can get it from the [Asset Store](https://godotengine.org/asset-library/asset/3649) in editor.
Or extract the zip file and copy the folder to your project. You'll need to restart the editor for the node to appear in visual shader.
