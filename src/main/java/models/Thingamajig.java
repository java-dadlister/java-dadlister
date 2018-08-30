package models;

public class Thingamajig {

        private int id;
        private int dads_id;
        private String title;
        private String dadscription;


        public Thingamajig() {}

        public Thingamajig(int id, int dads_id, String title,  String dadscription) {
            this.id = id;
            this.dads_id = dads_id;
            this.title = title;
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

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getDadscription() {
            return dadscription;
        }

        public void setDadscription(String dadscription) {
            this.dadscription = dadscription;
        }


    }

