/*
   Name: Jared Soltas
   Class: CMSC 341 Section 01
   Project #1
   File: Driver.cpp

   This file has the driver for the Llama class. Tests out
   its functions in different scenarios.
*/

#include <iostream>
#include <string>
using namespace std ;

#include "Llama.h"
#include "OvCoInt.h"

int main() {


   string popped;
   const int LN_SIZE = 4;

   cout << "------------------------------------------------------";
   cout << "\nTesting all functions work when there is an extra node\n";
   cout << "------------------------------------------------------\n";
   Llama<int, LN_SIZE> extraNodeStack;
   extraNodeStack.push(4);
   extraNodeStack.push(3);
   extraNodeStack.push(2);
   extraNodeStack.push(1);
   extraNodeStack.push(0);
   extraNodeStack.pop();

   Llama<int, LN_SIZE> A(extraNodeStack); // Copy constructor

   cout << "\n*** Original stack with an extra node ***\n";
   extraNodeStack.dump(); // Dumping stack with extra node

   cout << "\n*** Checking stack self-assignment ***\n";
   extraNodeStack = extraNodeStack;
   extraNodeStack.dump();

   cout << "\n*** Dumping copy constructor stack ***\n";
   A.dump();

   cout << "\n*** Using swap function on the copied stack ***\n";
   A.swap(); // Swapping stack with extra node
   A.dump();

   cout << "\n*** Checking original stack wasn't modified ***\n";
   extraNodeStack.dump();

   cout << "\n*** Dumping overloaded assignment operator stack ***\n";
   A = extraNodeStack;
   A.dump();

   cout << "\n*** Stack with an extra node using rotate ***\n";
   A = extraNodeStack; // Overloaded assignment operator
   A.rot();
   A.dump();

   cout << "\n*** Stack with an extra node using peek ***\n";
   A = extraNodeStack;
   for (int i = 0 ; i < A.size() ; i++) {
        cerr << i << ": " << A.peek(i) << endl ;
   }

   cout << "\n*** Stack with an extra node using duplicate ***\n";
   A = extraNodeStack;
   A.dup();
   A.dump();

   cout << "\n*** Stack with an extra node using pop ***\n";
   A = extraNodeStack;
   popped = A.pop();
   cout << "Popped " << popped << " from the stack\n";
   A.dump();

   cout << "\n*** Checking extra node is deleted ***\n";
   A = extraNodeStack;
   popped = A.pop();
   cout << "Popped " << popped << " from the stack\n";
   popped = A.pop();
   cout << "Popped " << popped << " from the stack\n";
   A.dump();


   cout << "\n------------------------------------------------------";
   cout << "\nTesting all functions work when there are several nodes"
            "\n(and no extra nodes)\n";
   cout << "------------------------------------------------------\n";
   Llama<string, LN_SIZE> severalNodeStack;

   severalNodeStack.push("i");
   severalNodeStack.push("h");
   severalNodeStack.push("g");
   severalNodeStack.push("f");
   severalNodeStack.push("e");
   severalNodeStack.push("d");
   severalNodeStack.push("c");
   severalNodeStack.push("b");
   severalNodeStack.push("a");


   Llama<string, LN_SIZE> B(severalNodeStack);
   cout << "\n*** Copy constructor stack with several nodes ***\n";
   B.dump();

   cout << "\n*** Stack with several nodes using swap ***\n";
   cout << "\n*** Testing swap within 2 different nodes ***\n";
   B.swap(); // Testing swap when top 2 in stack are in different nodes
   B.dump();

   cout << "\n*** Pushing \"z\" onto the stack ***\n";
   cout << "\n*** Testing swap within the same node ***\n";
   B = severalNodeStack;
   B.push("z");
   B.swap(); // Testing swap when top 2 in stack are in the same node
   B.dump();

   cout << "\n*** Stack with several nodes using rotate ***\n";
   cout << "\n*** Testing rotate within 2 different nodes ***\n";
   B = severalNodeStack; // Overloaded assignment operator
   B.rot();
   B.dump();

   cout << "\n*** Pushing \"y\" onto the stack ***\n";
   cout << "\n*** Testing rotate within 2 different nodes ***\n";
   B = severalNodeStack; // Overloaded assignment operator
   B.push("y");
   B.rot();
   B.dump();


   cout << "\n*** Pushing \"y\" and \"z\" onto the stack ***\n";
   cout << "\n*** Testing rotate within the same node ***\n";
   B = severalNodeStack; // Overloaded assignment operator
   B.push("y");
   B.push("z");
   B.rot();
   B.dump();

   cout << "\n*** Stack with several nodes using peek ***\n";
   B = severalNodeStack;
   for (int i = 0 ; i < B.size() ; i++) {
        cerr << i << ": " << B.peek(i) << endl ;
   }

   cout << "\n*** Stack with several nodes using duplicate ***\n";
   B = severalNodeStack;
   B.dup();
   B.dup();
   B.dup();
   B.dup();
   B.dump();

   cout << "\n*** Stack with several nodes using pop ***\n";
   B = severalNodeStack;
   popped = B.pop();
   cout << "Popped " << popped << " from the stack\n";
   B.dump();


   cout << "\n------------------------------------------------------";
   cout << "\n Testing all constructors work with an empty stack \n";
   cout << "------------------------------------------------------\n";
   Llama<string, LN_SIZE> emptyStack;
   cout << "\n*** Dumping original empty stack ***\n";
   emptyStack.dump();

   cout << "\n*** Dumping copy constructor empty stack ***\n";
   Llama<string, LN_SIZE> C(emptyStack);
   C.dump();

   cout << "\n*** Dumping overloaded assignment operator empty stack ***\n";
   Llama<string, LN_SIZE> D;
   D = emptyStack;
   D.dump();


   cout << "\n------------------------------------------------------";
   cout << "\n  Testing all exceptions work within functions \n";
   cout << "------------------------------------------------------\n";

   cout << "\n*** Duplicating an empty stack ***\n";
   try {
      D.dup();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Duplicating stack of size 1 ***\n";
   try {
      D.push("a");
      D.dup();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Popping an empty stack ***\n";
   try {
      popped = D.pop();
      popped = D.pop();
      popped = D.pop();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }


   cout << "\n*** Swapping empty stack ***\n";
   try {
      D.swap();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Swapping stack of size 1 ***\n";
   try {
      D.push("a");
      D.swap();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Swapping stack of size 2 ***\n";
   try {
      D.push("b");
      D.swap();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

      cout << "\n*** Rotating empty stack ***\n";
   try {
      D = emptyStack;
      D.rot();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Rotating stack of size 1 ***\n";
   try {
      D.push("a");
      D.rot();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Rotating stack of size 2 ***\n";
   try {
      D.push("b");
      D.rot();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Rotating stack of size 3 ***\n";
   try {
      D.push("c");
      D.rot();
      D.dump();

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Testing peek on an empty stack ***\n";
   try {
      D = emptyStack;
      D.peek(0);

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }

   cout << "\n*** Testing high offset peek on a several node stack ***\n";
   try {
      D = severalNodeStack;
      cout << D.peek(8) << endl;
      cout << D.peek(9);

   } catch (LlamaUnderflow &e) {
      cerr << "*****\n" ;
      cerr << "Llama Stack error: " << e.what() << endl ;
      cerr << "*****\n" ;
   }


   cout << "\n------------------------------------------------------";
   cout << "\n              Testing OvCoInt class \n";
   cout << "------------------------------------------------------\n";

   Llama<OvCoInt,9> S ;
   OvCoInt answer ;


   S.push(OvCoInt(1));  // using constructor
   S.push(2);	// using implicit type conversion
   S.push(3);
   S.push(4);
   S.push(5);
   S.push(6);
   S.push(7);
   S.push(8);
   S.push(9);

   S.swap();
   S.dump();

   S.push(10);

   S.rot();
   S.dump();

   S.swap();
   S.dump();


   // Testing assignment and copy constructor

   OvCoInt::debugOn();

   cerr << "\nCreating new Llama Stack of OvCoInt T using S\n";
   Llama<OvCoInt,9> T(S);

   answer = T.pop();
   answer = T.pop();
   cerr << "============================\n";
   cerr << "Copied stack T has: \n";
   T.dump();
   cerr << "============================\n";
   cerr << "Orginal stack S has: \n";
   S.dump();


   cerr << "\nCreating new Llama Stack of OvCoInt U\n";
   Llama<OvCoInt,9> U;

   cerr << "\nAssigning Llama Stack S to U\n";
   U = S;
   cerr << "============================\n";
   cerr << "Copied stack U has: \n";
   U.dump();


   int n;
   n = U.pop();   // use implicit outward type conversion
   cerr << "Popped " << n << " from Llama Stack U\n";
   U.push(11);

   cerr << "============================\n";
   cerr << "After modifying U, orginal stack S has: \n";
   S.dump();

   return 0 ;
}




