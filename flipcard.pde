Card card;
int state = 0; 
String result=""; 
void setup() {
  size(800, 800);
  card = new Card();
}

void draw() {

  background(255);
  stroke(0);
  textAlign(CENTER);
  textSize(30);
  text("What woud you like to display?\n" + result, width/2, 100);
  textSize(20);

  switch(state) {
  case 0: 
    card.textShuffle(result);
    break;
  case 1:
    card.stopShuffle(result);
    break;
  case 2:
    result = "";
    state = 0;
    card.resetShuffle();
  }
}

void keyPressed() {
  if (key==ENTER||key==RETURN) {
    if(result.length() != 0){
      state++;
    }
  } else if ((key == DELETE||key==BACKSPACE) && result.length() > 0) {
    result = result.substring(0, result.length() - 1);
  } else if (key >= 32 && key <= 126) {
    result = result + key;
  }
}
