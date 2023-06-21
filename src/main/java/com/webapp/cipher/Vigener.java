package com.webapp.cipher;

public class Vigener {
    private String text;
    private String key;

    public Vigener() {
        key = "";
    }

    public Vigener(String text, String key) {
        this.text = text;
        this.key = key;
    }

    @Override
    public String toString() {
        return "Vigenere{" +
                "text='" + text + '\'' +
                ", key='" + key + '\'' +
                '}';
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String encrypt() {
        StringBuilder result = new StringBuilder();
        int keyLength = key.length();
        int textLength = text.length();
        for (int i = 0; i < textLength; i++) {
            char currentChar = text.charAt(i);
            char keyChar = key.charAt(i % keyLength);
            if (Character.isLetter(currentChar)) {
                boolean isUpperCase = Character.isUpperCase(currentChar);
                int offset = isUpperCase ? 'A' : 'a';
                int encryptedChar = (currentChar + keyChar - 2 * offset) % 26 + offset;
                result.append((char) encryptedChar);
            } else {
                result.append(currentChar);
            }
        }
        return result.toString();
    }

    public String decrypt() {
        StringBuilder result = new StringBuilder();
        int keyLength = key.length();
        int textLength = text.length();
        for (int i = 0; i < textLength; i++) {
            char currentChar = text.charAt(i);
            char keyChar = key.charAt(i % keyLength);
            if (Character.isLetter(currentChar)) {
                boolean isUpperCase = Character.isUpperCase(currentChar);
                int offset = isUpperCase ? 'A' : 'a';
                int decryptedChar = (currentChar - keyChar + 26) % 26 + offset;
                result.append((char) decryptedChar);
            } else {
                result.append(currentChar);
            }
        }
        return result.toString();
    }
}
