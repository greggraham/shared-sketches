class Robot {
  float _x;
  float _y;
  float _xMin;
  float _xMax;
  float _increment;
  float _w;
  float _h;
  PShape _bot;
  
  Robot(float xMin, float xMax, float y, float increment, float w, float h, String fileName) {
    _x = xMin;
    _y = y;
    _xMin = xMin;
    _xMax = xMax;
    _increment = increment;
    _w = w;
    _h = h;
    _bot = loadShape(fileName);
  }
  
  void move() {
    if (_x < _xMin || _x > _xMax) {
      _increment *= -1.0;
    }
    _x += _increment;
  }
  
  void display() {
    shape(_bot, _x, _y, _w, _h);
  }
}
