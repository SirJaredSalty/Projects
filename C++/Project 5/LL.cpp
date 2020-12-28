/*****************************************
** File:    LL.cpp
** Project: CMSC 202 Project 5, Spring 2020
** Author:  Jared Soltas
** Date:    04/28/20
** Section: 31
** E-mail:  jsoltas1@umbc.edu
**
** This file contains the implementation for the Nodes and the linked
** list which contains those Nodes. There are general functions which are
** used on the Nodes and linked list.
**
***********************************************/


#include <string>
#include <iostream>
#include <iomanip>
#include <cmath>
#include <sstream>
using namespace std;


// Templated Node class
// Normal node except that each node can hold a pair <T,int>
// where the first value is templated and the second value is the frequency
// (or quantity) of the first
// For example, if T was a string then it would hold string,int
template <class T>
class Node {
public:
  Node( const T& data ); //Node Constructor - Assume each quan
  pair<T,int>& GetData(); //Node Data Getter
  void SetData( const pair<T,int>& ); //Node Data Setter
  Node<T>* GetNext(); //Node m_next getter
  void SetNext( Node<T>* next ); //Node m_next setter
private:
  pair <T,int> m_data; //Holds templated data
  Node<T>* m_next; //Pointer to next node
};


// Initializes a Node's m_data to the passed key with default frequency 1
template <class T>
Node<T>::Node( const T& data ) {
  m_data = make_pair(data,1);
  m_next = nullptr;
}


// Returns the m_data pair
template <class T>
pair<T,int>& Node<T>::GetData() {
   return m_data;
}


// Sets m_data to the passed pair data
template <class T>
void Node<T>::SetData( const pair<T,int>& data ) {
   m_data = data;
}


// Returns the next Node
template <class T>
Node<T>* Node<T>::GetNext() {
   return m_next;
}


// Sets the next Node
template <class T>
void Node<T>::SetNext( Node<T>* next ) {
   m_next = next;
}


//Templated Linked List class
template <class T>
class LL {
 public:
  // Name: LL() (Linked List) - Default Constructor
  // Desc: Used to build a new linked list
  // Preconditions: None
  // Postconditions: Creates a new linked list where m_head points to nullptr
  LL();
  // Name: ~LL() - Destructor
  // Desc: Used to destruct a LL
  // Preconditions: There is an existing LL with at least one node
  // Postconditions: A LL is deallocated (including dynamically allocated nodes)
  //                 to have no memory leaks!
 ~LL();
  // Name: LL (Copy Constructor)
  // Desc: Creates a copy of existing LL
  //       Requires a LL - REQUIRED to be implemented even if not used
  // Preconditions: Source LL exists
  // Postconditions: Copy of source LL
  LL(const LL&);
  // Name: operator= (Overloaded Assignment Operator)
  // Desc: Makes two LL of the same type have identical number of nodes and values
  // Preconditions: Requires two linked lists of the same templated type
  //                REQUIRED to be implemented even if not used
  // Postconditions: Two idenetical LL
  LL<T>& operator= (const LL&);
  // Name: Find
  // Desc: Iterates through LL and returns node if data found
  // Preconditions: LL Populated
  // Postconditions: Returns nullptr if not found OR Node pointer if found
  Node<T>* Find(const T& data);
  // Name: Insert
  // Desc: Either inserts a node to the linked list OR increments frequency of first
  //       Takes in data. If "first" (of pair) NOT in list, adds node
  //       If "first" (of pair) is already in list, increments quantity
  //       Inserts "first" in order with no duplicates
  // Preconditions: Requires a LL.
  // Postconditions: Node inserted in LL based on first value (or quantity incremented)
  void Insert(const T&);
  // Name: RemoveAt
  // Desc: Removes a node at a particular position based on data passed (matches first)
  // Preconditions: LL with at least one node.
  // Postconditions: Removes first node with passed value (in first)
  void RemoveAt(const T&);
  // Name: Display
  // Desc: Display all nodes in linked list
  // Preconditions: Outputs the LL
  // Postconditions: Displays the pair in each node of LL
  void Display();
  // Name: GetSize
  // Desc: Returns the size of the LL
  // Preconditions: Requires a LL
  // Postconditions: Returns m_size
  int GetSize();
  // Name: operator<< (Overloaded << operator)
  // Desc: Returns the ostream of the data in each node
  // Preconditions: Requires a LL
  // Postconditions: Returns an ostream with the data from each node on different line
  template <class U>
  friend ostream& operator<<(ostream& output, const LL<U>&);
  // Name: Overloaded [] operator
  // Desc: When passed an integer, returns the data at that location
  // Precondition: Existing LL
  // Postcondition: Returns pair from LL using []
  pair<T,int>& operator[] (int x);//Overloaded [] operator to pull data from LL
private:
  Node <T> *m_head; //Node pointer for the head
  int m_size; //Number of nodes in queue
};


