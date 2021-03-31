/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
*/


/**
 *
 * @author ELCOT
 */
public class Main {
    public static void main(String[] args){
        try{
         org.me.calculator.client.CalculatorWS_Service service=   new org.me.calculator.client.CalculatorWS_Service();
         org.me.calculator.client.CalculatorWS port=service.getCalculatorWSPort();
         int i=0;
         int j=6;
         int result=port.add(i,j);
         System.out.println("result: "+result);
        }
        catch(Exception e){
            
        }
        
    }
}
