package com.webapp.cipher;

public class Caesar {
    private String text;
    private int shift;

    public Caesar() {
        shift = 0;
    }

    public Caesar(String text, int shift) {
        this.text = text;
        this.shift = shift;
    }

    @Override
    public String toString() {
        return "Caesar{" +
                "text='" + text + '\'' +
                ", shift='" + shift + '\'' +
                '}';
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getShift() {
        return shift;
    }

    public void setShift(int shift) {
        this.shift = shift;
    }

    public String encrypt() {
        StringBuilder encryptedText = new StringBuilder();

        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);

            if (Character.isLetter(c)) {
                char base = Character.isUpperCase(c) ? 'A' : 'a';
                int encryptedChar = (c - base + shift) % 26 + base;
                encryptedText.append((char) encryptedChar);
            } else {
                encryptedText.append(c);
            }
        }

        return encryptedText.toString();
    }

    public String decrypt() {
        StringBuilder decryptedText = new StringBuilder();

        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);

            if (Character.isLetter(c)) {
                char base = Character.isUpperCase(c) ? 'A' : 'a';
                int decryptedChar = (c - base - shift + 26) % 26 + base;
                decryptedText.append((char) decryptedChar);
            } else {
                decryptedText.append(c);
            }
        }

        return decryptedText.toString();
    }
}
