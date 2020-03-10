package _01_prime_or_not;

import javax.swing.JOptionPane;

public class primeornot {
	public static void main(String[] args) {
		String prime= JOptionPane.showInputDialog("give me a number");
		int not=Integer.parseInt(prime);
		for (int i = 2; i <not ; i++) {
			if (not%i==0) {
				JOptionPane.showMessageDialog(null, "the is not prime");
				System.exit(0);
			}
		}
		JOptionPane.showMessageDialog(null, "the number is prime");
		
	}

}
