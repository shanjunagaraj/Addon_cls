public class main 
{
    public static void main(String[] args) {
        int age = 26;
        String gender ="female";
        if(age>=23 && gender=="male")
        {
            System.out.println("Eligible for female");
        }
        else if(age>=21 && gender=="female")
        {
            System.out.println("Eligible for male");
     
       }
       else
       {
           System.out.println("not eligible");
       }
    }
    
    
 }

OR STATEMENT

public class main 
{
    public static void main(String[] args) {
        int age = 16;
        String gender ="male";
        if(age<18 || gender=="female")
        {
            System.out.println("Ticket is freee");
        }
        
       else
       {
           System.out.println("it is not free");
       }
    }
    
    
 }

SWITCH CASE

int km =200;
 switch(km){
     case 5: {
         System.out.println("Rupees 50");
     break;
     }
     case 10:{
         System.out.println("rupees 100");
         break;
     }
     default:{
         System.out.println("not applicable");
     }
     }
     }
}

WHILE 

 int i=5;
    //  while(i<10)
    //  {
         
    //      System.out.println(i);
    //     i++;


class & object


import java.util.Scanner;
class personaldata{
     string name ="madhu";
     
}
class Acedamidata{
    int rollno =12;
}
class Main {
    public static void main(String[] args) {
        int a= 10;
                    personaldata per = new personaldata ();
                    system.out.pritnln(per.name);
    }
}

array

class Main {
    public static void main(String[] args) {
        int arr[] ={1,2,3,4,5};
        for(int i=0;i<=arr.length;i++){
            System.out.println(i);
        }
        
       
    }
}

sum of array

class Main {
    public static void main(String[] args) {
        int [] numbers ={1,2,3,4,5};
        int sum =0;
        for(int num:numbers){
            sum=sum+num;
        }
        System.out.println("sum of array:"+sum);
                    
    }
}

array
import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner (system.in);
        System.out.println("enter the size of the array:");
        int n = in.nextInt();
        int[] arr = new int[n];
        for (int i=0;i<n;i++){
            System.out.println("enter the value");
            arr[i]=in.nextInt()
        }
             
    }
}




import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        int row = sc.nextInt();

        System.out.print("Enter number of columns: ");
        int col = sc.nextInt();

        int arr[][] = new int[row][col];

        System.out.println("Enter the elements of the array:");
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                arr[i][j] = sc.nextInt();
            }
        }

        System.out.println("The array is:");
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                System.out.print(arr[i][j] + " ");
            }
            System.out.println();
        }
       
    }
}
class Main {
    public static void main(String[] args) {
        String str = new String("programmimg");
        String str1 = "";
        for(int i=0;i<str.length();i++)
        {
            if(str.charAt(i)!='m')
            {
                str1+=str.charAt(i);
        
            }
        }
        System.out.println(str1);
        
    
    }  
    
split

class Main {
    public static void main(String[] args) {
       String str ="I Love Zoho";
       String str1[] =str.split(" ");
       System.out.println(str1[2]);
    }
}
