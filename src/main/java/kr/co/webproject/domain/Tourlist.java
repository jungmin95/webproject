package kr.co.webproject.domain;

import java.io.Serializable;

public class Tourlist implements Serializable {

    private static final long serialVersionUID = -7755173628930202505L;
    
    private String TourlistId;
    private String name;
    private String intro;

    public String getBoardId() {
        return TourlistId;
    }
    public void setTourlistId(String TourlistId) {
        this.TourlistId = TourlistId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getIntro() {
        return intro;
    }
    public void setIntro(String intro) {
        this.intro = intro;
    }

}
