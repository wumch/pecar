package com.wumch.pecar;


public class Interact {

    static {
        System.loadLibrary("Interact");
    }

    public static native void start();

    public static native void stop();

    public static native int setConfig();

    public static String getRes()
    {
        int a = setConfig();
        Integer i = a;
        return "---" + i.toString() + "---";
    }

}
