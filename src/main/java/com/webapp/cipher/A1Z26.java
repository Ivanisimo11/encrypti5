package com.webapp.cipher;

public class A1Z26 {
    private String text;

    public A1Z26() {
    }

    public A1Z26(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "A1Z26{" +
                "text='" + text + '\'' +
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
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (Character.isLetter(c)) {
                int charIndex = Character.toUpperCase(c) - 'A' + 1;
                encryptedText.append(charIndex).append("-");
            } else if (c == ' ') {
                encryptedText.append("0").append("-");
            } else {
                encryptedText.append(c);
            }
        }
        encryptedText.deleteCharAt(encryptedText.length() - 1);
        return encryptedText.toString().trim();
    }

    public String decrypt() {
        StringBuilder decryptedText = new StringBuilder();
        String[] chunks = text.split("-");
        for (String chunk : chunks) {
            if (chunk.matches("\\d+")) {
                int charIndex = Integer.parseInt(chunk);
                if (charIndex >= 0 && charIndex <= 26) {
                    if (charIndex == 0) {
                        decryptedText.append(" ");
                    } else {
                        char decryptedChar = (char) (charIndex - 1 + 'A');
                        decryptedText.append(decryptedChar);
                    }
                } else {
                    decryptedText.append(chunk);
                }
            } else {
                decryptedText.append(chunk);
            }
        }
        return decryptedText.toString();
    }
}
