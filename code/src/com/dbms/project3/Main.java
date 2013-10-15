package com.dbms.project3;
import java.sql.*;
import java.util.Scanner;
public class Main {
    private static Scanner S = new Scanner(System.in);
    private static Connection dbConnection;
    private static Statement stmt;
    //db connection

    public static void initdb()
    {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
        }
            catch(Exception e){
                System.out.println("Unable to load the driver class!");
                e.printStackTrace();
        }

        try{
            dbConnection = DriverManager.getConnection("jdbc:oracle:thin:@stu-oracle.cs.ou.edu:1521:cs4513db","comb7371","NBnx5Cd3");
            stmt = dbConnection.createStatement();
        }
        catch( SQLException e ){
            System.out.println("Couldn’t get connection!");
            e.printStackTrace();
        }

    }
    public static void main(String[] args) {
        initdb();
        while (true)
        {

            String in = getInput("Please choose an option 1-4");

            int input = -1;
            try {
                input = Integer.parseInt(in.trim());
            }
            catch (Exception e){}

            switch (input){
                case 1:
                    optionOne();
                    break;
                case 2:
                    optionTwo();
                    break;
                case 3:
                    optionThree();
                    break;
                case 4:
                    System.exit(0);
                    break;
                default:
                    System.out.println("Sorry Unrecognized input");
                    break;
            }
        }
    }

    public static void optionOne()
    {
        //fid, fname, deptid

        String fid = getInput("Please enter the fid:");
        String fname = getInput("Please enter the fname");
        String deptid = getInput("Please enter the deptid");

    }

    public static void optionTwo()
    {
        String fid = getInput("Please enter the fid:");
        String fname = getInput("Please enter the fname");
        String deptid = getInput("Please enter the deptid");
    }

    public static void optionThree()
    {
         System.out.println("This is all the data");
    }

    public static String getInput(String prompt)
    {
        System.out.println(prompt);
        return S.nextLine();
    }
}
