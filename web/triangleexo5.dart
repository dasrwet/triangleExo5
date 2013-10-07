library triangleexo5;
import 'dart:html';
import 'dart:math';
import 'dart:async';

part 'board.dart';
void main() {
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  //board.circle(75, 75, 10);
  //board.rectangle(95, 95, 20, 20);
  board.triangle(100, 500,300,100,500,500);
  //query("#sample_text_id")
    //..text = "Click me!"
    //..onClick.listen(reverseText);
}
