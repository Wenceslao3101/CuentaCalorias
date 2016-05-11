package validacion;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import static java.util.regex.Pattern.CASE_INSENSITIVE;

public class validacion {

    public String repNull(String str) {

        if (str == null) {
            str = "";
        }
   
        return str; //remplaza algo//
    }

    public String rep(String str, String reg_ex, String rep) { //reg_ex= remplazar, rep = lo que se va a remplazar//
        Pattern p;
        Matcher m;
        StringBuffer sb;

        str = repNull(str);
        p = Pattern.compile(reg_ex);
        m = p.matcher(str);
        sb = new StringBuffer();

        while (m.find()) {
            m.appendReplacement(sb, rep);
        }

        m.appendTail(sb);

        str = sb.toString();

        return str;
    }
//APLIACAR A TODOS LOS NOMBRES//
    public String quitaespacios (String str) {

        str = repNull(str);
        str = str.trim();
        str = rep(str, "[ ]{2,}", " ");

        return str;
    }

    public String byespaciosemail(String str) {  ////

        str = repNull(str);
        str = str.trim();
        str = rep(str, "[ ]*", "");

        return str;
    }

    public boolean estalleno(String str) {
        str = repNull(str);
        return str.length() > 0;
    }

    public String getRegEx(String i) {
        String reg_ex;
        i = i.toLowerCase();
        reg_ex = "";
        

        if (i == "nick"){
            reg_ex = "^[a-zA-Z0-9_.-]+$";
        }
        else if(i=="correo"){
           reg_ex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$"; 
        }
        else if (i=="nom"){
            reg_ex = "^[a-zA-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽáčďéěíňóřšťúůýžÄÖÜẞßöüäΑαΝνΒβΞξΓγΟοΔδΠπΕεΡρΖζΣσςΗηΤτΘθΥυΙιΦφΚκΧχΛλΨψΜμΩωȢȣϏϗϛάέήίόύώϊϋΐΰΆΈΉΊΌΎΏΪÁáÉéÍíÓóÚúÜüÑñÀàÂâÆæÇçÉéÈèÊêËëÎîÏïÔôŒœÙùÛûÜüŸÿàèéìíîòóùúĄĆĘŁŃÓŚŹŻąęćóżźńłśאבבגדהוזחטיככךלמםנןסעפפףצץקרששתתÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜàáâãäçèéêëìíîïñòóôõöùúûüæøåäöðÞþÅÄÖÆØÅĲÐアカサタナハマヤラワンイキシチニヒミリウクスツヌフムユルェケセテネヘメレオコソトノホモヨロヲガザダバパギジヂビピグズヅブプヴゲゼデベペゴゾドボポあかさたなはまやらわんいきしちにひみりうくすつぬふむゆるえけせてねへめれおこそとのほもよろをがざだばぱぎじぢびぴぐずづぶぷげぜでべぺごぞどぼぽぁぃぅぇぉっゃゅょァィゥェォャュョ一二三四五六七八九十日大年中会人本月長国出上生子分東行同今高金時手見市力米自前円合立内事社者地京間田体学下目五後新明方部女心民対主正代言小思山実入回場野開万全定家北問話文動度県水安氏和政保表道相意発不党神様響流派手光千愛夢未来壊如矢物語川井桜蘭高校部皿乙益个艸çğıöşƢƣъьАаӒӓБбВвГгҐґДдЕеЁёЄєЖжЗзИиЍѝӢӣІіЇїЙйЈјКкҚқЛлЉљМмНнЊњОоӦӧПпРрСсТтУуӰӱФфХхҲҳЦцЧчЏџШшЩщЪъЫыЬьЭэЮюЯяАаӐӑӒӓӘәБбВвГгҒғДдЕеЁёӖӗЖжҖҗЗзИиІіЙйЈјКкҚқҠҡҜҝЛлМмНнҢңҤҥОоӦӧӨөПпРрСсҪҫТтУуҮүФфХхҺһЦцЧчӋӌҸҹШшЩщЪъЫыЬьЭэЮюЯяĆćЋћĐđЂђﬀﬁﬂﬃﬄﬅﬆÆæŒœĲĳᵫ]+$";
        }
        else if (i=="apep"){
            reg_ex = "^[a-zA-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽáčďéěíňóřšťúůýžÄÖÜẞßöüäΑαΝνΒβΞξΓγΟοΔδΠπΕεΡρΖζΣσςΗηΤτΘθΥυΙιΦφΚκΧχΛλΨψΜμΩωȢȣϏϗϛάέήίόύώϊϋΐΰΆΈΉΊΌΎΏΪÁáÉéÍíÓóÚúÜüÑñÀàÂâÆæÇçÉéÈèÊêËëÎîÏïÔôŒœÙùÛûÜüŸÿàèéìíîòóùúĄĆĘŁŃÓŚŹŻąęćóżźńłśאבבגדהוזחטיככךלמםנןסעפפףצץקרששתתÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜàáâãäçèéêëìíîïñòóôõöùúûüæøåäöðÞþÅÄÖÆØÅĲÐアカサタナハマヤラワンイキシチニヒミリウクスツヌフムユルェケセテネヘメレオコソトノホモヨロヲガザダバパギジヂビピグズヅブプヴゲゼデベペゴゾドボポあかさたなはまやらわんいきしちにひみりうくすつぬふむゆるえけせてねへめれおこそとのほもよろをがざだばぱぎじぢびぴぐずづぶぷげぜでべぺごぞどぼぽぁぃぅぇぉっゃゅょァィゥェォャュョ一二三四五六七八九十日大年中会人本月長国出上生子分東行同今高金時手見市力米自前円合立内事社者地京間田体学下目五後新明方部女心民対主正代言小思山実入回場野開万全定家北問話文動度県水安氏和政保表道相意発不党神様響流派手光千愛夢未来壊如矢物語川井桜蘭高校部皿乙益个艸çğıöşƢƣъьАаӒӓБбВвГгҐґДдЕеЁёЄєЖжЗзИиЍѝӢӣІіЇїЙйЈјКкҚқЛлЉљМмНнЊњОоӦӧПпРрСсТтУуӰӱФфХхҲҳЦцЧчЏџШшЩщЪъЫыЬьЭэЮюЯяАаӐӑӒӓӘәБбВвГгҒғДдЕеЁёӖӗЖжҖҗЗзИиІіЙйЈјКкҚқҠҡҜҝЛлМмНнҢңҤҥОоӦӧӨөПпРрСсҪҫТтУуҮүФфХхҺһЦцЧчӋӌҸҹШшЩщЪъЫыЬьЭэЮюЯяĆćЋћĐđЂђﬀﬁﬂﬃﬄﬅﬆÆæŒœĲĳᵫ]+$";
        }
        else if (i=="apem"){
            reg_ex = "^[a-zA-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽáčďéěíňóřšťúůýžÄÖÜẞßöüäΑαΝνΒβΞξΓγΟοΔδΠπΕεΡρΖζΣσςΗηΤτΘθΥυΙιΦφΚκΧχΛλΨψΜμΩωȢȣϏϗϛάέήίόύώϊϋΐΰΆΈΉΊΌΎΏΪÁáÉéÍíÓóÚúÜüÑñÀàÂâÆæÇçÉéÈèÊêËëÎîÏïÔôŒœÙùÛûÜüŸÿàèéìíîòóùúĄĆĘŁŃÓŚŹŻąęćóżźńłśאבבגדהוזחטיככךלמםנןסעפפףצץקרששתתÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜàáâãäçèéêëìíîïñòóôõöùúûüæøåäöðÞþÅÄÖÆØÅĲÐアカサタナハマヤラワンイキシチニヒミリウクスツヌフムユルェケセテネヘメレオコソトノホモヨロヲガザダバパギジヂビピグズヅブプヴゲゼデベペゴゾドボポあかさたなはまやらわんいきしちにひみりうくすつぬふむゆるえけせてねへめれおこそとのほもよろをがざだばぱぎじぢびぴぐずづぶぷげぜでべぺごぞどぼぽぁぃぅぇぉっゃゅょァィゥェォャュョ一二三四五六七八九十日大年中会人本月長国出上生子分東行同今高金時手見市力米自前円合立内事社者地京間田体学下目五後新明方部女心民対主正代言小思山実入回場野開万全定家北問話文動度県水安氏和政保表道相意発不党神様響流派手光千愛夢未来壊如矢物語川井桜蘭高校部皿乙益个艸çğıöşƢƣъьАаӒӓБбВвГгҐґДдЕеЁёЄєЖжЗзИиЍѝӢӣІіЇїЙйЈјКкҚқЛлЉљМмНнЊњОоӦӧПпРрСсТтУуӰӱФфХхҲҳЦцЧчЏџШшЩщЪъЫыЬьЭэЮюЯяАаӐӑӒӓӘәБбВвГгҒғДдЕеЁёӖӗЖжҖҗЗзИиІіЙйЈјКкҚқҠҡҜҝЛлМмНнҢңҤҥОоӦӧӨөПпРрСсҪҫТтУуҮүФфХхҺһЦцЧчӋӌҸҹШшЩщЪъЫыЬьЭэЮюЯяĆćЋћĐđЂђﬀﬁﬂﬃﬄﬅﬆÆæŒœĲĳᵫ]+$";
        }
        else if(i=="password"){
            reg_ex = "^[a-zA-ZÁČĎÉĚÍŇÓŘŠŤÚŮÝŽáčďéěíňóřšťúůýžÄÖÜẞßöüäΑαΝνΒβΞξΓγΟοΔδΠπΕεΡρΖζΣσςΗηΤτΘθΥυΙιΦφΚκΧχΛλΨψΜμΩωȢȣϏϗϛάέήίόύώϊϋΐΰΆΈΉΊΌΎΏΪÁáÉéÍíÓóÚúÜüÑñÀàÂâÆæÇçÉéÈèÊêËëÎîÏïÔôŒœÙùÛûÜüŸÿàèéìíîòóùúĄĆĘŁŃÓŚŹŻąęćóżźńłśאבבגדהוזחטיככךלמםנןסעפפףצץקרששתתÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜàáâãäçèéêëìíîïñòóôõöùúûüæøåäöðÞþÅÄÖÆØÅĲÐアカサタナハマヤラワンイキシチニヒミリウクスツヌフムユルェケセテネヘメレオコソトノホモヨロヲガザダバパギジヂビピグズヅブプヴゲゼデベペゴゾドボポあかさたなはまやらわんいきしちにひみりうくすつぬふむゆるえけせてねへめれおこそとのほもよろをがざだばぱぎじぢびぴぐずづぶぷげぜでべぺごぞどぼぽぁぃぅぇぉっゃゅょァィゥェォャュョ一二三四五六七八九十日大年中会人本月長国出上生子分東行同今高金時手見市力米自前円合立内事社者地京間田体学下目五後新明方部女心民対主正代言小思山実入回場野開万全定家北問話文動度県水安氏和政保表道相意発不党神様響流派手光千愛夢未来壊如矢物語川井桜蘭高校部皿乙益个艸çğıöşƢƣъьАаӒӓБбВвГгҐґДдЕеЁёЄєЖжЗзИиЍѝӢӣІіЇїЙйЈјКкҚқЛлЉљМмНнЊњОоӦӧПпРрСсТтУуӰӱФфХхҲҳЦцЧчЏџШшЩщЪъЫыЬьЭэЮюЯяАаӐӑӒӓӘәБбВвГгҒғДдЕеЁёӖӗЖжҖҗЗзИиІіЙйЈјКкҚқҠҡҜҝЛлМмНнҢңҤҥОоӦӧӨөПпРрСсҪҫТтУуҮүФфХхҺһЦцЧчӋӌҸҹШшЩщЪъЫыЬьЭэЮюЯяĆćЋћĐđЂђﬀﬁﬂﬃﬄﬅﬆÆæŒœĲĳᵫ0-9]+$";
        }
    

        return reg_ex;
    }

