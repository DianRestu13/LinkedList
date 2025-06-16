class Node {
  int nodeValue;
  Node? next;
  Node(this.nodeValue) : next = null;
}

class SingleLinkedList {
  /* Single Linked List */
  Node? head = null;
  bool isEmpty() {
    return head == null;
  }

  void InsertFront(int data) {
    Node newNode = Node(data);
    if (isEmpty()) {
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
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }

  void InsertAfter(Node prevNode, int newData) {
    if (prevNode == isEmpty()) {
      print("The given previous node cannot be null");
    }
    Node newNode = Node(newData);
    newNode.next = prevNode.next;
    prevNode.next = newNode;
  }

  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        head = head!.next;
      } else {
        head = null;
      }
    }
  }

  void deleteEnd() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Node? bantu = head;
        while (bantu!.next!.next != null) {
          bantu = bantu.next;
        }
        bantu.next = null;
      } else {
        head = null;
      }
    }
  }

  void DeleteAtPosition(int position) {
    if (position < 1) {
      return; // ini memeriksa apakah posisi valid (minimal 1). Jika tidak valid, fungsi akan langsung berhenti.
    }
    Node? current = head; //inisialisasi pointer current, disini menunjuk ke head (awal dari linked list)
    int index = 1; //posisi 1 adalah node pertama

    while (current != null && index < position - 1) {
      //kondisi berhenti current == null (akhir list)
      current = current.next; //memindahkan ke node berikutnya
      index++; //increment index
    }
    // melakukan pengecekan kembali, jika current tidak null maka belum mencapai akhir list dan jika posisi berikutnya ada berarti posisi target valid
    if (current != null && current.next != null) {
      Node? nodeToDelete = current.next; //simpan kenode yang akan di hapus
      current.next = nodeToDelete!.next; //lewati node yang akan di hapus dan langsung menunjuk ke node stelah node yang dihapus
      nodeToDelete.next = null; //menghapus node yang dihapus dari linked list
    } else {
      //jika position tidak valid tampilkan pesan “tidak ada”
      print("tidak ada");
    }
  }

  void PrintList() {
    if (!isEmpty()) {
      Node? now = head;
      while (now != null) {
        print('${now.nodeValue} ');
        now = now.next;
      }
    } else {
      print('Linked List dalam kondisi kosong');
    }
  }
}

void main() {
  SingleLinkedList ll = SingleLinkedList();
  print("Data:");
  ll.InsertFront(10);
  ll.InsertFront(30);
  print("Operasi Insertion Front of Linked List:");

  ll.PrintList();
  ll.InsertBack(5);
  print("Operasi Insertion Back of Linked List:");

  // ll.PrintList();
  print("Insert After Data: ");
  ll.InsertAfter(ll.head!.next!.next!, 20);
  ll.PrintList();
  print("Delete data:");

  // ll.deleteFront();
  // ll.deleteEnd();
  ll.DeleteAtPosition(2);
  ll.PrintList();
}
