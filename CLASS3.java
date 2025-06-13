class Main {
    public static void main(String[] args) {

      String myname="Shanjitha Nagaraj";
      myname=myname.toUpperCase();
      System.out.println( "My name is:" + myname);
*************************************************************

  StringBuilder name =new StringBuilder();
    name.append("shanjitha");
    System.out.println(name.reverse());
    System.out.println(name);
    
**************************************************************

 String name="Shanjitha";
        System.out.println(name);
        System.out.println(name.charAt(0));
        System.out.println(name.charAt(1));
        System.out.println(name.charAt(2));
        System.out.println(name.charAt(3));
        System.out.println(name.charAt(4));
        System.out.println(name.charAt(5));
        System.out.println(name.charAt(6));
        System.out.println(name.charAt(7));
        System.out.println(name.charAt(8));

**************************************************************

String name="Shanjitha";
        int n =name.length();
         for(int i=0;i<n;i++)
         {
                System.out.println(name.charAt(i));
         }
                System.out.println(name);
                
***********************************************************

 String name="Shanjitha";
        int n =name.length();
        int count=0;
         for(int i=0;i<n;i++)
         {
                System.out.println(name.charAt(i));
                 if(name.charAt(i)=='a'){
                     count++;
                 }
                 if(name.charAt(i)=='e'){
                     count++;
                 }
                  if(name.charAt(i)=='i'){
                     count++;
                  }
                  if(name.charAt(i)=='o'){
                     count++;
                 }
                 if(name.charAt(i)=='u'){
                     count++;
                 }
         }
         System.out.println("THE COUNTS:" +count );

// USING ELSE IF STATEMENT      
          
        // String name="Shanjitha";
        // int n =name.length();
        // int count=0;
        //  for(int i=0;i<n;i++)
        //  {
        //         System.out.println(name.charAt(i));
        //          if(name.charAt(i)=='a'){
        //              count++;
        //          }
        //          else if(name.charAt(i)=='e'){
        //              count++;
        //          }
        //           else if(name.charAt(i)=='i'){
        //              count++;
        //           }
        //          else if(name.charAt(i)=='o'){
        //              count++;
        //          }
        //          else if(name.charAt(i)=='u'){
        //              count++;
        //          }
                 
        //  }
        //  System.out.println("THE COUNTS:" +count );
               

**********************************************************************

  String name="Shanjitha";
        int n =name.length();
        int count1=0;
        int count2=0;
         for(int i=0;i<n;i++)
         {
                System.out.println(name.charAt(i));
                 if(name.charAt(i)=='a'||name.charAt(i)=='e'||name.charAt(i)=='i'||name.charAt(i)=='o' ||name.charAt(i)=='u' ){
                     count1++;
                 }
                  if(name.charAt(i)!='a' && name.charAt(i)!='e'&& name.charAt(i)!='i'&& name.charAt(i)!='o'&& name.charAt(i)!='u' )
                 {
                    count2++;
                 }
         }
         System.out.println("COUNTS:" + count1);
          System.out.println("COUNTS:" + count2);


 // String name = "shanjitha";
        // int n= name.length();
        // int count1= 0;
        // int count2=0;
        // for(int i=0;i<n;i++){
        //     System.out.println(name.charAt(i));
        //     if(name.charAt(i)=='a' || name.charAt(i)=='i' || name.charAt(i)=='e' || name.charAt(i)=='o' || name.charAt(i)=='u'){
        //         count1++;
        //     }
        //   else if(name.charAt(i)>='a'&& name.charAt(i)<='z') {
        //       count2++;
           
               
        //   }
               
        // }
       
        // System.out.println("The counts:" + count1);
        //  System.out.println("The counts:" + count2);




    }
}
