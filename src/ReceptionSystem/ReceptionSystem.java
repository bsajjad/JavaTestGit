/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ReceptionSystem;

import java.util.Random;

/**
 *
 * @author Bushra Sajjad
 */
public class ReceptionSystem {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int a, b;
        Random rand=new Random();
        a= rand.nextInt(100);
        b= rand.nextInt(100);
        int c;
        c=a*b;
        
        System.out.println("Sum is: " + (a+b));
        System.out.println("Multiple is "+ c);
        
        
        
        
    }
    
}
