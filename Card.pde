class Card {
  char[] alphabet = new char[]{'A', 'B', 'C', 'D', 'E', 
    'F', 'G', 'H', 'I', 'J', 
    'K', 'L', 'M', 'N', 'O', 
    'P', 'Q', 'R', 'S', 'T', 
    'U', 'V', 'W', 'X', 'Y', 
    'Z', 'a', 'b', 'c', 'd', 
    'e', 'f', 'g', 'h', 'i', 
    'j', 'k', 'l', 'm', 'n', 
    'o', 'p', 'q', 'r', 's', 
    't', 'u', 'v', 'w', 'x', 
    'y', 'z'};
  int loc = 20;
  int startLoc;
  Card() {
    fill(0);
  }

  void textShuffle(String word) {
    startLoc = width/2 - ((word.length() - 1) * loc / 2);
    for (int i = 0; i < word.length(); i++) {
      if (word.charAt(i) == (' ')) {
        text(" ", startLoc + (i * loc), height/2);
      } else {
        text(alphabet[(int) random(0, 52)], startLoc + (i * loc), height/2);
      }
    }
    delay(100);
  }

  int startInt = 0;
  int delay = 1;
  void stopShuffle(String word) {
    startLoc = width/2 - ((word.length() - 1) * loc / 2);
    for (int i = 0; i < startInt; i++) {
      if (word.charAt(i) == (' ')) {
        text(" ", startLoc + (i * loc), height/2);
      } else {
        text(word.charAt(i), startLoc + (i * loc), height/2);
      }
    }


    for (int i = startInt; i < word.length(); i++) {
      if (word.charAt(i) == (' ')) {
        text(" ", startLoc + (i * loc), height/2);
      } else {
        text(alphabet[(int) random(0, 52)], startLoc + (i * loc), height/2);
        if (delay % 10 == 0) { //change the value for faster result
          startInt++;
          delay = 1;
        }
      }
    }

    delay++;
    delay(100);
  }

  void resetShuffle() {
    startInt = 1;
    delay = 1;
  }
}
