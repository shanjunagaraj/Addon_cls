FILE HANDLING AND EXCEPTION HANDLING:

package ExceptionHandling;
public class ThrowThrows {

	 static void invalidAge () throws AgeInvalid {

		throw new AgeInvalid("Not Eligible ");

	 }

		public static void main(String[] args)throws AgeInvalid {

			var age =10;

			if(age<18) {

			 invalidAge();	
		}

			else {

				System.out.println("Allowed");

			}
		}
	}      

package ExceptionHandling;

public class AgeInvalid extends Exception {
	  AgeInvalid(String msg){
		  super(msg); 
	   }
}


//**********************************************************************************    

package ExceptionHandling;

import java.util.Arrays;

public class TryCatchClass {
	public static void main(String[] args) {
		int[] arr =new int[5];
		System.out.println(Arrays.toString(arr));
		try {
		  
		  arr[10] = 12;
		  int div = 10/0;
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println( e);
		}catch(ArithmeticException e) {
			System.out.println("Infinite");
		}finally {
			System.out.println("Try program completed");
		}
		System.out.println(Arrays.toString(arr));
}
}      


COLLECTIONS:
package Collections;

import java.util.ArrayList;

public class ArrayListClass {
	
	public static void main(String[] args) {
		int[] arr =new int[5];
		arr[0] = 10;
		ArrayList<Integer> alist = new ArrayList<>();//constructor
		alist.add(20);
		alist.add(30);
		alist.add(40);
		alist.add(3,50);
		alist.add(2,60);
		alist.remove(3);
//		System.out.println(alist);
		System.out.println(alist.reversed());
		System.out.println(alist.contains(30));
		System.out.println(alist.size());
		System.out.println(alist);
		
	}
}
                                                                                                                             
