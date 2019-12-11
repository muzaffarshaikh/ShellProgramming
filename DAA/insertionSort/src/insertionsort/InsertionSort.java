/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package insertionsort;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author MScIT19
 */
public class InsertionSort {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int fNo,sNo,i,j,n;
        
        Scanner s=new Scanner(System.in);
        System.out.println("Enter number of numbers:");
        n=s.nextInt();
        int[] values = new int[n];
        System.out.println("Enter numbers:");
        for(i=0;i<n;i++)
        {
            values[i]=s.nextInt();
        }
        
        for (i=1;i<values.length;i++) 
        {
            int valueToSort=values[i];
            j=i;
		while (j>0&&values[j-1]>valueToSort) 
                {
                    values[j]=values[j-1];
                    j--;
		}
		values[j]=valueToSort;
		}
        System.out.println(Arrays.toString(values));
    }
   
    
}
