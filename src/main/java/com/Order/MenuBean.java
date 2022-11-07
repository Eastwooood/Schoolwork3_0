package com.Order;

import java.util.ArrayList;
import java.util.Collections;

public class MenuBean {
    String time;
    String totalPrice;
    ArrayList<Food> foodList;
    public MenuBean(){
        foodList=new ArrayList<Food>();
    }
    public void addFood(Food food)
    {
        foodList.add(food);
        Collections.sort(foodList);
    }
    public void removeFood(int index)
    {
        if(index>=0)
        {
            foodList.remove(index);
            Collections.sort(foodList);
        }
    }
    public int size()
    {
        return foodList.size();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    public String getFoodName(int index)
    {
        return foodList.get(index).getFoodName();
    }
    public double getPrice(int index)
    {
        return foodList.get(index).getPrice();
    }
    public String getTotalPrice() {
        double sum=0;
        for(Food food:foodList)
        {
            sum+=food.getPrice();
        }
        totalPrice=String.format("%.2f",sum);
        return totalPrice;
    }
}
