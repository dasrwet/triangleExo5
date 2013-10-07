part of triangleexo5;

class Board {
  CanvasRenderingContext2D context;
   num val=0;
   num a,b,a1,b1,a2,b2;
  Board(CanvasElement canvas) {
    context = canvas.getContext("2d");
  }

  //draw a circle
  void circle(x, y, r) {
    context.beginPath();
    context.arc(x, y, r, 0, PI*2, true);
    context.closePath();
    context.fill();
  }

  //draw a rectangle
  void rectangle(x, y, w, h) {
    context.beginPath();
    context.rect(x,y,w,h);
    context.closePath();
    context.stroke();
  }
  void triangle(x,y,x1,y1,x2,y2) {
    val++;
    context.fillStyle='#ffffff';
    context.lineWidth=3;
    context.beginPath();
    context.moveTo(x, y);
    context.lineTo(x1, y1);
    context.lineTo(x2,y2);
    context.lineTo(x,y);
    context.setFillColorRgb(15, 15, 5, 1);
    context.closePath();
    context.stroke();
    if(val<=4)
    {
      if(val<=1)
      {a=x; b=y; a1=x1; b1=y1;a2=x2; b2=y2;
        new Timer.periodic(const Duration(milliseconds: 1000), (t) => triangle((x+x1)/2,(y+y1)/2,(x1+x2)/2,(y1+y2)/2,(x2+x)/2,(y2+y)/2));
      }else 
        if(val==2)
      {
          
        new Timer.periodic(const Duration(milliseconds: 1000), (t) => autreTri(x,y,x1,y1,x2,y2));
      } 
    }
  }
  
  void autreTri(x,y,x1,y1,x2,y2){
    triangle((x+x1)/2,(y+y1)/2,(x+a1)/2,(y+b1)/2,(a1+x1)/2,(b1+y1)/2);
    triangle((x1+x2)/2,(y1+y2)/2,(x1+a2)/2,(y1+b2)/2,(a2+x2)/2,(b2+y2)/2);
    triangle((x+x2)/2,(y+y2)/2,(x2+a)/2,(y2+b)/2,(a+x)/2,(b+y)/2);
  } 
}

 