// LL constructor initializes the size to 0 and head to nullptr
template <class T>
LL<T>::LL(){
    m_size = 0;
    m_head = nullptr;
}


// LL destructor deletes all Nodes in the linked list
template <class T>
LL<T>::~LL(){
    Node<T> *temp = m_head;

    // Loops until all Nodes are deleted
    while(temp != nullptr){
        m_head = temp;
        temp = temp->GetNext();
        delete m_head;
    }

    // Reinitializes the head and size to default values
    m_head = nullptr;
    m_size = 0;
}


// LL copy constructor creates a new linked list with the exact size and
// Nodes of another linked list.
template <class T>
LL<T>::LL(const LL& source){
    m_size = source.m_size; // Size of new linked list
    if(m_size == 0)
        m_head = nullptr;

    else{

        // Initializes the new linked list head to a Node with the same data
        // as the head of the already built linked list.
        Node<T> *sourceLL = source.m_head;
        m_head = new Node<T>(sourceLL->GetData().first);
        m_head->SetData(sourceLL->GetData());
        Node<T> *newLL = m_head;

        // Loops and initializes the new linked list's Nodes to every Node's
        // data from the already built linked list.
        while(sourceLL->GetNext() != nullptr){
            sourceLL = sourceLL->GetNext();
            Node<T> *newNode = new Node<T>(sourceLL->GetData().first);
            newNode->SetData(sourceLL->GetData());
            newLL->SetNext(newNode);
            newLL = newLL->GetNext();
        }

        // Sets the linked list tail to point to nullptr
        newLL->SetNext(nullptr);
    }
}


// LL assignment operator sets takes two already made linked lists and
// copies every Node from one linked list to the other.
template <class T>
LL<T>& LL<T>::operator= (const LL& source){

    // Makes sure the same linked list isn't being assigned to itself
    if(this != &source){
        this->LL<T>::~LL(); // Deletes Nodes from linked list being assigned to
        m_size = source.m_size; // New size of the linked list
        if(m_size == 0)
            m_head = nullptr;

        else{

            // Initializes the new linked list head to a Node with the same data
            // as the head of the already built linked list.
            Node<T> *sourceLL = source.m_head;
            m_head = new Node<T>(sourceLL->GetData().first);
            m_head->SetData(sourceLL->GetData());
            Node<T> *newLL = m_head;

            // Loops and initializes the new linked list's Nodes to every Node's
            // data from the already built linked list.
            while(sourceLL->GetNext() != nullptr){
                sourceLL = sourceLL->GetNext();
                Node<T> *newNode = new Node<T>(sourceLL->GetData().first);
                newNode->SetData(sourceLL->GetData());
                newLL->SetNext(newNode);
                newLL = newLL->GetNext();
            }

            // Sets the linked list tail to point to nullptr
            newLL->SetNext(nullptr);

        }
    }

    // Returns the new copied linked list
    return *this;
}


// Takes in a pair key and checks to see if it exists in the linked list
template <class T>
Node<T>* LL<T>::Find(const T& data){
    Node<T> *temp = m_head; // Temporary pointer for iterating

    // Loops until the data is found or the end of the linked list was reached
    while(temp != nullptr){
        if(temp->GetData().first == data)
            return temp;
        temp = temp->GetNext();
    }

    return nullptr;
}


// Takes in a pair key and either inserts it into the linked list in order
// or increments it's frequency by 1 if it already exists.
template <class T>
void LL<T>::Insert(const T& data){
    Node<T> *newNode = Find(data); // Checks if the key exists

    // If the data exists increment it's frequency
    if(newNode != nullptr)
        newNode->GetData().second++;

    else{
        newNode = new Node<T>(data); // Dynamically allocates for a new Node

        // If the linked list is empty
        if(m_size == 0){
            m_head = newNode;
            m_head->SetNext(nullptr);
        }

        // If the linked list isn't empty
        else{
            Node<T> *curr = m_head; // Pointer for current position in linked list
            Node<T> *prev = m_head; // Pointer for previous position in linked list

            // If the passed data is less than the current head
            if(data < m_head->GetData().first){
                m_head = newNode;
                m_head->SetNext(curr);
            }

            else{

                // Loops through entire linked list to see where the data belongs
                // in chronological order.
                while(curr != nullptr){
                    if(data > prev->GetData().first && data < curr->GetData().first){
                        prev->SetNext(newNode);
                        newNode->SetNext(curr);
                    }

                    prev = curr; // Keeps track of the Node less than the data
                    curr = curr->GetNext(); // Node greater than the data
                }

                // If the passed data is greater than the last Node in the list
                if(data > prev->GetData().first){
                    prev->SetNext(newNode);
                    newNode->SetNext(nullptr);
                }
            }
        }

        // Increment the size of the linked list
        m_size++;
    }
}


