package com.codeup.adlister.models;


    public class Exercise {

        private int id;
        private int dads_id;
        private String title;
        private String location;
        private String dadscription;


        public Exercise() {}

        public Exercise(int id, int dads_id, String title, String location, String dadscription) {
            this.id = id;
            this.dads_id = dads_id;
            this.title = title;
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

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getLocation() {
            return location;
        }

        public void setLocation(String location) {
            this.title = location;
        }

        public String getDadscription() {
            return dadscription;
        }

        public void setDadscription(String dadscription) {
            this.dadscription = dadscription;
        }


    }

