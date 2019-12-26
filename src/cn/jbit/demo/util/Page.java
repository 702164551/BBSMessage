package cn.jbit.demo.util;

import java.util.List;

import cn.jbit.demo.entity.BBSMessage;

public class Page {
	private int totalPageCount;		//��ҳ��
	private int pageSize;			//ÿҳ��ʾ��¼
	private int currPageNo=1;		//��ǰҳ��
	private int totalCount;			//�ܼ�¼��
	private List<BBSMessage> messageList;
	public Page() {
		super();
	}
	public Page(int totalPageCount,int pageSize,int currPageNo,int totalCount,List<BBSMessage> messageList) {
		super();
		this.totalPageCount = totalPageCount;
		this.pageSize = pageSize;
		this.currPageNo = currPageNo;
		this.totalCount = totalCount;
		this.messageList = messageList;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrPageNo() {
		return currPageNo;
	}
	public void setCurrPageNo(int currPageNo) {
		this.currPageNo = currPageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public List<BBSMessage> getMessageList() {
		return messageList;
	}
	public void setMessageList(List<BBSMessage> messageList) {
		this.messageList = messageList;
	}
}