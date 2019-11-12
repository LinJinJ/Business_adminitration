package com.pojo;

import org.springframework.stereotype.Component;

@Component
public class Authority {
    private String username;

    private String member;

    private String vipmember;

    private String adminmember;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member == null ? null : member.trim();
    }

    public String getVipmember() {
        return vipmember;
    }

    public void setVipmember(String vipmember) {
        this.vipmember = vipmember == null ? null : vipmember.trim();
    }

    public String getAdminmember() {
        return adminmember;
    }

    public void setAdminmember(String adminmember) {
        this.adminmember = adminmember == null ? null : adminmember.trim();
    }
}