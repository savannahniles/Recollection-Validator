PFont font;
import java.awt.*;

String[] A;
String[] wordsA;
String[] B;
String[] wordsB;
String[] C;
String[] wordsC;
String[] D;
String[] wordsD;
String[] E;
String[] wordsE;

void setup() {

  createFont ("Serif", 20);
  int textSz = int(random(10, 25));

  A = loadStrings("A.txt");
  B = loadStrings("B.txt");
  C = loadStrings("C.txt");
  D = loadStrings("D.txt"); 
  E = loadStrings("E.txt");

  for (int i = 0; i<A.length; i++) {
    wordsA = splitTokens(A[i], " ");
  }
  for (int i = 0; i<B.length; i++) {
    wordsB = splitTokens(B[i], " ");
  }
  for (int i = 0; i<C.length; i++) {
    wordsC = splitTokens(C[i], " ");
  }
 for (int i = 0; i<D.length; i++) {
    wordsD = splitTokens(D[i], " ");
  }
 for (int i = 0; i<E.length; i++) {
    wordsE = splitTokens(E[i], " ");
  }

//--------------------------------------------------------------

  //intersection of AB
  println("AB");
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(B[0], wordsA[i]);
    if (test != null) {
      print(wordsA[i] + " ");
    }
  } 
  
   //difference of AB
  println ( " " );
  println ( " " );
  //B with respect to A
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(B[0], wordsA[i]);
    if (test == null) {
      print(wordsA[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //A with respect to B
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(A[0], wordsB[i]);
    if (test == null) {
      print(wordsB[i] + " ");
    }
  }
  
  
//--------------------------------------------------------------

  //union
  /*
  println ( " " );
  println ( " " );
  print (A[0]+ " ");
  print (B[0] + " ");
  */

//--------------------------------------------------------------
  println ( " " );
  println ( " " );
  
    //intersection of AC
  println("AC");
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(C[0], wordsA[i]);
    if (test != null) {
      print(wordsA[i] + " ");
    }
  } 
  
   //difference of AC
  println ( " " );
  println ( " " );
  //C with respect to A
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(C[0], wordsA[i]);
    if (test == null) {
      print(wordsA[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //A with respect to C
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(A[0], wordsC[i]);
    if (test == null) {
      print(wordsC[i] + " ");
    }
  }
 //--------------------------------------------------------------
  println ( " " );
  println ( " " );
  
    //intersection of AD
  println("AD");
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(D[0], wordsA[i]);
    if (test != null) {
      print(wordsA[i] + " ");
    }
  } 
  
   //difference of AD
  println ( " " );
  println ( " " );
  //D with respect to A
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(D[0], wordsA[i]);
    if (test == null) {
      print(wordsA[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //A with respect to D
  for (int i = 0; i < wordsD.length; i++) {
    String[] test = match(A[0], wordsD[i]);
    if (test == null) {
      print(wordsD[i] + " ");
    }
  }
  
   //--------------------------------------------------------------
  println ( " " );
  println ( " " );
  
    //intersection of AE
  println("AE");
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(E[0], wordsA[i]);
    if (test != null) {
      print(wordsA[i] + " ");
    }
  } 
  
   //difference of AE
  println ( " " );
  println ( " " );
  //E with respect to A
  for (int i = 0; i < wordsA.length; i++) {
    String[] test = match(E[0], wordsA[i]);
    if (test == null) {
      print(wordsA[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //A with respect to E
  for (int i = 0; i < wordsE.length; i++) {
    String[] test = match(A[0], wordsE[i]);
    if (test == null) {
      print(wordsE[i] + " ");
    }
  }
   //--------------------------------------------------------------
  println ( " " );
  println ( " " );
  
    //intersection of BC
  println("BC");
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(C[0], wordsB[i]);
    if (test != null) {
      print(wordsB[i] + " ");
    }
  } 

    //difference of BC
  println ( " " );
  println ( " " );
  //C with respect to B  
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(C[0], wordsB[i]);
    if (test == null) {
      print(wordsB[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //B with respect to C
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(B[0], wordsC[i]);
    if (test == null) {
      print(wordsC[i] + " ");
    }
  }
  
  //////////////////////
    println ( " " );
  println ( " " );
  
    //intersection of BD
  println("BD");
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(D[0], wordsB[i]);
    if (test != null) {
      print(wordsB[i] + " ");
    }
  } 
     //difference of BD
  println ( " " );
  println ( " " );
  //D with respect to B  
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(D[0], wordsB[i]);
    if (test == null) {
      print(wordsB[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //B with respect to D
  for (int i = 0; i < wordsD.length; i++) {
    String[] test = match(B[0], wordsD[i]);
    if (test == null) {
      print(wordsD[i] + " ");
    }
  }
  ///////////////////
      println ( " " );
  println ( " " );
  
    //intersection of BE
  println("BE");
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(E[0], wordsB[i]);
    if (test != null) {
      print(wordsB[i] + " ");
    }
  } 
     //difference of BE
  println ( " " );
  println ( " " );
  //E with respect to B  
  for (int i = 0; i < wordsB.length; i++) {
    String[] test = match(E[0], wordsB[i]);
    if (test == null) {
      print(wordsB[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //B with respect to E
  for (int i = 0; i < wordsE.length; i++) {
    String[] test = match(B[0], wordsE[i]);
    if (test == null) {
      print(wordsE[i] + " ");
    }
  }
 ///////////////////
  println ( " " );
  println ( " " );
  
    //intersection of CD
  println("CD");
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(D[0], wordsC[i]);
    if (test != null) {
      print(wordsC[i] + " ");
    }
  } 

    //difference of CD
  println ( " " );
  println ( " " );
  //D with respect to C  
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(D[0], wordsC[i]);
    if (test == null) {
      print(wordsC[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //C with respect to D
  for (int i = 0; i < wordsD.length; i++) {
    String[] test = match(C[0], wordsD[i]);
    if (test == null) {
      print(wordsD[i] + " ");
    }
  }
 //////////////////
 
   println ( " " );
  println ( " " );
  
    //intersection of CE
  println("CE");
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(E[0], wordsC[i]);
    if (test != null) {
      print(wordsE[i] + " ");
    }
  } 

    //difference of CE
  println ( " " );
  println ( " " );
  //E with respect to C  
  for (int i = 0; i < wordsC.length; i++) {
    String[] test = match(E[0], wordsC[i]);
    if (test == null) {
      print(wordsC[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //C with respect to E
  for (int i = 0; i < wordsE.length; i++) {
    String[] test = match(C[0], wordsE[i]);
    if (test == null) {
      print(wordsE[i] + " ");
    }
  }
  ////////////////
    println ( " " );
  println ( " " );
  
    //intersection of DE
  println("DE");
  for (int i = 0; i < wordsD.length; i++) {
    String[] test = match(E[0], wordsD[i]);
    if (test != null) {
      print(wordsD[i] + " ");
    }
  } 

    //difference of DE
  println ( " " );
  println ( " " );
  //E with respect to D  
  for (int i = 0; i < wordsD.length; i++) {
    String[] test = match(E[0], wordsD[i]);
    if (test == null) {
      print(wordsD[i] + " ");
    }
  } 
  println ( " " );
  println ( " " );
  //C with respect to D
  for (int i = 0; i < wordsE.length; i++) {
    String[] test = match(D[0], wordsE[i]);
    if (test == null) {
      print(wordsE[i] + " ");
    }
  }
  
  
  
}

