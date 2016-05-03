package Model;

import Commit.EmptyEvm;
import Commit.IEvm;
import Commit.IRobot;
import java.awt.Point;
import java.util.ArrayList;
import java.util.Random;


public class Robot implements IRobot{
    private IEvm iEvm;
    private static Robot unique;
    private Environment environment;
    private int i, j;
    public int radius, count;

    private Robot() {
    }

    public static Robot getIntance() {
        if (unique == null) {
            unique = new Robot();
        }
        return unique;
    }

    public void update(Environment newEnvironment, int valueI, int valueJ) {
        environment = newEnvironment;
        i = valueI;
        j = valueJ;
    }

    public void start() {
        //--Comit giao dien neu co the
        if(iEvm == null){
            iEvm = new EmptyEvm();
        }
        //---
        System.out.println("VI TRI BAT DAU CUA ROBOT: " + i + ", " + j);
        count = environment.getCountDust(); // số rác trong môi trường
        System.out.println("SO RAC: " + environment.getCountDust());

        // THỰC HIỆN KIỂM TRA SỐ RÁC CÒN LẠI TRONG MÔI TRƯỜNG
        if (environment.getMatrix()[i][j] == 1) {
            count--;
            suck();
            System.out.println("RÁC CHƯA HÚT XONG: " + count);
        }

        Point point = null;
        while (count != 0) {
            point = searchDust(); 
            go(point.x, point.y); 
            count--;
            suck(); 
            System.out.println("SO RAC CON LAI: " + count);
        }
        commitDone();
    }

    private Point searchDust() {
        ArrayList<Point> list = new ArrayList<Point>(); 

        
        while (true) {
            radius++;
            commitRadar();
            for (int d = 0; d <= radius; d++) {
                if (condition(i + d, j - radius) && environment.getMatrix()[i + d][j - radius] == 1) {
                    list.add(new Point(d, -radius));
                }
                if (condition(i - d, j + radius) && environment.getMatrix()[i - d][j + radius] == 1) {
                    list.add(new Point(-d, radius));
                }
                if (condition(i - radius, j - d) && environment.getMatrix()[i - radius][j - d] == 1) {
                    list.add(new Point(-radius, -d));
                }
                if (condition(i + radius, j + d) && environment.getMatrix()[i + radius][j + d] == 1) {
                    list.add(new Point(radius, d));
                }
                if (d != 0 || d != radius) {
                    if (condition(i - d, j - radius) && environment.getMatrix()[i - d][j - radius] == 1) {
                        list.add(new Point(-d, -radius));
                    }
                    if (condition(i + d, j + radius) && environment.getMatrix()[i + d][j + radius] == 1) {
                        list.add(new Point(d, radius));
                    }
                    if (condition(i - radius, j + d) && environment.getMatrix()[i - radius][j + d] == 1) {
                        list.add(new Point(-radius, d));
                    }
                    if (condition(i + radius, j - d) && environment.getMatrix()[i + radius][j - d] == 1) {
                        list.add(new Point(radius, -d));
                    }
                }
                
                if (!list.isEmpty()) {
                    Random random = new Random();
                    return list.get(random.nextInt(list.size()));
                }
            }
        }
    }

    private void go(int row, int column) {
        if (row != 0 && column != 0) {
            goRow(row);
            goColumn(column);
            return;
        }

        if (row == 0) {
            goColumn(column);
            return;
        }

        if (column == 0) {
            goRow(row);
            return;
        }
    }

    private void goColumn(int column) {
        if (column > 0) {
            while (column-- != 0) {
                right();
            }
        } else {
            while (column++ != 0) {
                left();
            }
        }
    }

    private void goRow(int row) {
        if (row > 0) {
            while (row-- != 0) {
                down();
            }
        } else {
            if (row < 0) {
                while (row++ != 0) {
                    up();
                }
            }
        }
    }

    private boolean condition(int tempX, int tempY){
        if(0 <= tempX && tempX < environment.getRow() &&
                0 <= tempY && tempY < environment.getColumn()){
            return true;
        }else{
            return false;
        }
    }

    private void up() {
        i = i - 1;
        System.out.println("DI CHUYEN QUA LEN DEN: " + i + ", "+ j);
        commitMoveUp();
        return;
    }

    private void down() {
        i = i + 1;
        System.out.println("DI CHUYEN XUONG DEN: " + i + ", "+ j);
        commitMoveDown();
        return;
    }

    private void left() {
        j = j - 1;
        System.out.println("DI CHUYEN QUA TRAI DEN: " + i + ", "+ j);
        commitMoveLeft();
        return;
    }

    private void right() {
        j = j + 1;
        System.out.println("DI CHUYEN QUA PHAI DEN: " + i + ", "+ j);
        commitMoveRight();
        return;
    }

    private void suck() {
        environment.getMatrix()[i][j] = 0;
        System.out.println("QUET TAI VI TRI: " + i + ", " + j);
        System.out.println("TRANG THAI MA TRAN:");
        environment.printMatrix();
        commitSuck();
        return;
    }

    public void registry(IEvm iEvm) {
        this.iEvm = iEvm;
    }

    public void commitMoveUp() {
        iEvm.updateMoveUp();
    }

    public void commitMoveDown() {
        iEvm.updateMoveDown();
    }

    public void commitMoveLeft() {
       iEvm.updateMoveLeft();
    }

    public void commitMoveRight() {
       iEvm.updateMoveRight();
    }

    public void commitDone() {
         iEvm.updateDone();
    }

    public void commitSuck() {
        iEvm.updateSuck();
    }

    public void commitRadar() {
        iEvm.updateRadar();
    }

    public boolean isReady(){
        if(environment == null)
            return false;
        return true;
    }

    
}
