package Model;

public class Main {

    public static void main(String[] args) {
        Environment environment = Environment.getInstance();
        environment.createEnvironment(10, 10);
        environment.printMatrix();
        Robot robot = Robot.getIntance();

        robot.update(environment, 3, 2);
        robot.start();
        System.out.println("Matrix final!");
        environment.printMatrix();
    }

}
