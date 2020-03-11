package com.nt.newtr;

import java.util.ArrayList;
import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
public class Iterator {

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
	        Iterator<String> itr = myList.iterator();
	        while(itr.hasNext()){
	            if(removeElem.equals(itr.next())){
	                itr.remove();
	            }
	        }
	        System.out.println("After remove:");
	        System.out.println(myList);
	}

}
