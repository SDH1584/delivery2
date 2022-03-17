package com.javaex.vo;

public class InquiryVo {

	private int inquiryNo;
	private int no;
	private String inquiryCate;
	private int emailResponse;
	private int messageResponse;
	private String inquiryContent;
	private String inquiryTitle;
	private String ResponsePerson;
	private String Respnsecontent;
	public InquiryVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getInquiryNo() {
		return inquiryNo;
	}

	public void setInquiryNo(int inquiryNo) {
		this.inquiryNo = inquiryNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getInquiryCate() {
		return inquiryCate;
	}

	public void setInquiryCate(String inquiryCate) {
		this.inquiryCate = inquiryCate;
	}

	public int getEmailResponse() {
		return emailResponse;
	}

	public void setEmailResponse(int emailResponse) {
		this.emailResponse = emailResponse;
	}

	public int getMessageResponse() {
		return messageResponse;
	}

	public void setMessageResponse(int messageResponse) {
		this.messageResponse = messageResponse;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getResponsePerson() {
		return ResponsePerson;
	}

	public void setResponsePerson(String responsePerson) {
		ResponsePerson = responsePerson;
	}

	public String getRespnsecontent() {
		return Respnsecontent;
	}

	public void setRespnsecontent(String respnsecontent) {
		Respnsecontent = respnsecontent;
	}

	public InquiryVo(int inquiryNo, int no, String inquiryCate, int emailResponse, int messageResponse,
			String inquiryContent, String inquiryTitle, String responsePerson, String respnsecontent) {
		super();
		this.inquiryNo = inquiryNo;
		this.no = no;
		this.inquiryCate = inquiryCate;
		this.emailResponse = emailResponse;
		this.messageResponse = messageResponse;
		this.inquiryContent = inquiryContent;
		this.inquiryTitle = inquiryTitle;
		ResponsePerson = responsePerson;
		Respnsecontent = respnsecontent;
	}

	@Override
	public String toString() {
		return "InquiryVo [inquiryNo=" + inquiryNo + ", no=" + no + ", inquiryCate=" + inquiryCate + ", emailResponse="
				+ emailResponse + ", messageResponse=" + messageResponse + ", inquiryContent=" + inquiryContent
				+ ", inquiryTitle=" + inquiryTitle + ", ResponsePerson=" + ResponsePerson + ", Respnsecontent="
				+ Respnsecontent + "]";
	}
	
	
}
