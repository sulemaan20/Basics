package com.nt.newtr;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
public class ListItrator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

        String removeElem = "Perl";
		List<String> myList = new ArrayList<String>();
	        myList.add("Java");
	        myList.add("Unix");
	        myList.add("Oracle");
	        myList.add("C++");
	        myList.add("Perl");
	        System.out.println("Before remove:");
	        System.out.println(myList);
	       
	  
	       ListIterator<String> ls=myList.listIterator();
	       while(ls.hasNext()) {
	       String x=ls.next();
	       if(x.equals("C++"))
	       ls.remove();
	       else if(x.equals("Java")) {
	    	   ls.set("khan");
	       }
	       else if(x.equals("Perl")) {
	    	   ls.add("Spring");
	       }

	       }
	       System.out.println(myList);
	       
	}
	
}
