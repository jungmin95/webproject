package kr.co.wp.domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class Tourlist implements Serializable{
	private int tourlistId; // 여행지 번호
	private String tourlistName; // 여행지 이름
	private String tourlistDesc; // 여행지 소개
	private String tourlistUrl; // 여행지이미지 경로
	private MultipartFile tourlistPhoto; // 여행지 이미지 파일
}
