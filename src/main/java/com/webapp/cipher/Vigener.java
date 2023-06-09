package com.webapp.cipher;

public class Vigener {
    private String text;
    private String cipherText;

    public Vigener() {
    }

    public Vigener(String text, String cipherText) {
        this.text = text;
        this.cipherText = cipherText;
    }

    @Override
    public String toString() {
        return "Atbash{" +
                "text='" + text + '\'' +
                ", cipherText='" + cipherText + '\'' +
                '}';
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getCipherText() {
        return cipherText;
    }

    public void setCipherText(String cipherText) {
        this.cipherText = cipherText;
    }
}
