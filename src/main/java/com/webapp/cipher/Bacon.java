package com.webapp.cipher;

import java.util.HashMap;
import java.util.Map;

public class Bacon {
    private String text;

    private static final Map<Character, String> encodingTable = new HashMap<>();
    private static final Map<String, Character> decodingTable = new HashMap<>();

    static {

        encodingTable.put('a', "AAAAA");
        encodingTable.put('b', "AAAAB");
        encodingTable.put('c', "AAABA");
        encodingTable.put('d', "AAABB");
        encodingTable.put('e', "AABAA");
        encodingTable.put('f', "AABAB");
        encodingTable.put('g', "AABBA");
        encodingTable.put('h', "AABBB");
        encodingTable.put('i', "ABAAA");
        encodingTable.put('j', "ABAAB");
        encodingTable.put('k', "ABABA");
        encodingTable.put('l', "ABABB");
        encodingTable.put('m', "ABBAA");
        encodingTable.put('n', "ABBAB");
        encodingTable.put('o', "ABBBA");
        encodingTable.put('p', "ABBBB");
        encodingTable.put('q', "BAAAA");
        encodingTable.put('r', "BAAAB");
        encodingTable.put('s', "BAABA");
        encodingTable.put('t', "BAABB");
        encodingTable.put('u', "BABAA");
        encodingTable.put('v', "BABAB");
        encodingTable.put('w', "BABBA");
        encodingTable.put('x', "BABBB");
        encodingTable.put('y', "BBAAA");
        encodingTable.put('z', "BBAAB");


        for (Map.Entry<Character, String> entry : encodingTable.entrySet()) {
            decodingTable.put(entry.getValue(), entry.getKey());
        }
    }

    public Bacon() {
    }

    public Bacon(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Bacon{" +
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
        StringBuilder result = new StringBuilder();

        for (char c : text.toCharArray()) {
            if (Character.isLetter(c)) {
                result.append(encodingTable.getOrDefault(c, ""));
            } else {
                result.append(c);
            }
        }

        return result.toString();
    }

    public String decrypt() {
        StringBuilder result = new StringBuilder();

        for (int i = 0; i < text.length(); i += 5) {
            if (i + 5 <= text.length()) {
                String group = text.substring(i, i + 5);
                Character decodedChar = decodingTable.getOrDefault(group, null);
                if (decodedChar != null) {
                    result.append(decodedChar);
                } else {
                    result.append(group);
                }
            } else {
                result.append(text.substring(i));
            }
        }

        return result.toString();
    }
}
