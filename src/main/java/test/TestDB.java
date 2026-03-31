package test;

import dao.DBConnection;

public class TestDB {
    public static void main(String[] args) {
        DBConnection.getConnection();
    }
}