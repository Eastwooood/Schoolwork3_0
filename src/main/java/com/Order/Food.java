package com.Order;

public class Food implements Comparable<Food>{
    String foodName;
    double price;

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public int compareTo(Food o) {
        return (int)(o.getPrice()*1000-price*1000);
    }
}
