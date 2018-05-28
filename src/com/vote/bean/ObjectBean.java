package com.vote.bean;

import java.sql.Timestamp;

public class ObjectBean {
    private int oid;
    private String title;
    private String discribe;
    private Timestamp createTime;
    private String remark;
    private int state;
    private String shareFlag;
    private String team;
    private String author;
    
    public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
    
    public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public ObjectBean() {
    }

    public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public void setTitle(String title) {
        this.title = title;
    }

    public void setDiscribe(String discribe) {
        this.discribe = discribe;
    }

    public void setTeam(String team){
    	this.team = team;
    }
    
    public String getTeam(){
    	return team;
    }
    
    public String getTitle() {
        return title;
    }

    public String getDiscribe() {
        return discribe;
    }

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getShareFlag() {
		return shareFlag;
	}

	public void setShareFlag(String shareFlag) {
		this.shareFlag = shareFlag;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

   
}
