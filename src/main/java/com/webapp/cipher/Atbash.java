package com.webapp.cipher;

public class Atbash {
    private String text;
    private String alphabet;

    public Atbash() {
        this.alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    }

    public Atbash(String text, String alphabet) {
        this.text = text;

        this.alphabet = alphabet;
    }

    public String getAlphabet() {
        return alphabet;
    }

    public void setAlphabet(String alphabet) {
        this.alphabet = alphabet;
    }

    @Override
    public String toString() {
        return "Atbash{" +
                "text='" + text + '\'' +
                ", alphabet='" + alphabet + '\'' +
                '}';
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String encrypt() {
        StringBuilder encryptedText = new StringBuilder();
        for (char c : text.toCharArray()) {
            if (Character.isLetter(c)) {
                int index = alphabet.indexOf(Character.toUpperCase(c));
                char encryptedChar = alphabet.charAt(alphabet.length() - 1 - index);
                if (Character.isLowerCase(c)) {
                    encryptedText.append(Character.toLowerCase(encryptedChar));
                } else {
                    encryptedText.append(encryptedChar);
                }
            } else {
                encryptedText.append(c);
            }
        }
        return encryptedText.toString();
    }
}
