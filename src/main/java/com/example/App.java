package com.example;

public class App {
    public static void main(String[] args) {
        String s = null;
        System.out.println(s.length()); // ❌ Bug

        int unusedVar = 10; // ⚠️ Code smell
    }
}
