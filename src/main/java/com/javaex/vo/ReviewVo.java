package com.javaex.vo;

public class ReviewVo {

	private int reviewNo;
	private int pOrderNo;
	private String reviewContent;
	private int recommend;
	private String regDate;
	private int blind;
	private String reply;
	private String replyRegDate;
	private int storeNo;
	private String reviewImg;
	private String profileImg;
	private int reviewCnt;

	public ReviewVo() {
		super();
	}

	public ReviewVo(int reviewNo, int pOrderNo, String reviewContent, int recommend, String regDate, int blind,
			String reply, String replyRegDate, int storeNo, String reviewImg, String profileImg, int reviewCnt) {
		super();
		this.reviewNo = reviewNo;
		this.pOrderNo = pOrderNo;
		this.reviewContent = reviewContent;
		this.recommend = recommend;
		this.regDate = regDate;
		this.blind = blind;
		this.reply = reply;
		this.replyRegDate = replyRegDate;
		this.storeNo = storeNo;
		this.reviewImg = reviewImg;
		this.profileImg = profileImg;
		this.reviewCnt = reviewCnt;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getpOrderNo() {
		return pOrderNo;
	}

	public void setpOrderNo(int pOrderNo) {
		this.pOrderNo = pOrderNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getBlind() {
		return blind;
	}

	public void setBlind(int blind) {
		this.blind = blind;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getReplyRegDate() {
		return replyRegDate;
	}

	public void setReplyRegDate(String replyRegDate) {
		this.replyRegDate = replyRegDate;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public int getReviewCnt() {
		return reviewCnt;
	}

	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}

	@Override
	public String toString() {
		return "ReviewVo [reviewNo=" + reviewNo + ", pOrderNo=" + pOrderNo + ", reviewContent=" + reviewContent
				+ ", recommend=" + recommend + ", regDate=" + regDate + ", blind=" + blind + ", reply=" + reply
				+ ", replyRegDate=" + replyRegDate + ", storeNo=" + storeNo + ", reviewImg=" + reviewImg
				+ ", profileImg=" + profileImg + ", reviewCnt=" + reviewCnt + "]";
	}

}
