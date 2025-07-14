package com.example;

public class App {
    public static void main(String[] args) {
        String s = null;
        if (s != null) {
            System.out.println("Length: " + s.length());
        } else {
            System.out.println("s is null");
        }
    }
}

