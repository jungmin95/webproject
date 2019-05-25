package kr.co.webproject.store.factory;

public class JdbcUtils {

	public static void Close(AutoCloseable...autoCloseables) { //AutoCloseable <-�������̽� / Ŭ�����ϴ¹��� �ٸ� / �׷��� ������ ���� / ... <- �����ǹ� 
		for(AutoCloseable autoCloseable : autoCloseables) { // �ϳ����ɼ����ְ� 3�����ɼ����ִٴ� ��
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
