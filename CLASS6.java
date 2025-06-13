LINKEDLIST:

package Collections.List;

import java.util.LinkedList;

public class LinkedListClass {

		public static void main(String[] args) {
			
			LinkedList<Integer> llist = new LinkedList<>();
			llist.add(0,20);
			llist.add(1,30);
			llist.add(2,40);
			llist.add(3,50);
			System.out.print(llist.remove(1));
			System.out.print(llist);
			
		}
}


VECTOR:

package Collections.List;

import java.util.Vector;

public class VectorClass {
		 
		public static void main(String[] args) {
			Vector<Integer> vlist = new Vector<>();
			vlist.add(0,20);
			vlist.add(1,30);
			vlist.add(2,40);
			vlist.add(3,50);
			System.out.print(vlist.remove(1));
			System.out.print(vlist.contains(20));
			System.out.print(vlist);
			
		}
}

ARRAYLIST:

package Collections;

import java.util.ArrayList;

public class ArrayListClass {

	public static void main(String[]args) {

		int[] arr = new int[5];
		arr[0] = 10;
		ArrayList<Integer> alist = new ArrayList<>(100);
		alist.add(10);
		alist.add(20);
		alist.add(30);
		alist.add(2,40);
		alist.set(3, 50);
		alist.remove(1);
		System.out.println(alist.reversed());

		System.out.println(alist.contains(10));

		System.out.println(alist.size());

		System.out.println(alist);

	}
