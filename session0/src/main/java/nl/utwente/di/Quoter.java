package nl.utwente.di;

public class Quoter {

	public double getBookPrice(String isbn){
		if(isbn.equals("1")){
			return 10.0;
		}else if (isbn.equals("2")){
			return 45.0;
		}else if (isbn.equals("3")){
			return 20.0;
		}else if (isbn.equals("4")){
			return 35.0;
		}else if (isbn.equals("5")){
			return 50.0;
		}else{
			return 0;
		}
	}
}
