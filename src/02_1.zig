const std = @import("std");

const entries = [][]const u8{
    "nkucgflathzwwijtrevymbdplq", "nkucgflathzwsidxrlvymbdpiq", "nkucgjlathqwsijxrevymbypoq",
    "nkucgflarrzwsmjxrevymbdpoq", "nkucgflzthtwsijxrevymbdpjq", "nkucgflahhzwskjxrevymbgpoq",
    "bkycgflathzwsijxrsvymbdpoq", "nkucgflathzwsijxdevymbdmog", "nkucgflaehzwsmjxrevymbdpow",
    "nkucgflathzwsijxrevwmbdnbq", "nkucgflathzssijxrevynbdqoq", "ngucgflathzwsijxsevymndpoq",
    "nfucgflathzvsijxrevymbspoq", "nkucgflwthzwsijxreeymbdpkq", "nkucgflpthzwsijxrevdmbdpoe",
    "nkungflatuzwsijurevymbdpoq", "nkucgflathzwsiqxrevyybdpom", "nkucgflathzwsicxrevtmbtpoq",
    "nkucgfladhzwsijxreuymbdboq", "nkumgflathznsijxzevymbdpoq", "nkuagflethzwsijxrqvymbdpoq",
    "nkucgflatozwhijxrevymbdpkq", "nkuggflathzwsijxrejymbdpob", "nkucgflathzwlijxrqvambdpoq",
    "hkucnflathzasijxrevymbdpoq", "nkuigflathzwsirxrevymbdooq", "nkucgflatezwsijxwetymbdpoq",
    "nkucmflavhbwsijxrevymbdpoq", "nkucgflathzwssjxrevytbmpoq", "nkucgflmthzwsvjxrevymbdpgq",
    "nkucgtlathzwsijcrevymbjpoq", "nkucgflathfwsfjxrevymbdpsq", "nkucgflathjwsijxrwvymbdpok",
    "nkucgeldthzwsijxrevymqdpoq", "nkutgcpathzwsijxrevymbdpoq", "nkucgflaehzmsijxrevymydpoq",
    "mkucdflathzwsvjxrevymbdpoq", "nkucgflathzwsijxtevymidpfq", "nkucgfllthzwsijirevlmbdpoq",
    "nkucgfuathzwsijxrevymbqpou", "nkufgflathzwsijxrgvymbdpor", "nkuygflatrzwsijxrevymbdpoo",
    "nkunoflathzwsijxrevyabdpoq", "nksogflathzwsijxrevymbdpeq", "nkucgflathzwciexrevymbdhoq",
    "nkucgfnathzwsijxdevyobdpoq", "nkudgflazhzwsijxrevymbmpoq", "nkucgylathzwscjxrevymbdaoq",
    "nkucgflqthzisijxrerymbdpoq", "nkucgxlathzwsijxgebymbdpoq", "nkucgflathzssijxrwvymadpoq",
    "nkucgflathzwsijxrvvymbdloi", "nkucaflathzwskjxzevymbdpoq", "wkuchflathzwsijxrevymbdioq",
    "nkucgilathzwsijxrgvympdpoq", "nkubgflaohzwsijxrevymbnpoq", "nkucgwoathzwnijxrevymbdpoq",
    "nkprgflathzwsijxrevywbdpoq", "nkucgflatlzwsijxievymzdpoq", "nkucgflathzwsijxrevymbmdow",
    "nkucgzlathzwsitlrevymbdpoq", "nkubgfladhzwsijxrevymbdpsq", "nkucgflathzwsijxrzvyibdroq",
    "wkucgflathznsijqrevymbdpoq", "nkupgilathzwsijxrnvymbdpoq", "nkucgflathzwwijnrevymgdpoq",
    "nkucgflathjwsijxrewymbopoq", "mkwcdflathzwsvjxrevymbdpoq", "nkucgflathzwsujxoevymbdboq",
    "nkucvflathzwsojxrevymzdpoq", "nkocgflabhzwsijxrevyebdpoq", "skuciflpthzwsijxrevymbdpoq",
    "nkuxgflathzrsijxrevymbupoq", "nkucgblathzwsezxrevymbdpoq", "nkucgflathzwsijxrevymbvtop",
    "nkucdflathzwsiaxrefymbdpoq", "nkucgflathzwsijxzevkmbdpmq", "nkucgflarhzwsijroevymbdpoq",
    "nkuccflathzwsinxrevymsdpoq", "nkucgflathzwsijxregymidsoq", "nkucgflathnwsijxrvvumbdpoq",
    "nkucgfaathzwssjxrevymbdwoq", "nkucgflothzwsijxrevymbdloz", "naucgulathzwsijxremymbdpoq",
    "nkucgflaqhzwsijxrevymbdnqq", "wkucgflatrzwsijxrevymbdpof", "nvucgflaehzwyijxrevymbdpoq",
    "nkusaflaahzwsijxrevymbdpoq", "nkucgfkathzwsijxrevymbdbfq", "nkucgfkathzwsijrrevymodpoq",
    "nkuegflathzwsijxrrvbmbdpoq", "ykucgflathzwsijfrlvymbdpoq", "nkucgflathzrsujxrevymbdkoq",
    "nkuclflatsowsijxrevymbdpoq", "nkucgflathzwsgjxrqvymbdpor", "ekucgflathzwsijorevlmbdpoq",
    "nkucgflathizsijgrevymbdpoq", "nkucgfoathzksijbrevymbdpoq", "nkucgflachzwsijxrevymbupoa",
    "nkuhgflathzwsijxravylbdpoq", "nkncgflithzwsijnrevymbdpoq", "nvucgjlathzjsijxrevymbdpoq",
    "nhucgflathzwsijxrtvymbtpoq", "akucgflathzwhijxrevymbdpor", "nkucgflatozisijxrvvymbdpoq",
    "nkucgzlatgzwsijxrevymbepoq", "nkjcgflqthmwsijxrevymbdpoq", "nkucgflaohzosijxrhvymbdpoq",
    "ntucgflatrzwsijxrevymbdpol", "nkucgflathzwsijkriqymbdpoq", "nkuggflathzwsijmrevymbdpvq",
    "nkucgflpmhzwsmjxrevymbdpoq", "okucgflathzwsijxrevgmbdsoq", "nkucgflaehzwkijxrevymwdpoq",
    "zkucgfllthzwsijxrevymbdpod", "nkicgflathzasijxfevymbdpoq", "kkucgfhathzwsijxaevymbdpoq",
    "nkucqflsthzwsijxrevyjbdpoq", "nkucgflaghzwsijxoevykbdpoq", "nkucgflaohzwsljxryvymbdpoq",
    "bkucfflathzwsijxrexymbdpoq", "nkucnflathzwsbjxrpvymbdpoq", "nkucjflatlzwsijxrevymqdpoq",
    "nkucgflathzwsijsyevyxbdpoq", "nkwcgflathzosijxqevymbdpoq", "nkucgslathzesijxievymbdpoq",
    "nkuciflauhzwsiaxrevymbdpoq", "nkucgflathzwsiwxreeymbdwoq", "nkucgblatwzwsijxkevymbdpoq",
    "njucgfkathzwsijxrevymbvpoq", "nkucgfladhzwsijfrevyibdpoq", "nkukgflathzwsijprenymbdpoq",
    "nkucgflathzwsijxrchymbupoq", "nkucgfeathzwsitxaevymbdpoq", "nkufjflathzwsijxresymbdpoq",
    "nkuggflatlzwsijxrevymbdpoa", "nkucgflsthnwsijxrevumbdpoq", "nkuceflathzwsnjxrevymbmpoq",
    "nkucgflabhzwsijxrevymblplq", "nkucgfmathzwsijxrevdybdpoq", "niuvgflathzwsijxrcvymbdpoq",
    "nkscgflathzwsijxrevyzbdooq", "nkucgflatszwsbjxrevymbgpoq", "nkucgflazhzwsijxcevymzdpoq",
    "nkucgflathzwsfjqrevymbdpxq", "nkucgflathcwsijxrrvymbdroq", "nkurgflathzwsijxrepymzdpoq",
    "nlucgflathzwrijxrevdmbdpoq", "kkucgflkthzwswjxrevymbdpoq", "nktcgflathzwgijxrevbmbdpoq",
    "nbucgfiathzwsijxreyymbdpoq", "lkucgflathswsijxrevymbdpxq", "ntucgflathzwswrxrevymbdpoq",
    "nkscgflathzwssjxravymbdpoq", "nuocgflathzwsijxrevyebdpoq", "nbucgllathzwsijxregymbdpoq",
    "ckucbflathzwsijxrelymbdpoq", "nkucgflathzwsijxremymbqpor", "nkgcgfljthzwsijkrevymbdpoq",
    "nkdcgflashzwsijxrjvymbdpoq", "nkecgflathzwsijxuevumbdpoq", "njucgflatpfwsijxrevymbdpoq",
    "nkucgwlathzjsijxrevymbzpoq", "nkucgfxathzqsijxrenymbdpoq", "dkfcgflathzwsijxrevymbdtoq",
    "nkupgfhathzwsijxrevymbjpoq", "nkucgflathzwsjjxrevymldooq", "pkucgfbathhwsijxrevymbdpoq",
    "nkuciflayhzwsijxrevymbdpfq", "nkucpfdathzwsajxrevymbdpoq", "ykucgflathdwsijzrevymbdpoq",
    "nkucgwlstnzwsijxrevymbdpoq", "nkucwfzazhzwsijxrevymbdpoq", "nkucgflatczwssjxretymbdpoq",
    "nkucgflathzwsijpreaymxdpoq", "ntucgflathzwsijxrepymvdpoq", "nkucgqlathzdsijxrevymbopoq",
    "nkucgflathzusijxfevymbdptq", "nkocgflathzwdijxrevymbipoq", "nklcgflatgzwsijxrevymbdsoq",
    "nkucgflathzwsgjxgevymbopoq", "nkucgflathzwuijxreaymbdyoq", "nkucgwlathzwsvjxrevymbdpos",
    "nkucrflathzwliqxrevymbdpoq", "nkucgflathzxsijxievysbdpoq", "nkufgolhthzwsijxrevymbdpoq",
    "niucgflathzwsiixrevyabdpoq", "nkucgflathzhsijxrevymbdyuq", "nkucgqlathzwsijxreaymbdpob",
    "nzucgflathzesijxrevymwdpoq", "nkucgflatlzwsirxrevymmdpoq", "nkucgfxavhzwsijxrevymbwpoq",
    "nkucgflathswsijxrevvmbdpoe", "nkucgfgethzwsrjxrevymbdpoq", "nkucgzlayhzwsinxrevymbdpoq",
    "nkucgflwthzwsiyxrevymbdpdq", "nkucgflpthzwsijxrezombdpoq", "nkurgflathdwsijxuevymbdpoq",
    "nkjcgflathzwsijxrevkmbdpoc", "nkucmflatuzwsijxrevmmbdpoq", "nkucgfldthzwsijxrevevbdpoq",
    "nkucgflatrzgsijxrevambdpoq", "nkicgflathzwsijxrevymhdhoq", "nkbcgflathzwsijxrevymxdpos",
    "nkucgflatfzwsijxrevymwdqoq", "hkucgflaqwzwsijxrevymbdpoq", "nkjcgflathzvsijxrevyjbdpoq",
    "niucgflathzwsijxrezymbdpob", "ynucgflathzwsijxremymbdpoq", "nkubgflathzwsijxrhvymldpoq",
    "nkucqflrthzesijxrevymbdpoq", "nkucgulathzwsijxrevyubdioq", "nkuczflathzwsijxaebymbdpoq",
    "nkucgfldthzwsibxrevymrdpoq", "nkucgflatwzdsijxrevymsdpoq", "nkncgffathzwsijxrejymbdpoq",
    "nkucgflathzqsijxrevxmodpoq", "nkucgflathwwsijqrevymbipoq", "nkucgflathzwhajxrebymbdpoq",
    "gkucgflathzwsijxreirmbdpoq", "nkucgflathzesijzravymbdpoq", "nkucgflaghzwsijxrerymbdplq",
    "wkucgflathxwgijxrevymbdpoq", "nkucgfljthfwsijxrevymbdpfq", "nkucgflathwwsimxrevymbdpjq",
    "nkucgdlachzwsijxrevymmdpoq", "njucgclathzwsiixrevymbdpoq", "nkucgflatdzwsijxrevymzrpoq",
    "nkuckflatvzcsijxrevymbdpoq", "nkucgflathzhsijxrevqmbkpoq", "nkucqflathzjsijvrevymbdpoq",
    "nkucgftathzwsijxrevympdpoi", "nvucgflatmzwsijxrevymbdpsq", "nkocgflathznsijxrevymbdphq",
    "mkgcgflathzwsijxrevymbdpvq", "nkucnflathzwsijbrevymbdcoq", "nkucgflathzwsijsrevymsdgoq",
    "nkuckflatxzwsiwxrevymbdpoq", "nkucyflathzwsijxrehcmbdpoq", "nkurgflajhzwsijxrevkmbdpoq",
    "wkucgflathzwsijxrfvymbapoq", "nkucgflathzwsijxaekymbdpon", "nkucgfkathywsijxrevymbdpsq",
    "nkucgflathzwsijxaexcmbdpoq", "nkucgflathzwsijxrevymddhox", "nkucgflathzwgijxrevymydooq",
    "nkycqflathzwsijxrezymbdpoq", "nkucgflathwwsijxrevymbspsq", "nkucgflatpzwssjfrevymbdpoq",
    "nkwcgflhthzwsijxrevcmbdpoq",
};

pub fn main() void {
    var two: usize = 0;
    var three: usize = 0;

    for (entries) |entry| {
        var map = []usize{0} ** 26;

        for (entry) |c| {
            const index = c - 'a';
            map[index] += 1;
        }

        var has2 = false;
        var has3 = false;

        for (map) |m| {
            if (m == 2 and !has2) {
                two += 1;
                has2 = true;
            }
            if (m == 3 and !has3) {
                three += 1;
                has3 = true;
            }
        }
    }

    std.debug.warn("{}\n", two * three);
}
