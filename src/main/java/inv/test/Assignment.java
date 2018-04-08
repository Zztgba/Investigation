package inv.test;
//: c03:Assignment.java
// Assignment with objects is a bit tricky.

class Number {

    int i;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Number number = (Number) o;

        return i == number.i;
    }

    @Override
    public int hashCode() {
        return i;
    }
}

public class Assignment {
        public static void main(String[] args) {
            Number n1 = new Number();
            Number n2 = new Number();

            n1.i=1;
            n2.i=1;

            System.out.println(n1);
            System.out.println(n2);
            System.out.println(n1.equals(n2));
            n1.i=n2.i;

            System.out.println(n1.equals(n2));

        }
} ///:~
