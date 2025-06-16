import 'coba.dart';

void main() {
  LinkedList SList = LinkedList();


  SList.InsertFront(20);
  SList.InsertFront(15);
  SList.PrintList();

  SList.InsertBack(10);
  SList.PrintList();

  SList.InsertBack(40);
  SList.PrintList();

  SList.InsertAfter(SList.head!.next!, 25);
  SList.PrintList();

  SList.DeleteAtPosition(20);
  SList.PrintList();
}