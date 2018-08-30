package models;

public class Meat {



    private int id;
    private int dads_id;
    private String the_meats;
    private String time;
    private String location;
    private String dadscription;


    public Meat() {}

    public Meat(int id, int dads_id, String the_meats, String time, String dadscription) {
        this.id = id;
        this.dads_id = dads_id;
        this.the_meats = the_meats;
        this.time = time;
        this.location = location;
        this.dadscription = dadscription;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDads_id() {
        return dads_id;
    }

    public void setDads_id(int dads_id) {
        this.dads_id = dads_id;
    }

    public String getThe_meats() {
        return the_meats;
    }

    public void setThe_meats(String the_meats) {
        this.the_meats = the_meats;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDadscription() {
        return dadscription;
    }

    public void setDadscription(String dadscription) {
        this.dadscription = dadscription;
    }


}
