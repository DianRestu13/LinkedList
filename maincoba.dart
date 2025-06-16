import 'coba_doubleLinked.dart';

void main() {
  DoubleLinkedList Dlist = DoubleLinkedList();

  Dlist.InsertFront(20);
  Dlist.InsertFront(12);
  Dlist.PrintList(Dlist.head);

  Dlist.InsertBack(40);
  Dlist.PrintList(Dlist.head);

 // Dlist.InsertAfter(Dlist.head!.next!, 45);
 // Dlist.PrintList(Dlist.head);

  Dlist.deleteEnd();
  Dlist.PrintList(Dlist.head);

  Dlist.deleteFront();
  Dlist.PrintList(Dlist.head);

  Dlist.deleteMiddle(12);
  Dlist.PrintList(Dlist.head);
}