    public boolean test(String reg_ex, String str) {
        boolean val;
        Pattern p;
        Matcher m;

        reg_ex = repNull(reg_ex);
        str = repNull(str);
        val = false;
        p = Pattern.compile(reg_ex, CASE_INSENSITIVE);
        m = p.matcher(str);

        if (m.matches() != true) {
        } else {
            val = true;
        }

        return val;
    }

    public boolean nick(String str) {
        String reg_ex;

        reg_ex = getRegEx("nick");
        reg_ex = repNull(reg_ex);
        str = repNull(str);

        return test(reg_ex, str);
    }

    public boolean correo(String str) {
        String reg_ex;

        reg_ex = getRegEx("correo");
        reg_ex = repNull(reg_ex);
        str = repNull(str);

        return test(reg_ex, str);
    }

    public boolean nombre(String str) {
        String reg_ex;

        reg_ex = getRegEx("nom");
        reg_ex = repNull(reg_ex);
        str = repNull(str);

        return test(reg_ex, str);
    }

    public boolean contraseña(String str) {
        String reg_ex;

        reg_ex = getRegEx("contraseña");
        reg_ex = repNull(reg_ex);
        str = repNull(str);

        return test(reg_ex, str);
    }
    
    public boolean isPath(String str) {
        String reg_ex;

        reg_ex = getRegEx("path");
        reg_ex = repNull(reg_ex);
        str = repNull(str);

        return test(reg_ex, str);
    }

