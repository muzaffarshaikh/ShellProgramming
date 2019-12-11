/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gcdfact;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author MScIT19
 */
public class GcdFact {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int fNo,sNo,i,j=0,GCD=1;
        ArrayList<Integer> divisors1 = new ArrayList<Integer>(); 
        ArrayList<Integer> divisors2 = new ArrayList<Integer>(); 
//        int[] div1 = new int[100];
//        int[] div2 = new int[100];
        Scanner s=new Scanner(System.in);
        System.out.println("Enter first number:");
        fNo=s.nextInt();
        System.out.println("Enter second number:");
        sNo=s.nextInt();
        System.out.println(fNo+" "+sNo);
        
//        for(i=1;i<=fNo;i++) 
//        {
//          if (fNo%i==0) {
//              divisors1.add(i);
//          }
//        }
//        
//       
//        for(i=1;i<=sNo;i++) 
//        {
//         if (sNo%i==0) {
//              divisors2.add(i);            
//          }
//        }
//        
        for(i = 2; i<fNo; i++) {
         while(fNo%i == 0) {
            divisors1.add(i);
            fNo = fNo/i;
         }
      }
        if(fNo>2) {
        divisors1.add(fNo);
      }
        
        for(i = 2; i<sNo; i++) {
         while(sNo%i == 0) {
            divisors2.add(i);
            sNo = sNo/i;
         }
      }
        if(sNo>2) {
        divisors2.add(sNo);
      }
        
  
        System.out.println(Arrays.toString(divisors1.toArray()));
        System.out.println(Arrays.toString(divisors2.toArray()));
       
    
        for(i=0;i<divisors1.size();i++){
            for(j=0;j<divisors2.size();j++){
                if(divisors2.get(j)==null){
                    j++;
                }
                else{
   
                if(divisors1.get(i)==divisors2.get(j)){    
                    System.out.println(divisors2.get(j)+" ");
                    GCD=GCD*divisors2.get(j);
                    divisors2.remove(j);    
                }
                }
            }
 
            
           
        }
        
        System.out.println("GCD:"+GCD);
        
}
}
