import 'course.dart';

final List<Course> courses = [
  Course(
    title: "Java Basics",
    description: "Introduction to Java and fundamental programming concepts.",
    modules: [
      Module(
        title: "Introduction to Java",
        content: """
        Overview of Java programming language, history, features, and setting up JDK.
        """,
        codeExample: """
        // This is a simple Java program
        public class HelloWorld {
            public static void main(String[] args) {
                System.out.println("Hello, World!");
            }
        }
        """,
      ),
      Module(
        title: "Variables and Data Types",
        content: """
        Understanding variables, data types, declaration, and initialization.
        """,
        codeExample: """
        public class VariablesExample {
            public static void main(String[] args) {
                int age = 25; // Integer variable
                double salary = 55000.50; // Double variable
                char grade = 'A'; // Character variable
                String name = "John"; // String variable

                System.out.println("Name: " + name);
                System.out.println("Age: " + age);
                System.out.println("Salary: " + salary);
                System.out.println("Grade: " + grade);
            }
        }
        """,
      ),
      Module(
        title: "Control Statements",
        content: """
        Introduction to control statements like if-else, switch-case, loops (for, while).
        """,
        codeExample: """
        public class ControlStatementsExample {
            public static void main(String[] args) {
                int number = 10;

                // If-Else Statement
                if (number > 0) {
                    System.out.println("Positive Number");
                } else {
                    System.out.println("Negative Number");
                }

                // For Loop
                for (int i = 0; i < 5; i++) {
                    System.out.println("Iteration: " + i);
                }
            }
        }
        """,
      ),
    ],
  ),
  Course(
    title: "Java Object-Oriented Programming (OOP)",
    description: "Understanding classes, objects, and OOP principles.",
    modules: [
      Module(
        title: "Classes and Objects",
        content: """
        Understanding classes and objects, creating classes, instantiating objects.
        """,
        codeExample: """
        class Car {
            String color;
            String model;

            Car(String color, String model) {
                this.color = color;
                this.model = model;
            }

            void displayInfo() {
                System.out.println("Car model: " + model + ", Color: " + color);
            }
        }

        public class CarExample {
            public static void main(String[] args) {
                Car myCar = new Car("Red", "Toyota");
                myCar.displayInfo();
            }
        }
        """,
      ),
      Module(
        title: "Inheritance",
        content: """
        Learn about inheritance, superclass, subclass, and method overriding.
        """,
        codeExample: """
        class Animal {
            void sound() {
                System.out.println("Animal makes sound");
            }
        }

        class Dog extends Animal {
            void sound() {
                System.out.println("Dog barks");
            }
        }

        public class InheritanceExample {
            public static void main(String[] args) {
                Animal myDog = new Dog();
                myDog.sound(); // Calls Dog's sound method
            }
        }
        """,
      ),
      Module(
        title: "Polymorphism",
        content: """
        Understanding method overloading and overriding as forms of polymorphism.
        """,
        codeExample: """
        class MathOperation {
            int add(int a, int b) {
                return a + b;
            }

            double add(double a, double b) {
                return a + b;
            }
        }

        public class PolymorphismExample {
            public static void main(String[] args) {
                MathOperation math = new MathOperation();
                System.out.println(math.add(5, 10)); // Calls int method
                System.out.println(math.add(5.5, 10.5)); // Calls double method
            }
        }
        """,
      ),
    ],
  ),
  Course(
    title: "Java Advanced Concepts",
    description: "Deep dive into advanced Java programming topics.",
    modules: [
      Module(
        title: "Exception Handling",
        content: """
        Learn about exception handling using try, catch, and finally blocks.
        """,
        codeExample: """
        public class ExceptionHandlingExample {
            public static void main(String[] args) {
                try {
                    int result = 10 / 0; // This will cause an exception
                } catch (ArithmeticException e) {
                    System.out.println("Error: " + e.getMessage());
                } finally {
                    System.out.println("This will always execute.");
                }
            }
        }
        """,
      ),
      Module(
        title: "Java Collections Framework",
        content: """
        Introduction to collections, lists, sets, maps, and their usage.
        """,
        codeExample: """
        import java.util.ArrayList;

        public class CollectionsExample {
            public static void main(String[] args) {
                ArrayList<String> fruits = new ArrayList<>();
                fruits.add("Apple");
                fruits.add("Banana");
                fruits.add("Orange");

                for (String fruit : fruits) {
                    System.out.println(fruit);
                }
            }
        }
        """,
      ),
      Module(
        title: "File I/O",
        content: """
        Learn how to read from and write to files in Java.
        """,
        codeExample: """
        import java.io.*;

        public class FileIOExample {
            public static void main(String[] args) {
                try {
                    FileWriter writer = new FileWriter("output.txt");
                    writer.write("Hello, World!");
                    writer.close();

                    BufferedReader reader = new BufferedReader(new FileReader("output.txt"));
                    String line = reader.readLine();
                    System.out.println(line);
                    reader.close();
                } catch (IOException e) {
                    System.out.println("An error occurred.");
                    e.printStackTrace();
                }
            }
        }
        """,
      ),
    ],
  ),
  Course(
    title: "Java Web Development",
    description: "Learn how to create web applications using Java.",
    modules: [
      Module(
        title: "Servlets",
        content: """
        Introduction to servlets, handling HTTP requests and responses.
        """,
        codeExample: """
        import java.io.*;
        import javax.servlet.*;
        import javax.servlet.http.*;

        public class HelloServlet extends HttpServlet {
            protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<h1>Hello, World!</h1>");
            }
        }
        """,
      ),
      Module(
        title: "JavaServer Pages (JSP)",
        content: """
        Introduction to JSP, creating dynamic web pages using Java.
        """,
        codeExample: """
        <%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>
        <head>
            <title>Hello JSP</title>
        </head>
        <body>
            <h1>Hello, JSP!</h1>
            <% String name = "World"; %>
            <p>Hello, <%= name %>!</p>
        </body>
        </html>
        """,
      ),
      Module(
        title: "Spring Framework Basics",
        content: """
        Introduction to Spring Framework and building a simple REST API.
        """,
        codeExample: """
        import org.springframework.boot.SpringApplication;
        import org.springframework.boot.autoconfigure.SpringBootApplication;
        import org.springframework.web.bind.annotation.GetMapping;
        import org.springframework.web.bind.annotation.RestController;

        @SpringBootApplication
        public class DemoApplication {
            public static void main(String[] args) {
                SpringApplication.run(DemoApplication.class, args);
            }
        }

        @RestController
        class HelloController {
            @GetMapping("/hello")
            public String hello() {
                return "Hello, World!";
            }
        }
        """,
      ),
    ],
  ),
];