    public boolean isNum(String str) {
        String reg_ex;

        reg_ex = getRegEx("num");
        reg_ex = repNull(reg_ex);
        str = repNull(str);
        str = byespaciosemail(str);

        return test(reg_ex, str);
    }

    public boolean valnick(String str) {
        boolean val;

        str = repNull(str);
        str = byespaciosemail(str);
        val = false;

        if (estalleno(str) != true) {
        } else {
            if (!(9 < str.length() && str.length() < 51)) {
            } else {
                if (nick(str) != true) {
                } else {
                    val = true;
                }
            }
        }

        return val;
    }

    public boolean valemail(String str) {
        boolean val;

        str = repNull(str);
        str = byespaciosemail(str);
        val = false;

        if (estalleno(str) != true) {
        } else {
            if (!(str.length() < 51)) {
            } else {
                if (correo(str) != true) {
                } else {
                    val = true;
                }
            }
        }

        return val;
    }

//    public ArrayList checkName(String str) {
    public boolean checkName(String str) {
        ArrayList val;
        String res;
        String[] strn;

        str = repNull(str);
        str = quitaespacios(str);
        val = new ArrayList();
        res = "";

        val.add(false);
        val.add(res);

        if (estalleno(str) != true) {
        } else {
            strn = str.split(" ");

            for (int i = 0; i < strn.length; i++) {
                if (nombre(strn[i]) != true) {
                    val.clear();
                    val.add(false);
                    val.add("");
                    break;
                } else {
                    res = res + strn[i] + " ";
                    val.clear();
                    val.add(true);
                    val.add(res);
                    return true;
                }
            }
        }

        return false;
//        return val;
    }

