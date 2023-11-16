class Tile {
  
  int     _id;  
  PVector _coordinates;
  float   _widthSize;
  float   _heightSize;
  boolean _isVisible;
  int     _family;
  PImage  _img;
  boolean _isSelected;
 
 
 Tile(int id, float posX, float posY, float widthSize, float heightSize, int family, PImage img, boolean isSelected) {
   _id          = id;
   _coordinates = new PVector(posX, posY);
   _widthSize   = widthSize;
   _heightSize  = heightSize;
   _isVisible   = true;
   _family      = family;
   _img         = img;
   _isSelected  = isSelected;
 }
 
 
 void displayTiles() {
   stroke(0);
   strokeWeight(2);
   if(_isVisible == true) {
     if(isOverTile()) {
       strokeWeight(4);
     }
     if(_isSelected == true)
       stroke(255,0,0);
     image(_img, _coordinates.x * _widthSize, _coordinates.y * _heightSize, _widthSize, _heightSize);
     noFill();
     rect(_coordinates.x * _widthSize, _coordinates.y * _heightSize, _widthSize, _heightSize);
   }
 }
 
 
 boolean isOverTile() {
  if(mouseX >= (_coordinates.x * _widthSize) && mouseX <= (_coordinates.x * _widthSize + _widthSize) && mouseY >= (_coordinates.y * _heightSize) && mouseY <= (_coordinates.y * _heightSize + _heightSize))
    return true;
  return false;
 }
 
 
 boolean isPressed() {
  if(isOverTile() && mouseButton == LEFT && isMouseReleased) {
    println("Is pressed!");
    return true;
  }
   return false;   
 }
 
}
