library DISPLAY;

import 'dart:html';
import 'Game.dart';
import 'World/TileObject/TileObject.dart';

class Display
{
  final Element display = querySelector("#display");
  
  void displayWorld()
  {
    display.children.clear();
    for(int i = 0, length = world.grid.nodes.length; i < length; i++)
    {
      String lineText = "";
      for(int j = 0, length2 = world.grid.nodes[i].length; j < length2; j++)
      {
        lineText = lineText + getChar(world.grid.nodes[i][j]);
      }
      Element line = new Element.div();
      line.text = lineText;
      line.className = "worldLine";
      display.children.add(line);
    }
  }
  
  String getChar(TileObject tile)
  {
    if(!tile.isVisible)
    {
      return "●";
    }
    else
    {
      return tile.toString();
    }
  }
}