    public boolean vUsr_nam(String str) {
        boolean val;
        ArrayList res;
//        String r;

//        res = checkName(str);
//        r = (String) res.get(1);
//        val = (boolean) res.get(0);
        val = checkName(str);

        return val;
    }

//    public ArrayList valicontraseña(String str) {
    public boolean valicontraseña(String str) {
        ArrayList val;
        String res;
        String[] strn;

        str = repNull(str);
        str = quitaespacios(str);
        val = new ArrayList();
        res = "";

        val.add(false);
        val.add(res);

        if (estalleno(str) != true) {
        } else {
            strn = str.split(" ");

            for (int i = 0; i < strn.length; i++) {
                if (contraseña(strn[i]) != true) {
                    val.clear();
                    val.add(false);
                    val.add("");
                    break;
                } else {
                    res = res + strn[i] + " ";
                    val.clear();
                    val.add(true);
                    val.add(res);
                    return true;
                }
            }
        }

        return false;
//        return val;
    }
    
    public boolean valcontraseña(String str) {
        boolean val;
        ArrayList res;
        String r;

//        res = valicontraseña(str);
//        r = (String) res.get(1);
//        val = (boolean) res.get(0);
        val = valicontraseña(str);

        return val;
    }
    
    public boolean vInv(String str) {
        boolean val;

        val = false;

        if (estalleno(str) != true) {
        } else {
            if (isNum(str) != true) {
            } else {
                double x;

                x = Double.parseDouble(str);

                if (x % 1 != 0) {
                } else {
                    if (0 > x) {
                    } else {
                        if (!(0 < x && x < 9999)) {
                        } else {
                            val = true;
                        }
                    }
                }
            }
        }

        return val;
    }

    public boolean valLog(String usr_eml, String usr_pwd) {
        boolean val;
        boolean eml;
        boolean pwd;

        usr_eml = repNull(usr_eml);
        usr_eml = byespaciosemail(usr_eml);
        usr_pwd = repNull(usr_pwd);
        usr_pwd = quitaespacios(usr_pwd);
        val = false;
        eml = valemail(usr_eml);
        pwd = valcontraseña(usr_pwd);

        if (!(eml == true && pwd == true)) {
        } else {
            val = true;
        }

        return val;
    }

    public boolean vSignUp(String usr_nkn, String usr_eml, String usr_sur, String usr_nam, String usr_pwd, String usr_pwdc, int usr_gen) {
        boolean val;
        boolean nick;
        boolean correo;
        boolean apellido;
        boolean nombre;
        boolean contraseña;
        boolean pwdc;
       

        val = false;
        nick = valnick(usr_nkn);
        correo = valemail(usr_eml);
        apellido= vUsr_nam(usr_sur);
        nombre = vUsr_nam(usr_nam);
        contraseña = valcontraseña(usr_pwd);
        pwdc = usr_pwd.equals(usr_pwdc);
        

        if (!(nick == true && correo == true && apellido == true && nombre == true && contraseña == true && pwdc == true)) {
        } else {
            val = true;
        }

        return val;
    }

    public boolean vPri_key(int p) {
        boolean val;

        val = false;

        if (p == 2 || p == 3) {
            val = true;
        }

        return val;
    }
    
    public boolean vBre_path(String str) {
        boolean val;

        str = repNull(str);
        str = byespaciosemail(str);
        val = false;

        if (estalleno(str) != true) {
        } else {
            if (!(9 < str.length() && str.length() < 51)) {
            } else {
                if (isPath(str) != true) {
                } else {
                    val = true;
                }
            }
        }

        return val;
    }

}

