interface Function {
   public int f(int x, int y);
}

public class Functions {

   public static void evaluate(Function fobj, int x, int y) {
      System.out.println(fobj.f(x,y));
   }

   public static void main(String[] args) {

      // anonymous inner class
      Function add = new Function() {
         public int f(int x, int y) {
            return x + y;
         }};

      evaluate(add, 5, 3);

      // Java 8 lambda expression
      Function multiply = (x,y) -> x * y;

      evaluate(multiply, 5, 3);
   }
}