// Given a pair key it removes the node with that key from the linked list
template <class T>
void LL<T>::RemoveAt(const T& data){
    Node<T> *curr = m_head; // Current Node pointer iterator
    Node<T> *prev = m_head; // Previous Node pointer iterator

    // Loops until the data key or the end of the linked list is reached
    while(curr != nullptr && curr->GetData().first != data){
        prev = curr;
        curr = curr->GetNext();
    }

    // If the data passed is in the linked list
    if(curr != nullptr && curr->GetData().first == data){

        // If the data passed is the head of the linked list
        if(curr == m_head){
            m_head = curr->GetNext();
            delete curr;
        }

        // If the data passed isn't the head
        else{
            prev->SetNext(curr->GetNext());
            delete curr;
        }

        // Decrements the linked list size
        m_size--;
    }
}


// Displays all data and it's frequency from the linked list's Nodes
template <class T>
void LL<T>::Display(){
    Node<T> *temp = m_head; // Temporary linked list iterator

    // Loops through entire linked list and prints every Node's data
    while(temp != nullptr){
        cout << temp->GetData().first << ":" << temp->GetData().second << endl;
        temp = temp->GetNext();
    }
}


// Returns the size of the linked list
template <class T>
int LL<T>::GetSize(){
    return m_size;
}


// Overloaded << operator returns the output of the called linked list's
// Node's data.
template <class U>
ostream& operator<<(ostream& output, const LL<U>& linkedList){
    Node<U> *temp = linkedList.m_head; // Start at the passed linkedList head

    // Loops until the end of the linked list and inserts into the output stream
    while(temp != nullptr){
        output << temp->GetData().first << ":" << temp->GetData().second << endl;
        temp = temp->GetNext();
    }

    // Returns the output stream
    return output;
}


// Overloaded [] operator allows an index to be passed and will return the
// data at that index in the linked list.
template <class T>
pair<T,int>& LL<T>::operator[] (int index){
    Node<T> *temp = m_head; // Start pointer at head of linked list
    int count = 0; // Counter starts at 0

    // Loops until the index or the end of the linked list is reached
    while(count < index && temp->GetNext() != nullptr ){
        temp = temp->GetNext();
        count++;
    }

    // Returns Node data at the specified index. If the index is out of bounds
    // the last Node of the linked list is returned instead.
    return temp->GetData();
}


/*
int main () {
  //Test 1 - Default Constructor and Push
  cout << "Test 1 - Default Constructor and Push Running" << endl;
  //Test Default Constructor
  LL <int>* newLL1 = new LL<int>();
  //Push 4 nodes into LL
  newLL1->Insert(4);
  newLL1->Insert(33);
  newLL1->Insert(33);
  newLL1->Insert(1);
  newLL1->Insert(23);
  newLL1->Insert(1);
  newLL1->Insert(-1);
  newLL1->Insert(22);
  newLL1->Display();

  //  delete newLL1;

  //Test 2 - Copy Constructor and Assignment Operator
  cout << "Test 2 - Copy Constructor and Assignment Operator Running" << endl;
  //Test Copy constructor
  LL <int>* newLL2 = new LL<int>(*newLL1);
  cout << "*******Original*********" << endl;
  newLL1->Display();
  cout << "##" << (*newLL1)[43].first << "##\n";
  cout << "*******Copy*********" << endl;
  newLL2->Display();
  cout << "##" << (*newLL2)[4].first << "##\n";

  //Test Overloaded Assignment Operator
  LL <int>* newLL3 = new LL<int>();
  *newLL3 = *newLL1;
  cout << "*******Assignment*********" << endl;
  newLL3->Display();
  cout << "##" << (*newLL3)[4].first << "##\n";
  cout << endl;

  //Test 3 - Test Display and Overloaded <<
  cout << "Test 3 - Display and Overloaded << Running" << endl;
  cout << "newLL1 Display Function" << endl;
  newLL1->Display();
  cout << "newLL1 Overloaded" << endl;
  cout << *newLL1;
  cout << "RemoveAt(candy)" << endl;
  newLL1->RemoveAt(-1);
  cout << "newLL1 Display Function" << endl;
  newLL1->Display();

  cout << "##" << (*newLL1)[22].first << "##";
  delete newLL1;
  delete newLL2;
  delete newLL3;

  return 0;
}
*/
