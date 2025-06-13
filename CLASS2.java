import java.util.Scanner;
// class Main {
//     public static void main(String[] args) {
    //     String str="java,python,script";
    //     String[] language=str.split(",");
    //      for (int i = language.length - 1; i >= 0; i--) {
    //         System.out.println(language[i]);
        
    // }
    
    
    // Scanner s1= new Scanner(System.in);
    // System.out.println("Enter a name:");
    // String name=s1.nextLine();
    // System.out.println(name);
    // String[] language= str.split(",");
    // for (String str:language)
    // {
    //     System.out.println(s1);
    // }
    import java.util.Scanner;

class Main {
    public static void main(String[] args) {

        Scanner s1 = new Scanner(System.in);
        System.out.println("Enter a name:");
        String name = s1.nextLine();
        System.out.println("Full input: " + name);

        String[] language = name.split(",");
        for (String str : language) {
            System.out.println(str);  
        }
    }
}
