import 'dart:io';

class Node {
  int nodeValue;
  Node? next;

  Node(this.nodeValue);
}

class LinkedList {
  /* Untuk Single Linked List */
  Node? head;

  bool isEmpty() {
    return head == null;
  }



  void InsertFront(int data) {
    Node newNode = Node(data);
    if(isEmpty()) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }



  void InsertBack(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
    } else {
      Node? bantu = head;
      while (bantu!.next != null) {
        bantu = bantu.next;
      }
      bantu.next = newNode;
    }
  }



  //Menyisipkan data ditengah node
  void InsertAfter(Node current, int data) {
    if (current == isEmpty()) {
      print('Node target tidak ditemukan ');
      return;
    }
    Node newNode = Node(data);
    newNode.next = current.next;
    current.next = newNode;
  }



 void deleteAtTargert(int cari) {
    if (!isEmpty()) {
      if (head!.nodeValue == cari) {
        head = head!.next;
        return;
      }
      Node? bantu = head;
      while (bantu !=null && bantu!.next != null) {
        if (bantu.next!.nodeValue == cari) {
          Node? hapus = bantu.next;
          bantu.next = hapus!.next;
          hapus.next = null;
          return;
        }
        bantu = bantu.next;
      }
      print("$cari tidak ada di list");
    } else {
      print("Linked List kosong");
    }
  }


void DeleteAtPosition (int position) {
  if (position < 1) {
    return;
  }
  Node? current = head;
  int index = 1;

  while (current != null && index <position -1) {
    current = current.next;
    index++;
  }
  if (current != null && current.next != null) {
    Node? nodeToDelete = current.next;
    current.next = nodeToDelete!.next;
    nodeToDelete.next = null;
  } else {
    print("tidak ada");
  }
  }



  void PrintList() {
    if(!isEmpty()) {
      Node? current = head;
      stdout.write("Data di Linked List ");
      while (current != null) {
        stdout.write('${current.nodeValue} ');
        current = current.next;
      } 
      print('');
    } else {
        print("Linked List dalam kondisi kosong");
    }
  }
}
