package kr.co.wp.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Tourlist implements Serializable{
	private int tourlistId; // ������ ��ȣ
	private String tourlistName; // ������ �̸�
	private String tourlistDesc; // ������ �Ұ�
	private String tourlistUrl; // �������̹��� ���
	private MultipartFile tourlistPhoto; // ������ �̹��� ����
}
