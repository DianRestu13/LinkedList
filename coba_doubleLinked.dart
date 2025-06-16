import 'dart:io';

class Node {
  int nodeValue;
  Node? next, prev;

  Node(this.nodeValue);
}

class DoubleLinkedList {
  Node? head, tail;

  bool isEmpty() {
    return head == null;
  }

  void InsertFront(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
      head!.next = null;
      head!.prev = null;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  void InsertBack(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
      head = newNode;
      head!.next = null;
      head!.prev = null;
    } else {
      Node? bantu = head;
      while (bantu!.next != null) {
        bantu = bantu.next;
      }
      bantu.next = newNode;
      newNode.prev = bantu;
    }
  }

  void InsertAfter(Node sekarang, int data) {
    if (sekarang == isEmpty()) {
      print('Node target tidak ditemukan');
      return;
    }
    Node baru = Node(data);
    baru.next = sekarang.next;
    baru.prev = sekarang;

    if (sekarang.next != null) {
      sekarang.next!.prev = baru;
    }
    sekarang.next = baru;
  }

  void PrintList(Node? node) {
    if (!isEmpty()) {
      Node? tail = null;
      stdout.write("Data di Linked list: ");
      while (node != null) {
        stdout.write('${node.nodeValue} ');
        tail = node;
        node = node.next;
      }
      print(" ");
      stdout.write("Reserved Traversal:");
      while (tail != null) {
        stdout.write('${tail.nodeValue} ');
        tail = tail.prev;
      }
      print('');
    } else {}
  }

  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Node? hapus = head;
        head = head!.next;
        head!.prev = null;
        hapus!.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteEnd() {
    Node? bantu;
    if (!isEmpty()) {
      if (head!.next != null) {
        bantu = head;
        while (bantu!.next!.next != null) {
          bantu = bantu.next;
        }
        bantu.next!.prev = null;
        bantu.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteMiddle (int cari) {
    if (!isEmpty()) {
      if (head! .nodeValue == cari) {
        head = head!.next;
        return;
      }
      Node? bantu =head;
      while (bantu != null && bantu.next != null) {
        if (bantu.next!.nodeValue == cari) {
          Node? hapus = bantu.next;
          bantu.next = hapus!.next;
          hapus.next = null;
          return;
        }
        bantu =bantu.next;
      }
      print('$cari tidak ada');
    }else {
      print('Linked list kosong');
    }
  }
}
