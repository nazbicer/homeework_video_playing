import processing.video.*;
import controlP5.*;


ControlP5 cp5;

Movie my_movie;


void setup() {
  size(640, 410);

  background(0);
  my_movie=new Movie(this, "earth.mov");
  my_movie.play();
  
  cp5=new ControlP5(this);
cp5.addButton("Play")
.setValue(0)
.setPosition(280,385)
.setSize(30,19)
;
 
 cp5=new ControlP5(this);
cp5.addButton("Stop")
.setValue(0)
.setPosition(330,385)
.setSize(30,19)
;

cp5=new ControlP5(this);
cp5.addButton("Pause")
.setValue(0)
.setPosition(380,385)
.setSize(30,19)
;

 
  
}

void movieEvent(Movie m) {
  m.read();
}

void Play() {

  my_movie.play();

}

void Stop() {
    my_movie.pause();
      my_movie.jump(0);
}

void Pause() {
    my_movie.pause();
}

 

void draw() {

  image(my_movie, 0, 0, width, height-30);
}