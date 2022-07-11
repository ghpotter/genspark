/*
Create a class with the following:
 - 2 methods
  - 1 method stores a value
  - 1 method prints a value
 - Create 5 objects from the class, each with data in each
 - Add objects to a list
 - iterate through objects to print values
 */

import java.io.*;
import java.util.ArrayList;

class MyObject
{
    private int value;

    public void set_value(int a)
    {
        this.value = a;
    }

    public void print_value()
    {
        System.out.println(this.value);
    }
}

public class main
{
    public static void main(String args[])
    {
        MyObject object1 = new MyObject();
        MyObject object2 = new MyObject();
        MyObject object3 = new MyObject();
        MyObject object4 = new MyObject();
        MyObject object5 = new MyObject();

        object1.set_value(1);
        object2.set_value(2);
        object3.set_value(3);
        object4.set_value(4);
        object5.set_value(5);

        ArrayList<MyObject> objects = new ArrayList<MyObject>();
        objects.add(object1);
        objects.add(object2);
        objects.add(object3);
        objects.add(object4);
        objects.add(object5);

        for (int i = 0; i < objects.size(); i++)
        {
            objects.get(i).print_value();
        }
    }
}