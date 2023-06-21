package com.webapp;

import com.webapp.cipher.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/atbashEncrypt")
    public String atbashEncrypt(Model model) {
        model.addAttribute("atbash", new Atbash());
        return "atbash-cipher-encrypt";
    }

    @RequestMapping("/atbashDecrypt")
    public String atbashDecrypt(Model model) {
        model.addAttribute("atbash", new Atbash());
        return "atbash-cipher-decrypt";
    }

    @RequestMapping("/caesarEncrypt")
    public String caesarEncrypt(Model model) {
        model.addAttribute("caesar", new Caesar());
        return "caesar-cipher-encrypt";
    }
    @RequestMapping("/caesarDecrypt")
    public String caesarDecrypt(Model model) {
        model.addAttribute("caesar", new Caesar());
        return "caesar-cipher-decrypt";
    }

    @RequestMapping("/vigenerEncrypt")
    public String vigenerEncrypt(Model model) {
        model.addAttribute("vigener", new Vigener());
        return "vigener-cipher-encrypt";
    }
    @RequestMapping("/vigenerDecrypt")
    public String vigenerDecrypt(Model model) {
        model.addAttribute("vigener", new Vigener());
        return "vigener-cipher-decrypt";
    }

    @RequestMapping("/baconEncrypt")
    public String baconEncrypt(Model model) {
        model.addAttribute("bacon", new Bacon());
        return "bacon-cipher-encrypt";
    }

    @RequestMapping("/baconDecrypt")
    public String baconDecrypt(Model model) {
        model.addAttribute("bacon", new Bacon());
        return "bacon-cipher-decrypt";
    }

    @RequestMapping("/a1z26Encrypt")
    public String a1z26Encrypt(Model model) {
        model.addAttribute("a1z26", new A1Z26());
        return "a1z26-cipher-encrypt";
    }
    @RequestMapping("/a1z26Decrypt")
    public String a1z26Decrypt(Model model) {
        model.addAttribute("a1z26", new A1Z26());
        return "a1z26-cipher-decrypt";
    }

    @PostMapping("/showAtbash")
    public String showAtbash(@ModelAttribute("atbash") Atbash atbash) {
        atbash.setText(atbash.encrypt());
        return "show-atbash";
    }

    @PostMapping("/showVigenerAfterDecrypt")
    public String showVigenerAfterDecrypt(@ModelAttribute("vigener") Vigener vigener) {
        vigener.setText(vigener.decrypt());
        return "show-vigener";
    }

    @PostMapping("/showVigenerAfterEncrypt")
    public String showVigenerAfterEncrypt(@ModelAttribute("vigener") Vigener vigener) {
        vigener.setText(vigener.encrypt());

        return "show-vigener";
    }

    @PostMapping("/showCaesarAfterEncrypt")
    public String showCaesarAfterEncrypt(@ModelAttribute("caesar") Caesar caesar) {
        caesar.setText(caesar.encrypt());
        return "show-caesar";
    }

    @PostMapping("/showCaesarAfterDecrypt")
    public String showCaesarAfterDecrypt(@ModelAttribute("caesar") Caesar caesar) {
        caesar.setText(caesar.decrypt());
        return "show-caesar";
    }

    @PostMapping("/showBaconAfterEncrypt")
    public String showBaconAfterEncrypt(@ModelAttribute("bacon") Bacon bacon) {
        bacon.setText(bacon.encrypt());
        return "show-bacon";
    }

    @PostMapping("/showBaconAfterDecrypt")
    public String showBaconAfterDecrypt(@ModelAttribute("bacon") Bacon bacon) {
        bacon.setText(bacon.decrypt());
        return "show-bacon";
    }

    @PostMapping("/showA1Z26AfterEncrypt")
    public String showA1Z26AfterEncrypt(@ModelAttribute("a1z26") A1Z26 a1z26) {
        a1z26.setText(a1z26.encrypt());
        return "show-a1z26";
    }

    @PostMapping("/showA1Z26AfterDecrypt")
    public String showA1Z26AfterDecrypt(@ModelAttribute("a1z26") A1Z26 a1z26) {
        a1z26.setText(a1z26.decrypt());
        return "show-a1z26";
    }

}
