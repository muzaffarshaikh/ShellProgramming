/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gcdeuclid;

import java.util.Scanner;

/**
 *
 * @author MScIT19
 */
public class GcdEuclid {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int fNo,sNo,i,j,GCD=1;
        Scanner s=new Scanner(System.in);
        System.out.println("Enter first number:");
        fNo=s.nextInt();
        System.out.println("Enter second number:");
        sNo=s.nextInt();
        System.out.println(fNo+" "+sNo);
        
         i=fNo%sNo;
            while(i!=0)
            {
            fNo=sNo;
            sNo=i;
            i=fNo%sNo;
        }
        GCD=sNo;
        
        System.out.println("GCD:"+GCD);
    }
    
}
