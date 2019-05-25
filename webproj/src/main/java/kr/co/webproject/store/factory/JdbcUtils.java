package kr.co.webproject.store.factory;

public class JdbcUtils {

	public static void Close(AutoCloseable...autoCloseables) { //AutoCloseable <-인터페이스 / 클로즈하는법이 다름 / 그래서 다형성 적용 / ... <- 가변의미 
		for(AutoCloseable autoCloseable : autoCloseables) { // 하나가될수도있고 3개가될수도있다는 뜻
			if(autoCloseable == null) {
				continue;
			}
			try {
				autoCloseable.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
