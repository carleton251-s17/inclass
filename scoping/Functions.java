interface Function {
   public int f(int x, int y);
}

public class Functions {

   public static void evaluate(Function fobj, int x, int y) {
      System.out.println(fobj.f(x,y));
   }

   public static void main(String[] args) {

      evaluate(add, 5, 3);

   }
}
