package com.MessageBoard;

import com.Order.Food;

import java.util.ArrayList;
import java.util.Collections;

public class MessageBean {
    ArrayList<Message> messagesList;

    public MessageBean() {
        messagesList = new ArrayList<Message>();
    }
    public void addMessage(Message message)
    {
        messagesList.add(message);
    }
    public void removeMessage(int index)
    {
        if(index>=0)
        {
            messagesList.remove(index);
        }
    }
    public int size()
    {
        return messagesList.size();
    }


    public String getMessageTitle(int index)
    {
        return messagesList.get(index).getTitle();
    }
    public String getMessageTalk(int index)
    {
        return messagesList.get(index).getTalk();
    }
    public String getMessageName(int index){
        return messagesList.get(index).getName();
    }

}
