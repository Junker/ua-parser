
(IN-PACKAGE :UA-PARSER)
(DEFVAR *OS-REGEXES*
  '((:REGEX "HbbTV/\\d+\\.\\d+\\.\\d+ \\( ;(LG)E ;NetCast 4.0"
     :OS-V1-REPLACEMENT "2013")
    (:REGEX "HbbTV/\\d+\\.\\d+\\.\\d+ \\( ;(LG)E ;NetCast 3.0"
     :OS-V1-REPLACEMENT "2012")
    (:REGEX "HbbTV/1.1.1 \\(;;;;;\\) Maple_2011" :OS-REPLACEMENT "Samsung"
     :OS-V1-REPLACEMENT "2011")
    (:REGEX
     "HbbTV/\\d+\\.\\d+\\.\\d+ \\(;(Samsung);SmartTV([0-9]{4});.{0,200}FXPDEUC"
     :OS-V2-REPLACEMENT "UE40F7000")
    (:REGEX
     "HbbTV/\\d+\\.\\d+\\.\\d+ \\(;(Samsung);SmartTV([0-9]{4});.{0,200}MST12DEUC"
     :OS-V2-REPLACEMENT "UE32F4500")
    (:REGEX "HbbTV/1\\.1\\.1 \\(; (Philips);.{0,200}NETTV/4" :OS-V1-REPLACEMENT
     "2013")
    (:REGEX "HbbTV/1\\.1\\.1 \\(; (Philips);.{0,200}NETTV/3" :OS-V1-REPLACEMENT
     "2012")
    (:REGEX "HbbTV/1\\.1\\.1 \\(; (Philips);.{0,200}NETTV/2" :OS-V1-REPLACEMENT
     "2011")
    (:REGEX
     "HbbTV/\\d+\\.\\d+\\.\\d+.{0,100}(firetv)-firefox-plugin (\\d+).(\\d+).(\\d+)"
     :OS-REPLACEMENT "FireHbbTV")
    (:REGEX
     "HbbTV/\\d+\\.\\d+\\.\\d+ \\(.{0,30}; ?([a-zA-Z]+) ?;.{0,30}(201[1-9]).{0,30}\\)")
    (:REGEX "AspiegelBot|PetalBot" :OS-REPLACEMENT "Other")
    (:REGEX "(Windows Phone) (?:OS[ /])?(\\d+)\\.(\\d+)")
    (:REGEX
     "(CPU[ +]OS|iPhone[ +]OS|CPU[ +]iPhone)[ +]+(\\d+)[_\\.](\\d+)(?:[_\\.](\\d+)|).{0,100}Outlook-iOS-Android"
     :OS-REPLACEMENT "iOS")
    (:REGEX
     "ArcGIS\\.?(iOS|Android)-\\d+\\.\\d+(?:\\.\\d+|)(?:[^\\/]{1,50}|)\\/(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)")
    (:REGEX
     "ArcGISRuntime-(?:Android|iOS)\\/\\d+\\.\\d+(?:\\.\\d+|) \\((Android|iOS) (\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|);")
    (:REGEX "(Android)[ \\-/](\\d+)(?:\\.(\\d+)|)(?:[.\\-]([a-z0-9]+)|)")
    (:REGEX "(Android) Donut" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT "2")
    (:REGEX "(Android) Eclair" :OS-V1-REPLACEMENT "2" :OS-V2-REPLACEMENT "1")
    (:REGEX "(Android) Froyo" :OS-V1-REPLACEMENT "2" :OS-V2-REPLACEMENT "2")
    (:REGEX "(Android) Gingerbread" :OS-V1-REPLACEMENT "2" :OS-V2-REPLACEMENT
     "3")
    (:REGEX "(Android) Honeycomb" :OS-V1-REPLACEMENT "3")
    (:REGEX "(Android) (\\d+);")
    (:REGEX "(Android): (\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|);")
    (:REGEX
     "^UCWEB.{0,200}; (Adr) (\\d+)\\.(\\d+)(?:[.\\-]([a-z0-9]{1,100})|);"
     :OS-REPLACEMENT "Android")
    (:REGEX "^UCWEB.{0,200}; (iPad|iPh|iPd) OS (\\d+)_(\\d+)(?:_(\\d+)|);"
     :OS-REPLACEMENT "iOS")
    (:REGEX "^UCWEB.{0,200}; (wds) (\\d+)\\.(\\d+)(?:\\.(\\d+)|);"
     :OS-REPLACEMENT "Windows Phone")
    (:REGEX
     "^(JUC).{0,200}; ?U; ?(?:Android|)(\\d+)\\.(\\d+)(?:[\\.\\-]([a-z0-9]{1,100})|)"
     :OS-REPLACEMENT "Android")
    (:REGEX "(android)\\s(?:mobile\\/)(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)"
     :OS-REPLACEMENT "Android")
    (:REGEX "Quest" :OS-REPLACEMENT "Android")
    (:REGEX "(Silk-Accelerated=[a-z]{4,5})" :OS-REPLACEMENT "Android")
    (:REGEX
     "(x86_64|aarch64)\\ (\\d+)\\.(\\d+)\\.(\\d+).{0,100}Chrome.{0,100}(?:CitrixChromeApp)$"
     :OS-REPLACEMENT "Chrome OS")
    (:REGEX "(XBLWP7)" :OS-REPLACEMENT "Windows Phone")
    (:REGEX "(Windows ?Mobile)" :OS-REPLACEMENT "Windows Mobile")
    (:REGEX "(Windows 10)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "10")
    (:REGEX "(Windows (?:NT 5\\.2|NT 5\\.1))" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "XP")
    (:REGEX "(Win(?:dows NT |32NT\\/)6\\.1)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "7")
    (:REGEX "(Win(?:dows NT |32NT\\/)6\\.0)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "Vista")
    (:REGEX "(Win 9x 4\\.90)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT
     "ME")
    (:REGEX "(Windows NT 6\\.2; ARM;)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "RT")
    (:REGEX "(Win(?:dows NT |32NT\\/)6\\.2)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "8")
    (:REGEX "(Windows NT 6\\.3; ARM;)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "RT 8" :OS-V2-REPLACEMENT "1")
    (:REGEX "(Win(?:dows NT |32NT\\/)6\\.3)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "8" :OS-V2-REPLACEMENT "1")
    (:REGEX "(Win(?:dows NT |32NT\\/)6\\.4)" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "10")
    (:REGEX "(Windows NT 10\\.0)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT
     "10")
    (:REGEX "(Windows NT 5\\.0)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT
     "2000")
    (:REGEX "(WinNT4.0)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "NT 4.0")
    (:REGEX "(Windows ?CE)" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "CE")
    (:REGEX "Win(?:dows)? ?(95|98|3.1|NT|ME|2000|XP|Vista|7|CE)"
     :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "$1")
    (:REGEX "Win16" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "3.1")
    (:REGEX "Win32" :OS-REPLACEMENT "Windows" :OS-V1-REPLACEMENT "95")
    (:REGEX "^Box.{0,200}Windows/([\\d.]+);" :OS-REPLACEMENT "Windows"
     :OS-V1-REPLACEMENT "$1")
    (:REGEX "(Tizen)[/ ](\\d+)\\.(\\d+)")
    (:REGEX
     "((?:Mac[ +]?|; )OS[ +]X)[\\s+/](?:(\\d+)[_.](\\d+)(?:[_.](\\d+)|)|Mach-O)"
     :OS-REPLACEMENT "Mac OS X")
    (:REGEX "Mac OS X\\s.{1,50}\\s(\\d+).(\\d+).(\\d+)" :OS-REPLACEMENT
     "Mac OS X" :OS-V1-REPLACEMENT "$1" :OS-V2-REPLACEMENT "$2"
     :OS-V3-REPLACEMENT "$3")
    (:REGEX
     " (Dar)(win)/(9).(\\d+).{0,100}\\((?:i386|x86_64|Power Macintosh)\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "5")
    (:REGEX " (Dar)(win)/(10).(\\d+).{0,100}\\((?:i386|x86_64)\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "6")
    (:REGEX " (Dar)(win)/(11).(\\d+).{0,100}\\((?:i386|x86_64)\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "7")
    (:REGEX " (Dar)(win)/(12).(\\d+).{0,100}\\((?:i386|x86_64)\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "8")
    (:REGEX " (Dar)(win)/(13).(\\d+).{0,100}\\((?:i386|x86_64)\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "9")
    (:REGEX "Mac_PowerPC" :OS-REPLACEMENT "Mac OS")
    (:REGEX "(?:PPC|Intel) (Mac OS X)")
    (:REGEX "^Box.{0,200};(Darwin)/(10)\\.(1\\d)(?:\\.(\\d+)|)" :OS-REPLACEMENT
     "Mac OS X")
    (:REGEX "(Apple\\s?TV)(?:/(\\d+)\\.(\\d+)|)" :OS-REPLACEMENT "ATV OS X")
    (:REGEX
     "(CPU[ +]OS|iPhone[ +]OS|CPU[ +]iPhone|CPU IPhone OS|CPU iPad OS)[ +]+(\\d+)[_\\.](\\d+)(?:[_\\.](\\d+)|)"
     :OS-REPLACEMENT "iOS")
    (:REGEX "(iPhone|iPad|iPod); Opera" :OS-REPLACEMENT "iOS")
    (:REGEX "(iPhone|iPad|iPod).{0,100}Mac OS X.{0,100}Version/(\\d+)\\.(\\d+)"
     :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(5)48\\.0\\.3.{0,100} Darwin/11\\.0\\.0"
     :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(5)48\\.(0)\\.4.{0,100} Darwin/(1)1\\.0\\.0"
     :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(5)48\\.(1)\\.4" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(4)85\\.1(3)\\.9" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(6)09\\.(1)\\.4" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/(6)(0)9" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/6(7)2\\.(1)\\.13" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/6(7)2\\.(1)\\.(1)4" :OS-REPLACEMENT "iOS")
    (:REGEX "(CF)(Network)/6(7)(2)\\.1\\.15" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "7" :OS-V2-REPLACEMENT "1")
    (:REGEX "(CFNetwork)/6(7)2\\.(0)\\.(?:2|8)" :OS-REPLACEMENT "iOS")
    (:REGEX "(CFNetwork)/709\\.1" :OS-REPLACEMENT "iOS" :OS-V1-REPLACEMENT "8"
     :OS-V2-REPLACEMENT "0.b5")
    (:REGEX "(CF)(Network)/711\\.(\\d)" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "8")
    (:REGEX "(CF)(Network)/(720)\\.(\\d)" :OS-REPLACEMENT "Mac OS X"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "10")
    (:REGEX "(CF)(Network)/(760)\\.(\\d)" :OS-REPLACEMENT "Mac OS X"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "11")
    (:REGEX "CFNetwork/7.{0,100} Darwin/15\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "9" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "1")
    (:REGEX "CFNetwork/7.{0,100} Darwin/15\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "9" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "2")
    (:REGEX "CFNetwork/7.{0,100} Darwin/15\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "9" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "5")
    (:REGEX "(CF)(Network)/758\\.(\\d)" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "9")
    (:REGEX "CFNetwork/808\\.3 Darwin/16\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "2" :OS-V3-REPLACEMENT "1")
    (:REGEX "(CF)(Network)/808\\.(\\d)" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10")
    (:REGEX "CFNetwork/.{0,100} Darwin/17\\.\\d+.{0,100}\\(x86_64\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT
     "13")
    (:REGEX "CFNetwork/.{0,100} Darwin/16\\.\\d+.{0,100}\\(x86_64\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT
     "12")
    (:REGEX "CFNetwork/8.{0,100} Darwin/15\\.\\d+.{0,100}\\(x86_64\\)"
     :OS-REPLACEMENT "Mac OS X" :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT
     "11")
    (:REGEX "CFNetwork/.{0,100} Darwin/(9)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "1")
    (:REGEX "CFNetwork/.{0,100} Darwin/(10)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "4")
    (:REGEX "CFNetwork/.{0,100} Darwin/(11)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "5")
    (:REGEX "CFNetwork/.{0,100} Darwin/(13)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "6")
    (:REGEX "CFNetwork/6.{0,100} Darwin/(14)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "7")
    (:REGEX "CFNetwork/7.{0,100} Darwin/(14)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "8" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/7.{0,100} Darwin/(15)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "9" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/8.{0,100} Darwin/16\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/8.{0,100} Darwin/16\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "2")
    (:REGEX "CFNetwork/8.{0,100} Darwin/16\\.7\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "3")
    (:REGEX "CFNetwork/8.{0,100} Darwin/(16)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "10")
    (:REGEX "CFNetwork/8.{0,100} Darwin/17\\.0\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/8.{0,100} Darwin/17\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "1")
    (:REGEX "CFNetwork/8.{0,100} Darwin/17\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "2")
    (:REGEX "CFNetwork/8.{0,100} Darwin/17\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "2" :OS-V3-REPLACEMENT "6")
    (:REGEX "CFNetwork/8.{0,100} Darwin/17\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/9.{0,100} Darwin/17\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/9.{0,100} Darwin/17\\.7\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11" :OS-V2-REPLACEMENT "4" :OS-V3-REPLACEMENT "1")
    (:REGEX "CFNetwork/8.{0,100} Darwin/(17)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "11")
    (:REGEX "CFNetwork/9.{0,100} Darwin/18\\.0\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/9.{0,100} Darwin/18\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12" :OS-V2-REPLACEMENT "1")
    (:REGEX "CFNetwork/9.{0,100} Darwin/18\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12" :OS-V2-REPLACEMENT "2")
    (:REGEX "CFNetwork/9.{0,100} Darwin/18\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/9.{0,100} Darwin/18\\.7\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/9.{0,100} Darwin/(18)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "12")
    (:REGEX "CFNetwork/11.{0,100} Darwin/19\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/11.{0,100} Darwin/19\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13" :OS-V2-REPLACEMENT "3" :OS-V3-REPLACEMENT "1")
    (:REGEX "CFNetwork/11.{0,100} Darwin/19\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/11.{0,100} Darwin/19\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13" :OS-V2-REPLACEMENT "5")
    (:REGEX "CFNetwork/11.{0,100} Darwin/19\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13" :OS-V2-REPLACEMENT "6")
    (:REGEX "CFNetwork/1[01].{0,100} Darwin/19\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "13")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.1\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "2")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "5")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "6")
    (:REGEX "CFNetwork/12.{0,100} Darwin/20\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14" :OS-V2-REPLACEMENT "8")
    (:REGEX "CFNetwork/.{0,100} Darwin/(20)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "14")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.0\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.1\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "1")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "2")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.5\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "5")
    (:REGEX "CFNetwork/13.{0,100} Darwin/21\\.6\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15" :OS-V2-REPLACEMENT "6")
    (:REGEX "CFNetwork/.{0,100} Darwin/(21)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "15")
    (:REGEX "CFNetwork/.{0,100} Darwin/22\\.0\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16" :OS-V2-REPLACEMENT "0")
    (:REGEX "CFNetwork/.{0,100} Darwin/22\\.1\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16" :OS-V2-REPLACEMENT "1")
    (:REGEX "CFNetwork/.{0,100} Darwin/22\\.2\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16" :OS-V2-REPLACEMENT "2")
    (:REGEX "CFNetwork/.{0,100} Darwin/22\\.3\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16" :OS-V2-REPLACEMENT "3")
    (:REGEX "CFNetwork/.{0,100} Darwin/22\\.4\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16" :OS-V2-REPLACEMENT "4")
    (:REGEX "CFNetwork/.{0,100} Darwin/(22)\\.\\d+" :OS-REPLACEMENT "iOS"
     :OS-V1-REPLACEMENT "16")
    (:REGEX "CFNetwork/.{0,100} Darwin/" :OS-REPLACEMENT "iOS")
    (:REGEX
     "\\b(iOS[ /]|iOS; |iPhone(?:/| v|[ _]OS[/,]|; | OS : |\\d,\\d/|\\d,\\d; )|iPad/)(\\d{1,2})[_\\.](\\d{1,2})(?:[_\\.](\\d+)|)"
     :OS-REPLACEMENT "iOS")
    (:REGEX "\\((iOS);")
    (:REGEX "(watchOS)[/ ](\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :OS-REPLACEMENT
     "WatchOS")
    (:REGEX "Outlook-(iOS)/\\d+\\.\\d+\\.prod\\.iphone")
    (:REGEX "(iPod|iPhone|iPad)" :OS-REPLACEMENT "iOS")
    (:REGEX "(tvOS)[/ ](\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :OS-REPLACEMENT "tvOS")
    (:REGEX "(CrOS) [a-z0-9_]+ (\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :OS-REPLACEMENT
     "Chrome OS")
    (:REGEX "([Dd]ebian)" :OS-REPLACEMENT "Debian")
    (:REGEX "(Linux Mint)(?:/(\\d+)|)")
    (:REGEX "(Mandriva)(?: Linux|)/(?:[\\d.-]+m[a-z]{2}(\\d+).(\\d)|)")
    (:REGEX "(Symbian[Oo][Ss])[/ ](\\d+)\\.(\\d+)" :OS-REPLACEMENT
     "Symbian OS")
    (:REGEX "(Symbian/3).{1,200}NokiaBrowser/7\\.3" :OS-REPLACEMENT
     "Symbian^3 Anna")
    (:REGEX "(Symbian/3).{1,200}NokiaBrowser/7\\.4" :OS-REPLACEMENT
     "Symbian^3 Belle")
    (:REGEX "(Symbian/3)" :OS-REPLACEMENT "Symbian^3")
    (:REGEX "\\b(Series 60|SymbOS|S60Version|S60V\\d|S60\\b)" :OS-REPLACEMENT
     "Symbian OS")
    (:REGEX "(MeeGo)") (:REGEX "Symbian [Oo][Ss]" :OS-REPLACEMENT "Symbian OS")
    (:REGEX "Series40;" :OS-REPLACEMENT "Nokia Series 40")
    (:REGEX "Series30Plus;" :OS-REPLACEMENT "Nokia Series 30 Plus")
    (:REGEX "(BB10);.{1,200}Version/(\\d+)\\.(\\d+)\\.(\\d+)" :OS-REPLACEMENT
     "BlackBerry OS")
    (:REGEX "(Black[Bb]erry)[0-9a-z]+/(\\d+)\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :OS-REPLACEMENT "BlackBerry OS")
    (:REGEX
     "(Black[Bb]erry).{1,200}Version/(\\d+)\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :OS-REPLACEMENT "BlackBerry OS")
    (:REGEX "(RIM Tablet OS) (\\d+)\\.(\\d+)\\.(\\d+)" :OS-REPLACEMENT
     "BlackBerry Tablet OS")
    (:REGEX "(Play[Bb]ook)" :OS-REPLACEMENT "BlackBerry Tablet OS")
    (:REGEX "(Black[Bb]erry)" :OS-REPLACEMENT "BlackBerry OS")
    (:REGEX "(K[Aa][Ii]OS)\\/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :OS-REPLACEMENT
     "KaiOS")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/18.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT "0"
     :OS-V3-REPLACEMENT "1")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/18.1 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT
     "1")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/26.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT
     "2")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/28.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT
     "3")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/30.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "1" :OS-V2-REPLACEMENT
     "4")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/32.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "2" :OS-V2-REPLACEMENT
     "0")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Gecko/34.0 Firefox/\\d+\\.\\d+"
     :OS-REPLACEMENT "Firefox OS" :OS-V1-REPLACEMENT "2" :OS-V2-REPLACEMENT
     "1")
    (:REGEX "\\((?:Mobile|Tablet);.{1,200}Firefox/\\d+\\.\\d+" :OS-REPLACEMENT
     "Firefox OS")
    (:REGEX "(BREW)[ /](\\d+)\\.(\\d+)\\.(\\d+)") (:REGEX "(BREW);")
    (:REGEX "(Brew MP|BMP)[ /](\\d+)\\.(\\d+)\\.(\\d+)" :OS-REPLACEMENT
     "Brew MP")
    (:REGEX "BMP;" :OS-REPLACEMENT "Brew MP")
    (:REGEX "(GoogleTV)(?: (\\d+)\\.(\\d+)(?:\\.(\\d+)|)|/[\\da-z]+)")
    (:REGEX "(WebTV)/(\\d+).(\\d+)")
    (:REGEX "(CrKey)(?:[/](\\d+)\\.(\\d+)(?:\\.(\\d+)|)|)" :OS-REPLACEMENT
     "Chromecast")
    (:REGEX "(hpw|web)OS/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :OS-REPLACEMENT
     "webOS")
    (:REGEX "(VRE);")
    (:REGEX
     "(Fedora|Red Hat|PCLinuxOS|Puppy|Ubuntu|Kindle|Bada|Sailfish|Lubuntu|BackTrack|Slackware|(?:Free|Open|Net|\\b)BSD)[/ ](\\d+)\\.(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(Linux)[ /](\\d+)\\.(\\d+)(?:\\.(\\d+)|).{0,100}gentoo"
     :OS-REPLACEMENT "Gentoo")
    (:REGEX "\\((Bada);") (:REGEX "(Windows|Android|WeTab|Maemo|Web0S)")
    (:REGEX
     "(Ubuntu|Kubuntu|Arch Linux|CentOS|Slackware|Gentoo|openSUSE|SUSE|Red Hat|Fedora|PCLinuxOS|Mageia|SerenityOS|(?:Free|Open|Net|\\b)BSD)")
    (:REGEX "(Linux)(?:[ /](\\d+)\\.(\\d+)(?:\\.(\\d+)|)|)")
    (:REGEX "SunOS" :OS-REPLACEMENT "Solaris")
    (:REGEX "\\(linux-gnu\\)" :OS-REPLACEMENT "Linux")
    (:REGEX "\\(x86_64-redhat-linux-gnu\\)" :OS-REPLACEMENT "Red Hat")
    (:REGEX "\\((freebsd)(\\d+)\\.(\\d+)\\)" :OS-REPLACEMENT "FreeBSD")
    (:REGEX "linux" :OS-REPLACEMENT "Linux")
    (:REGEX "^(Roku)/DVP-(\\d+)\\.(\\d+)")))
(DEFVAR *DEVICE-REGEXES*
  '((:REGEX
     "^.{0,100}?(?:(?:iPhone|Windows CE|Windows Phone|Android).{0,300}(?:(?:Bot|Yeti)-Mobile|YRSpider|BingPreview|bots?/\\d|(?:bot|spider)\\.html)|AdsBot-Google-Mobile.{0,200}iPhone)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Spider" :BRAND-REPLACEMENT "Spider"
     :MODEL-REPLACEMENT "Smartphone")
    (:REGEX
     "^.{0,100}?(?:DoCoMo|\\bMOT\\b|\\bLG\\b|Nokia|Samsung|SonyEricsson).{0,200}(?:(?:Bot|Yeti)-Mobile|bots?/\\d|(?:bot|crawler)\\.html|(?:jump|google|Wukong)bot|ichiro/mobile|/spider|YahooSeeker)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Spider" :BRAND-REPLACEMENT "Spider"
     :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX " PTST/\\d+(?:\\.\\d+|)$" :DEVICE-REPLACEMENT "Spider"
     :BRAND-REPLACEMENT "Spider")
    (:REGEX "X11; Datanyze; Linux" :DEVICE-REPLACEMENT "Spider"
     :BRAND-REPLACEMENT "Spider")
    (:REGEX "Mozilla.{1,100}Mobile.{1,100}(AspiegelBot|PetalBot)"
     :DEVICE-REPLACEMENT "Spider" :BRAND-REPLACEMENT "Spider"
     :MODEL-REPLACEMENT "Smartphone")
    (:REGEX "Mozilla.{0,200}(AspiegelBot|PetalBot)" :DEVICE-REPLACEMENT
     "Spider" :BRAND-REPLACEMENT "Spider" :MODEL-REPLACEMENT "Desktop")
    (:REGEX
     "\\bSmartWatch {0,2}\\( {0,2}([^;]{1,200}) {0,2}; {0,2}([^;]{1,200}) {0,2};"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "Android Application[^\\-]{1,300} - (Sony) ?(Ericsson|) (.{1,200}) \\w{1,20} - "
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1$2" :MODEL-REPLACEMENT
     "$3")
    (:REGEX
     "Android Application[^\\-]{1,300} - (?:HTC|HUAWEI|LGE|LENOVO|MEDION|TCT) (HTC|HUAWEI|LG|LENOVO|MEDION|ALCATEL)[ _\\-](.{1,200}) \\w{1,20} - "
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "Android Application[^\\-]{1,300} - ([^ ]+) (.{1,200}) \\w{1,20} - "
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}([BLRQ]C\\d{4}[A-Z]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "3Q $1" :BRAND-REPLACEMENT "3Q" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:3Q_)([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "3Q $1" :BRAND-REPLACEMENT "3Q" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "Android [34].{0,200}; {0,2}(A100|A101|A110|A200|A210|A211|A500|A501|A510|A511|A700(?: Lite| 3G|)|A701|B1-A71|A1-\\d{3}|B1-\\d{3}|V360|V370|W500|W500P|W501|W501P|W510|W511|W700|Slider SL101|DA22[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Acer" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}Acer Iconia Tab ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Acer" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(Z1[1235]0|E320[^/]{0,10}|S500|S510|Liquid[^;/]{0,30}|Iconia A\\d+)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Acer" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Acer |ACER )([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Acer" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(Advent |)(Vega(?:Bean|Comb|)).{0,200}?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Advent" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(Ainol |)((?:NOVO|[Nn]ovo)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Ainol" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}AIRIS[ _\\-]?([^/;\\)]+) {0,2}(?:;|\\)|Build)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Airis" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(OnePAD[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Airis"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}Airpad[ \\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Airpad $1" :BRAND-REPLACEMENT "Airpad"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(one ?touch) (EVO7|T10|T20)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Alcatel One Touch $2" :BRAND-REPLACEMENT "Alcatel"
     :MODEL-REPLACEMENT "One Touch $2")
    (:REGEX
     "; {0,2}(?:alcatel[ _]|)(?:(?:one[ _]?touch[ _])|ot[ \\-])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Alcatel One Touch $1"
     :BRAND-REPLACEMENT "Alcatel" :MODEL-REPLACEMENT "One Touch $1")
    (:REGEX "; {0,2}(TCL)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(Vodafone Smart II|Optimus_Madrid)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Alcatel $1" :BRAND-REPLACEMENT "Alcatel"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}BASE_Lutea_3(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Alcatel One Touch 998" :BRAND-REPLACEMENT "Alcatel" :MODEL-REPLACEMENT
     "One Touch 998")
    (:REGEX "; {0,2}BASE_Varia(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Alcatel One Touch 918D" :BRAND-REPLACEMENT "Alcatel" :MODEL-REPLACEMENT
     "One Touch 918D")
    (:REGEX "; {0,2}((?:FINE|Fine)\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Allfine" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(ALLVIEW[ _]?|Allview[ _]?)((?:Speed|SPEED).{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Allview" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(ALLVIEW[ _]?|Allview[ _]?|)(AX1_Shine|AX2_Frenzy)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Allview" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(ALLVIEW[ _]?|Allview[ _]?)([^;/]*?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Allview" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(A13-MID)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Allwinner" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Allwinner)[ _\\-]?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Allwinner"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(A651|A701B?|A702|A703|A705|A706|A707|A711|A712|A713|A717|A722|A785|A801|A802|A803|A901|A902|A1002|A1003|A1006|A1007|A9701|A9703|Q710|Q80)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Amaway" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:AMOI|Amoi)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Amoi $1" :BRAND-REPLACEMENT "Amoi" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "^(?:AMOI|Amoi)[ _]([^;/]{1,100}?) Linux" :DEVICE-REPLACEMENT
     "Amoi $1" :BRAND-REPLACEMENT "Amoi" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(MW(?:0[789]|10)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Aoc" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(G7|M1013|M1015G|M11[CG]?|M-?12[B]?|M15|M19[G]?|M30[ACQ]?|M31[GQ]|M32|M33[GQ]|M36|M37|M38|M701T|M710|M712B|M713|M715G|M716G|M71(?:G|GS|T|)|M72[T]?|M73[T]?|M75[GT]?|M77G|M79T|M7L|M7LN|M81|M810|M81T|M82|M92|M92KS|M92S|M717G|M721|M722G|M723|M725G|M739|M785|M791|M92SK|M93D)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Aoson $1" :BRAND-REPLACEMENT "Aoson"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}Aoson ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Aoson $1" :BRAND-REPLACEMENT "Aoson"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}[Aa]panda[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Apanda $1" :BRAND-REPLACEMENT "Apanda"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:ARCHOS|Archos) ?(GAMEPAD.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Archos $1" :BRAND-REPLACEMENT "Archos"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "ARCHOS; GOGI; ([^;]{1,200});" :DEVICE-REPLACEMENT "Archos $1"
     :BRAND-REPLACEMENT "Archos" :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:ARCHOS|Archos)[ _]?(.{0,200}?)(?: Build|[;/\\(\\)\\-]|$)"
     :DEVICE-REPLACEMENT "Archos $1" :BRAND-REPLACEMENT "Archos"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(AN(?:7|8|9|10|13)[A-Z0-9]{1,4})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Archos $1" :BRAND-REPLACEMENT "Archos"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(A28|A32|A43|A70(?:BHT|CHT|HB|S|X)|A101(?:B|C|IT)|A7EB|A7EB-WK|101G9|80G9)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Archos $1" :BRAND-REPLACEMENT "Archos"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(PAD-FMD[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Arival" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(BioniQ) ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Arival" :MODEL-REPLACEMENT
     "$1 $2")
    (:REGEX "; {0,2}(AN\\d[^;/]{1,100}|ARCHM\\d+)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Arnova $1" :BRAND-REPLACEMENT "Arnova"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:ARNOVA|Arnova) ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Arnova $1" :BRAND-REPLACEMENT "Arnova"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:ASSISTANT |)(AP)-?([1789]\\d{2}[A-Z]{0,2}|80104)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Assistant $1-$2" :BRAND-REPLACEMENT "Assistant"
     :MODEL-REPLACEMENT "$1-$2")
    (:REGEX
     "; {0,2}(ME17\\d[^;/]*|ME3\\d{2}[^;/]{1,100}|K00[A-Z]|Nexus 10|Nexus 7(?: 2013|)|PadFone[^;/]*|Transformer[^;/]*|TF\\d{3}[^;/]*|eeepc)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Asus $1" :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}ASUS[ _]{0,10}([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Asus $1" :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}Garmin-Asus ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Garmin-Asus $1" :BRAND-REPLACEMENT "Garmin-Asus"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Garminfone)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Garmin $1" :BRAND-REPLACEMENT "Garmin-Asus" :MODEL-REPLACEMENT "$1")
    (:REGEX "; (@TAB-[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Attab" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(T-(?:07|[^0]\\d)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Audiosonic"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:Axioo[ _\\-]([^;/]{1,100}?)|(picopad)[ _\\-]([^;/]{1,100}?))(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Axioo $1$2 $3" :BRAND-REPLACEMENT
     "Axioo" :MODEL-REPLACEMENT "$1$2 $3")
    (:REGEX "; {0,2}(V(?:100|700|800)[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Azend" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IBAK\\-[^;/]*)(?: Build|\\) AppleWebKit)" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Bak" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(HY5001|HY6501|X12|X21|I5)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Bedove $1" :BRAND-REPLACEMENT "Bedove"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(JC-[^;/]*)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Benss $1" :BRAND-REPLACEMENT "Benss" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(BB) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Blackberry"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(BlackBird)[ _](I8.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(BlackBird)[ _](.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}([0-9]+BP[EM][^;/]*|Endeavour[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Blaupunkt $1" :BRAND-REPLACEMENT "Blaupunkt"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}((?:BLU|Blu)[ _\\-])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Blu" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(?:BMOBILE )?(Blu|BLU|DASH [^;/]{1,100}|VIVO 4\\.3|TANK 4\\.5)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Blu" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(TOUCH\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Blusens" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(AX5\\d+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Bmobile" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([Bb]q) ([^;/]{1,100}?);?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "bq" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(Maxwell [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "bq" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}((?:B-Tab|B-TAB) ?\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Braun" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Broncho) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}CAPTIVA ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Captiva $1" :BRAND-REPLACEMENT "Captiva"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(C771|CAL21|IS11CA)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Casio" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:Cat|CAT) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Cat $1" :BRAND-REPLACEMENT "Cat" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:Cat)(Nova.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Cat $1" :BRAND-REPLACEMENT "Cat" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(INM8002KP|ADM8000KP_[AB])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Cat" :MODEL-REPLACEMENT
     "Tablet PHOENIX 8.1J0")
    (:REGEX
     "; {0,2}(?:[Cc]elkon[ _\\*]|CELKON[ _\\*])([^;/\\)]+) ?(?:Build|;|\\))"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Celkon" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "Build/(?:[Cc]elkon)+_?([^;/_\\)]+)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Celkon" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(CT)-?(\\d+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1$2" :BRAND-REPLACEMENT "Celkon" :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}(A19|A19Q|A105|A107[^;/\\)]*) ?(?:Build|;|\\))"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Celkon" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TPC[0-9]{4,5})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "ChangJia" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(Cloudfone)[ _](Excite)([^ ][^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2 $3" :BRAND-REPLACEMENT "Cloudfone"
     :MODEL-REPLACEMENT "$1 $2 $3")
    (:REGEX
     "; {0,2}(Excite|ICE)[ _](\\d+[^;/]{0,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Cloudfone $1 $2" :BRAND-REPLACEMENT "Cloudfone"
     :MODEL-REPLACEMENT "Cloudfone $1 $2")
    (:REGEX
     "; {0,2}(Cloudfone|CloudPad)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Cloudfone"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}((?:Aquila|Clanga|Rapax)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Cmx"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:CFW-|Kyros )?(MID[0-9]{4}(?:[ABC]|SR|TV)?)(\\(3G\\)-4G| GB 8K| 3G| 8K| GB)? {0,2}(?:Build|[;\\)])"
     :DEVICE-REPLACEMENT "CobyKyros $1$2" :BRAND-REPLACEMENT "CobyKyros"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX
     "; {0,2}([^;/]{0,50})Coolpad[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Coolpad" :MODEL-REPLACEMENT
     "$1$2")
    (:REGEX
     "; {0,2}(CUBE[ _])?([KU][0-9]+ ?GT.{0,200}?|A5300)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Cube"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}CUBOT ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Cubot"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(BOBBY)(?: Build|\\) AppleWebKit)" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Cubot" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Dslide [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Danew" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(XCD)[ _]?(28|35)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1$2" :BRAND-REPLACEMENT "Dell"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}(001DL)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT "Streak")
    (:REGEX "; {0,2}(?:Dell|DELL) (Streak)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "Streak")
    (:REGEX
     "; {0,2}(101DL|GS01|Streak Pro[^;/]{0,100})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "Streak Pro")
    (:REGEX "; {0,2}([Ss]treak ?7)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "Streak 7")
    (:REGEX "; {0,2}(Mini-3iX)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:Dell|DELL)[ _](Aero|Venue|Thunder|Mini.{0,200}?|Streak[ _]Pro)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}Dell[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TA[CD]-\\d+[^;/]{0,100})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Denver" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(iP[789]\\d{2}(?:-3G)?|IP10\\d{2}(?:-8GB)?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Dex" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(AirTab)[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "DNS" :MODEL-REPLACEMENT
     "$1 $2")
    (:REGEX "; {0,2}(F\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Fujitsu" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(HT-03A)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "Magic")
    (:REGEX "; {0,2}(HT\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(L\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(N\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Nec" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(P\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Panasonic" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SC\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Samsung" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SH\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sharp" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SO\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "SonyEricsson"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(T\\-0[12][^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Toshiba" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(DOOV)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "DOOV" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(Enot|ENOT)[ -]?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Enot" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}[^;/]{1,100} Build/(?:CROSS|Cross)+[ _\\-]([^\\)]+)"
     :DEVICE-REPLACEMENT "CROSS $1" :BRAND-REPLACEMENT "Evercoss"
     :MODEL-REPLACEMENT "Cross $1")
    (:REGEX
     "; {0,2}(CROSS|Cross)[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Evercoss"
     :MODEL-REPLACEMENT "Cross $2")
    (:REGEX "; {0,2}Explay[_ ](.{1,200}?)(?:[\\)]| Build)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Explay" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(IQ.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Fly" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Fly|FLY)[ _](IQ[^;]{1,100}?|F[34]\\d+[^;]{0,100}?);?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Fly" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(M532|Q572|FJL21)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Fujitsu" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(G1)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Galapad" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Geeksphone) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(G[^F]?FIVE) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Gfive" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(Gionee)[ _\\-]([^;/]{1,100}?)(?:/[^;/]{1,100}|)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Gionee"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(GN\\d+[A-Z]?|INFINITY_PASSION|Ctrl_V1)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Gionee $1" :BRAND-REPLACEMENT "Gionee"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(E3) Build/JOP40D" :DEVICE-REPLACEMENT "Gionee $1"
     :BRAND-REPLACEMENT "Gionee" :MODEL-REPLACEMENT "$1")
    (:REGEX "\\sGIONEE[-\\s_](\\w*)" :REGEX-FLAG "i" :DEVICE-REPLACEMENT
     "Gionee $1" :BRAND-REPLACEMENT "Gionee" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}((?:FONE|QUANTUM|INSIGNIA) \\d+[^;/]{0,100}|PLAYTAB)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "GoClever $1" :BRAND-REPLACEMENT "GoClever"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}GOCLEVER ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "GoClever $1" :BRAND-REPLACEMENT "GoClever"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Glass \\d+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Google" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}([g|G]oogle)? (Pixel[ a-zA-z0-9]{1,100});(?: Build|.{0,50}\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$2" :BRAND-REPLACEMENT "Google" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}([g|G]oogle)? (Pixel.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$2" :BRAND-REPLACEMENT "Google" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(GSmart)[ -]([^/]{1,50})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Gigabyte"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(imx5[13]_[^/]{1,50})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Freescale $1" :BRAND-REPLACEMENT "Freescale"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}Haier[ _\\-]([^/]{1,50})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Haier $1" :BRAND-REPLACEMENT "Haier"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(PAD1016)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Haipad $1" :BRAND-REPLACEMENT "Haipad" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(M701|M7|M8|M9)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Haipad $1" :BRAND-REPLACEMENT "Haipad"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(SN\\d+T[^;\\)/]*)(?: Build|[;\\)])" :DEVICE-REPLACEMENT
     "Hannspree $1" :BRAND-REPLACEMENT "Hannspree" :MODEL-REPLACEMENT "$1")
    (:REGEX "Build/HCL ME Tablet ([^;\\)]{1,3})[\\);]" :DEVICE-REPLACEMENT
     "HCLme $1" :BRAND-REPLACEMENT "HCLme" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([^;\\/]+) Build/HCL" :DEVICE-REPLACEMENT "HCLme $1"
     :BRAND-REPLACEMENT "HCLme" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(MID-?\\d{4}C[EM])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Hena $1" :BRAND-REPLACEMENT "Hena" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(EG\\d{2,}|HS-[^;/]{1,100}|MIRA[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Hisense $1" :BRAND-REPLACEMENT "Hisense"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(andromax[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Hisense $1" :BRAND-REPLACEMENT
     "Hisense" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:AMAZE[ _](S\\d+)|(S\\d+)[ _]AMAZE)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "AMAZE $1$2" :BRAND-REPLACEMENT "hitech"
     :MODEL-REPLACEMENT "AMAZE $1$2")
    (:REGEX "; {0,2}(PlayBook)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "HP $1" :BRAND-REPLACEMENT "HP" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}HP ([^/]{1,50})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "HP $1" :BRAND-REPLACEMENT "HP" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}([^/]{1,30}_tenderloin)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "HP TouchPad" :BRAND-REPLACEMENT "HP"
     :MODEL-REPLACEMENT "TouchPad")
    (:REGEX
     "; {0,2}(HUAWEI |Huawei-|)([UY][^;/]{1,100}) Build/(?:Huawei|HUAWEI)([UY][^\\);]+)\\)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}([^;/]{1,100}) Build[/ ]Huawei(MT1-U06|[A-Z]{1,50}\\d+[^\\);]{1,50})\\)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(S7|M860) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((?:HUAWEI|Huawei)[ \\-]?)(MediaPad) Build"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}((?:HUAWEI[ _]?|Huawei[ _]|)Ascend[ _])([^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}((?:HUAWEI|Huawei)[ _\\-]?)((?:G700-|MT-)[^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}((?:HUAWEI|Huawei)[ _\\-]?)([^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(MediaPad[^;]{1,200}|SpringBoard) Build/Huawei"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}([^;]{1,200}) Build/(?:Huawei|HUAWEI)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([Uu])([89]\\d{3}) Build" :DEVICE-REPLACEMENT "$1$2"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "U$2")
    (:REGEX "; {0,2}(?:Ideos |IDEOS )(S7) Build" :DEVICE-REPLACEMENT
     "Huawei Ideos$1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "Ideos$1")
    (:REGEX "; {0,2}(?:Ideos |IDEOS )([^;/]{1,50}\\s{0,5}|\\s{0,5})Build"
     :DEVICE-REPLACEMENT "Huawei Ideos$1" :BRAND-REPLACEMENT "Huawei"
     :MODEL-REPLACEMENT "Ideos$1")
    (:REGEX
     "; {0,2}(Orange Daytona|Pulse|Pulse Mini|Vodafone 858|C8500|C8600|C8650|C8660|Nexus 6P|ATH-.{1,200}?) Build[/ ]"
     :DEVICE-REPLACEMENT "Huawei $1" :BRAND-REPLACEMENT "Huawei"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((?:[A-Z]{3})\\-L[A-Za0-9]{2})[\\)]" :DEVICE-REPLACEMENT
     "Huawei $1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([^;]{1,200}) Build/(HONOR|Honor)" :DEVICE-REPLACEMENT
     "Huawei Honor $1" :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT
     "Honor $1")
    (:REGEX "; {0,2}HTC[ _]([^;]{1,200}); Windows Phone" :DEVICE-REPLACEMENT
     "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:HTC[ _/])+([^ _/]+)(?:[/\\\\]1\\.0 | V|/| +)\\d+\\.\\d[\\d\\.]*(?: {0,2}Build|\\))"
     :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:HTC[ _/])+([^ _/]+)(?:[ _/]([^ _/]+)|)(?:[/\\\\]1\\.0 | V|/| +)\\d+\\.\\d[\\d\\.]*(?: {0,2}Build|\\))"
     :DEVICE-REPLACEMENT "HTC $1 $2" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}(?:HTC[ _/])+([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ _/]+)|)|)(?:[/\\\\]1\\.0 | V|/| +)\\d+\\.\\d[\\d\\.]*(?: {0,2}Build|\\))"
     :DEVICE-REPLACEMENT "HTC $1 $2 $3" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2 $3")
    (:REGEX
     "; {0,2}(?:HTC[ _/])+([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ _/]+)|)|)|)(?:[/\\\\]1\\.0 | V|/| +)\\d+\\.\\d[\\d\\.]*(?: {0,2}Build|\\))"
     :DEVICE-REPLACEMENT "HTC $1 $2 $3 $4" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2 $3 $4")
    (:REGEX
     "; {0,2}(?:(?:HTC|htc)(?:_blocked|)[ _/])+([^ _/;]+)(?: {0,2}Build|[;\\)]| - )"
     :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:(?:HTC|htc)(?:_blocked|)[ _/])+([^ _/]+)(?:[ _/]([^ _/;\\)]+)|)(?: {0,2}Build|[;\\)]| - )"
     :DEVICE-REPLACEMENT "HTC $1 $2" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}(?:(?:HTC|htc)(?:_blocked|)[ _/])+([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ _/;\\)]+)|)|)(?: {0,2}Build|[;\\)]| - )"
     :DEVICE-REPLACEMENT "HTC $1 $2 $3" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2 $3")
    (:REGEX
     "; {0,2}(?:(?:HTC|htc)(?:_blocked|)[ _/])+([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ _/]+)(?:[ _/]([^ /;]+)|)|)|)(?: {0,2}Build|[;\\)]| - )"
     :DEVICE-REPLACEMENT "HTC $1 $2 $3 $4" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2 $3 $4")
    (:REGEX
     "HTC Streaming Player [^\\/]{0,30}/[^\\/]{0,10}/ htc_([^/]{1,10}) /"
     :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "(?:[;,] {0,2}|^)(?:htccn_chs-|)HTC[ _-]?([^;]{1,200}?)(?: {0,2}Build|clay|Android|-?Mozilla| Opera| Profile| UNTRUSTED|[;/\\(\\)]|$)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(A6277|ADR6200|ADR6300|ADR6350|ADR6400[A-Z]*|ADR6425[A-Z]*|APX515CKT|ARIA|Desire[^_ ]*|Dream|EndeavorU|Eris|Evo|Flyer|HD2|Hero|HERO200|Hero CDMA|HTL21|Incredible|Inspire[A-Z0-9]*|Legend|Liberty|Nexus ?(?:One|HD2)|One|One S C2|One[ _]?(?:S|V|X\\+?)\\w*|PC36100|PG06100|PG86100|S31HT|Sensation|Wildfire)(?: Build|[/;\\(\\)])"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(ADR6200|ADR6400L|ADR6425LVW|Amaze|DesireS?|EndeavorU|Eris|EVO|Evo\\d[A-Z]+|HD2|IncredibleS?|Inspire[A-Z0-9]*|Inspire[A-Z0-9]*|Sensation[A-Z0-9]*|Wildfire)[ _-](.{1,200}?)(?:[/;\\)]|Build|MIUI|1\\.0)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "HTC $1 $2" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}HYUNDAI (T\\d[^/]{0,10})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Hyundai $1" :BRAND-REPLACEMENT "Hyundai"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}HYUNDAI ([^;/]{1,10}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Hyundai $1" :BRAND-REPLACEMENT "Hyundai"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(X700|Hold X|MB-6900)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Hyundai $1" :BRAND-REPLACEMENT "Hyundai"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:iBall[ _\\-]|)(Andi)[ _]?(\\d[^;/]*)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "iBall"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(IBall)(?:[ _]([^;/]{1,100}?)|)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "iBall"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(NT-\\d+[^ ;/]{0,50}|Net[Tt]AB [^;/]{1,50}|Mercury [A-Z]{1,50}|iconBIT)(?: S/N:[^;/]{1,50}|)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "IconBIT" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IMO)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "IMO"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}i-?mobile[ _]([^/]{1,50})(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "i-mobile $1" :BRAND-REPLACEMENT
     "imobile" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(i-(?:style|note)[^/]{0,10})(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "i-mobile $1" :BRAND-REPLACEMENT
     "imobile" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(ImPAD) ?(\\d+(?:.){0,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Impression"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(Infinix)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Infinix"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Informer)[ \\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Informer"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(TAB) ?([78][12]4)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Intenso $1" :BRAND-REPLACEMENT "Intenso"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}(?:Intex[ _]|)(AQUA|Aqua)([ _\\.\\-])([^;/]{1,100}?) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1$2$3" :BRAND-REPLACEMENT "Intex" :MODEL-REPLACEMENT
     "$1 $3")
    (:REGEX
     "; {0,2}(?:INTEX|Intex)(?:[_ ]([^\\ _;/]+))(?:[_ ]([^\\ _;/]+)|) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Intex" :MODEL-REPLACEMENT
     "$1 $2")
    (:REGEX
     "; {0,2}([iI]Buddy)[ _]?(Connect)(?:_|\\?_| |)([^;/]{0,50}) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1 $2 $3" :BRAND-REPLACEMENT "Intex"
     :MODEL-REPLACEMENT "iBuddy $2 $3")
    (:REGEX "; {0,2}(I-Buddy)[ _]([^;/]{1,100}?) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Intex" :MODEL-REPLACEMENT
     "iBuddy $2")
    (:REGEX "; {0,2}(iOCEAN) ([^/]{1,50})(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "iOCEAN"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(TP\\d+(?:\\.\\d+|)\\-\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "ionik $1" :BRAND-REPLACEMENT "ionik"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(M702pro)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Iru" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}itel ([^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Itel $1" :BRAND-REPLACEMENT "Itel" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(DE88Plus|MD70)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Ivio" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}IVIO[_\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Ivio" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TPC-\\d+|JAY-TECH)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Jaytech" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(JY-[^;/]{1,100}|G[234]S?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Jiayu" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(JXD)[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "JXD" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}Karbonn[ _]?([^;/]{1,100}) {0,2}(?:Build|;)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Karbonn"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([^;]{1,200}) Build/Karbonn" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Karbonn" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(A11|A39|A37|A34|ST8|ST10|ST7|Smart Tab3|Smart Tab2|Titanium S\\d) +Build"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Karbonn" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IS01|IS03|IS05|IS\\d{2}SH)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sharp" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IS04)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Regza" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(IS06|IS\\d{2}PT)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Pantech" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IS11S)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "SonyEricsson" :MODEL-REPLACEMENT "Xperia Acro")
    (:REGEX "; {0,2}(IS11CA)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Casio" :MODEL-REPLACEMENT "GzOne $1")
    (:REGEX "; {0,2}(IS11LG)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "Optimus X")
    (:REGEX "; {0,2}(IS11N)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Medias" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(IS11PT)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Pantech" :MODEL-REPLACEMENT "MIRACH")
    (:REGEX "; {0,2}(IS12F)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Fujitsu" :MODEL-REPLACEMENT "Arrows ES")
    (:REGEX "; {0,2}(IS12M)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "XT909")
    (:REGEX "; {0,2}(IS12S)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "SonyEricsson" :MODEL-REPLACEMENT "Xperia Acro HD")
    (:REGEX "; {0,2}(ISW11F)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Fujitsu" :MODEL-REPLACEMENT "Arrowz Z")
    (:REGEX "; {0,2}(ISW11HT)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "EVO")
    (:REGEX "; {0,2}(ISW11K)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Kyocera" :MODEL-REPLACEMENT "DIGNO")
    (:REGEX "; {0,2}(ISW11M)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "Photon")
    (:REGEX "; {0,2}(ISW11SC)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Samsung" :MODEL-REPLACEMENT "GALAXY S II WiMAX")
    (:REGEX "; {0,2}(ISW12HT)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "EVO 3D")
    (:REGEX "; {0,2}(ISW13HT)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "J")
    (:REGEX "; {0,2}(ISW?[0-9]{2}[A-Z]{0,2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "KDDI" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(INFOBAR [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "KDDI" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(JOYPAD|Joypad)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Kingcom"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(Vox|VOX|Arc|K080)(?: Build|\\) AppleWebKit)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Kobo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "\\b(Kobo Touch)\\b" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT
     "Kobo" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(K-Touch)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Ktouch"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}((?:EV|KM)-S\\d+[A-Z]?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "KTtech"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Zio|Hydro|Torque|Event|EVENT|Echo|Milano|Rise|URBANO PROGRESSO|WX04K|WX06K|WX10K|KYL21|101K|C5[12]\\d{2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Kyocera" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:LAVA[ _]|)IRIS[ _\\-]?([^/;\\)]+) {0,2}(?:;|\\)|Build)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Iris $1" :BRAND-REPLACEMENT "Lava"
     :MODEL-REPLACEMENT "Iris $1")
    (:REGEX "; {0,2}LAVA[ _]([^;/]{1,100}) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Lava" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:(Aspire A1)|(?:LEMON|Lemon)[ _]([^;/]{1,100}))_?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Lemon $1$2" :BRAND-REPLACEMENT "Lemon"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}(TAB-1012)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Lenco $1" :BRAND-REPLACEMENT "Lenco" :MODEL-REPLACEMENT "$1")
    (:REGEX "; Lenco ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Lenco $1" :BRAND-REPLACEMENT "Lenco"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(A1_07|A2107A-H|S2005A-H|S1-37AH0) Build"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Idea[Tp]ab)[ _]([^;/]{1,100});? Build" :DEVICE-REPLACEMENT
     "Lenovo $1 $2" :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(Idea(?:Tab|pad)) ?([^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "Lenovo $1 $2" :BRAND-REPLACEMENT "Lenovo"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(ThinkPad) ?(Tablet) Build/" :DEVICE-REPLACEMENT
     "Lenovo $1 $2" :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}(?:LNV-|)(?:=?[Ll]enovo[ _\\-]?|LENOVO[ _])(.{1,200}?)(?:Build|[;/\\)])"
     :DEVICE-REPLACEMENT "Lenovo $1" :BRAND-REPLACEMENT "Lenovo"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "[;,] (?:Vodafone |)(SmartTab) ?(II) ?(\\d+) Build/"
     :DEVICE-REPLACEMENT "Lenovo $1 $2 $3" :BRAND-REPLACEMENT "Lenovo"
     :MODEL-REPLACEMENT "$1 $2 $3")
    (:REGEX "; {0,2}(?:Ideapad |)K1 Build/" :DEVICE-REPLACEMENT
     "Lenovo Ideapad K1" :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT
     "Ideapad K1")
    (:REGEX "; {0,2}(3GC101|3GW10[01]|A390) Build/" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT "$1")
    (:REGEX "\\b(?:Lenovo|LENOVO)+[ _\\-]?([^,;:/ ]+)" :DEVICE-REPLACEMENT
     "Lenovo $1" :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(MFC\\d+)[A-Z]{2}([^;,/]*),?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Lexibook"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX
     "; {0,2}(E[34][0-9]{2}|LS[6-8][0-9]{2}|VS[6-9][0-9]+[^;/]{1,30}|Nexus 4|Nexus 5X?|GT540f?|Optimus (?:2X|G|4X HD)|OptimusX4HD) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "[;:] {0,2}(L-\\d+[A-Z]|LGL\\d+[A-Z]?)(?:/V\\d+|) {0,2}(?:Build|[;\\)])"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(LG-)([A-Z]{1,2}\\d{2,}[^,;/\\)\\(]*?)(?:Build| V\\d+|[,;/\\)\\(]|$)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(LG[ \\-]|LG)([^;/]{1,100})[;/]? Build" :DEVICE-REPLACEMENT
     "$1$2" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$2")
    (:REGEX "^(LG)-([^;/]{1,100})/ Mozilla/.{0,200}; Android"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "(Web0S); Linux/(SmartTV)" :DEVICE-REPLACEMENT "LG $1 $2"
     :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}((?:SMB|smb)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Malata" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:Malata|MALATA) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Malata" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(MS[45][0-9]{3}|MID0[568][NS]?|MID[1-9]|MID[78]0[1-9]|MID970[1-9]|MID100[1-9])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Manta" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(M1052|M806|M9000|M9100|M9701|MID100|MID120|MID125|MID130|MID135|MID140|MID701|MID710|MID713|MID727|MID728|MID731|MID732|MID733|MID735|MID736|MID737|MID760|MID800|MID810|MID820|MID830|MID833|MID835|MID860|MID900|MID930|MID933|MID960|MID980)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Match" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(GenxDroid7|MSD7.{0,200}?|AX\\d.{0,200}?|Tab 701|Tab 722)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Maxx $1" :BRAND-REPLACEMENT "Maxx" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(M-PP[^;/]{1,30}|PhonePad ?\\d{2,}[^;/]{1,30}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Mediacom $1" :BRAND-REPLACEMENT "Mediacom"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(M-MP[^;/]{1,30}|SmartPad ?\\d{2,}[^;/]{1,30}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Mediacom $1" :BRAND-REPLACEMENT "Mediacom"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:MD_|)LIFETAB[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Medion Lifetab $1" :BRAND-REPLACEMENT
     "Medion" :MODEL-REPLACEMENT "Lifetab $1")
    (:REGEX "; {0,2}MEDION ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Medion $1" :BRAND-REPLACEMENT "Medion"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(M030|M031|M035|M040|M065|m9)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Meizu $1" :BRAND-REPLACEMENT "Meizu"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(?:meizu_|MEIZU )(.{1,200}?) {0,2}(?:Build|[;\\)])"
     :DEVICE-REPLACEMENT "Meizu $1" :BRAND-REPLACEMENT "Meizu"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "Quest 2" :DEVICE-REPLACEMENT "Quest" :BRAND-REPLACEMENT "Meta"
     :MODEL-REPLACEMENT "Quest 2")
    (:REGEX "Quest Pro" :DEVICE-REPLACEMENT "Quest" :BRAND-REPLACEMENT "Meta"
     :MODEL-REPLACEMENT "Quest Pro")
    (:REGEX "Quest" :DEVICE-REPLACEMENT "Quest" :BRAND-REPLACEMENT "Meta"
     :MODEL-REPLACEMENT "Quest")
    (:REGEX "; {0,2}(?:Micromax[ _](A111|A240)|(A111|A240)) Build" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "Micromax $1$2" :BRAND-REPLACEMENT "Micromax"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}Micromax[ _](A\\d{2,3}[^;/]*) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Micromax $1" :BRAND-REPLACEMENT "Micromax"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(A\\d{2}|A[12]\\d{2}|A90S|A110Q) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Micromax $1" :BRAND-REPLACEMENT "Micromax"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}Micromax[ _](P\\d{3}[^;/]*) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Micromax $1" :BRAND-REPLACEMENT "Micromax"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(P\\d{3}|P\\d{3}\\(Funbook\\)) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Micromax $1" :BRAND-REPLACEMENT "Micromax"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(MITO)[ _\\-]?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Mito"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Cynus)[ _](F5|T\\d|.{1,200}?) {0,2}(?:Build|[;/\\)])"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Mobistel"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX
     "; {0,2}(MODECOM |)(FreeTab) ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1$2 $3" :BRAND-REPLACEMENT "Modecom"
     :MODEL-REPLACEMENT "$2 $3")
    (:REGEX "; {0,2}(MODECOM )([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Modecom"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(MZ\\d{3}\\+?|MZ\\d{3} 4G|Xoom|XOOM[^;/]*) Build"
     :DEVICE-REPLACEMENT "Motorola $1" :BRAND-REPLACEMENT "Motorola"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Milestone )(XT[^;/]*) Build" :DEVICE-REPLACEMENT
     "Motorola $1$2" :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Motoroi ?x|Droid X|DROIDX) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Motorola $1" :BRAND-REPLACEMENT "Motorola"
     :MODEL-REPLACEMENT "DROID X")
    (:REGEX
     "; {0,2}(Droid[^;/]*|DROID[^;/]*|Milestone[^;/]*|Photon|Triumph|Devour|Titanium) Build"
     :DEVICE-REPLACEMENT "Motorola $1" :BRAND-REPLACEMENT "Motorola"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(A555|A85[34][^;/]*|A95[356]|ME[58]\\d{2}\\+?|ME600|ME632|ME722|MB\\d{3}\\+?|MT680|MT710|MT870|MT887|MT917|WX435|WX453|WX44[25]|XT\\d{3,4}[A-Z\\+]*|CL[iI]Q|CL[iI]Q XT) Build"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(Motorola MOT-|Motorola[ _\\-]|MOT\\-?)([^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Motorola"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Moto[_ ]?|MOT\\-)([^;/]{1,100}) Build" :DEVICE-REPLACEMENT
     "$1$2" :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}((?:MP[DQ]C|MPG\\d{1,4}|MP\\d{3,4}|MID(?:(?:10[234]|114|43|7[247]|8[24]|7)C|8[01]1))[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Mpman" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:MSI[ _]|)(Primo\\d+|Enjoy[ _\\-][^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Msi"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}Multilaser[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Multilaser"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(My)[_]?(Pad)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2 $3" :BRAND-REPLACEMENT "MyPhone"
     :MODEL-REPLACEMENT "$1$2 $3")
    (:REGEX
     "; {0,2}(My)\\|?(Phone)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2 $3" :BRAND-REPLACEMENT "MyPhone"
     :MODEL-REPLACEMENT "$3")
    (:REGEX "; {0,2}(A\\d+)[ _](Duo|)(?: Build|\\) AppleWebKit)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "MyPhone"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(myTab[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Mytab" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(NABI2?-)([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Nabi" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(N-\\d+[CDE])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Nec" :MODEL-REPLACEMENT "$1")
    (:REGEX "; ?(NEC-)(.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Nec" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(LT-NA7)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Nec" :MODEL-REPLACEMENT "Lifetouch Note")
    (:REGEX
     "; {0,2}(NXM\\d+[A-Za-z0-9_]{0,50}|Next\\d[A-Za-z0-9_ \\-]{0,50}|NEXT\\d[A-Za-z0-9_ \\-]{0,50}|Nextbook [A-Za-z0-9_ ]{0,50}|DATAM803HC|M805)(?: Build|[\\);])"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Nextbook" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Nokia)([ _\\-]{0,5})([^;/]{0,50}) Build" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "$1$2$3" :BRAND-REPLACEMENT "Nokia" :MODEL-REPLACEMENT
     "$3")
    (:REGEX "; {0,2}(TA\\-\\d{4})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Nokia $1" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Nook ?|Barnes & Noble Nook |BN )([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Nook" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(NOOK |)(BNRV200|BNRV200A|BNTV250|BNTV250A|BNTV400|BNTV600|LogicPD Zoom2)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Nook" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; Build/(Nook)" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Nook"
     :MODEL-REPLACEMENT "Tablet")
    (:REGEX "; {0,2}(OP110|OliPad[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Olivetti $1" :BRAND-REPLACEMENT "Olivetti"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}OMEGA[ _\\-](MID[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Omega $1" :BRAND-REPLACEMENT "Omega"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "^(MID7500|MID\\d+) Mozilla/5\\.0 \\(iPad;" :DEVICE-REPLACEMENT
     "Omega $1" :BRAND-REPLACEMENT "Omega" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((?:CIUS|cius)[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Openpeak $1" :BRAND-REPLACEMENT "Openpeak"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Find ?(?:5|7a)|R8[012]\\d{1,2}|T703\\d?|U70\\d{1,2}T?|X90\\d{1,2}|[AFR]\\d{1,2}[a-z]{1,2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Oppo $1" :BRAND-REPLACEMENT "Oppo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}OPPO ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Oppo $1" :BRAND-REPLACEMENT "Oppo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(CPH\\d{1,4}|RMX\\d{1,4}|P[A-Z]{3}\\d{2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Oppo $1" :BRAND-REPLACEMENT "Oppo")
    (:REGEX "; {0,2}(A1601)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Oppo F1s" :BRAND-REPLACEMENT "Oppo" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:Odys\\-|ODYS\\-|ODYS )([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Odys $1" :BRAND-REPLACEMENT "Odys" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SELECT) ?(7)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Odys $1 $2" :BRAND-REPLACEMENT "Odys"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(PEDI)_(PLUS)_(W)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Odys $1 $2 $3" :BRAND-REPLACEMENT "Odys"
     :MODEL-REPLACEMENT "$1 $2 $3")
    (:REGEX
     "; {0,2}(AEON|BRAVIO|FUSION|FUSION2IN1|Genio|EOS10|IEOS[^;/]*|IRON|Loox|LOOX|LOOX Plus|Motion|NOON|NOON_PRO|NEXT|OPOS|PEDI[^;/]*|PRIME[^;/]*|STUDYTAB|TABLO|Tablet-PC-4|UNO_X8|XELIO[^;/]*|Xelio ?\\d+ ?[Pp]ro|XENO10|XPRESS PRO)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Odys $1" :BRAND-REPLACEMENT "Odys" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; (ONE [a-zA-Z]\\d+)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "OnePlus $1" :BRAND-REPLACEMENT "OnePlus"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; (ONEPLUS [a-zA-Z]\\d+)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "OnePlus $1" :BRAND-REPLACEMENT "OnePlus"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(HD1903|GM1917|IN2025|LE2115|LE2127|HD1907|BE2012|BE2025|BE2026|BE2028|BE2029|DE2117|DE2118|EB2101|GM1900|GM1910|GM1915|HD1905|HD1925|IN2015|IN2017|IN2019|KB2005|KB2007|LE2117|LE2125|BE2015|GM1903|HD1900|HD1901|HD1910|HD1913|IN2010|IN2013|IN2020|LE2111|LE2120|LE2121|LE2123|BE2011|IN2023|KB2003|LE2113|NE2215|DN2101)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "OnePlus $1" :BRAND-REPLACEMENT "OnePlus"
     :MODEL-REPLACEMENT "OnePlus $1")
    (:REGEX "; (OnePlus[ a-zA-z0-9]{0,50});((?: Build|.{0,50}\\) AppleWebKit))"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "OnePlus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; (OnePlus[ a-zA-z0-9]{0,50})((?: Build|\\) AppleWebKit))"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "OnePlus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TP-\\d+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Orion $1" :BRAND-REPLACEMENT "Orion" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(G100W?)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "PackardBell $1" :BRAND-REPLACEMENT "PackardBell" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Panasonic)[_ ]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(FZ-A1B|JT-B1)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Panasonic $1" :BRAND-REPLACEMENT "Panasonic"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(dL1|DL1)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Panasonic $1" :BRAND-REPLACEMENT "Panasonic" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(SKY[ _]|)(IM\\-[AT]\\d{3}[^;/]{1,100}).{0,30} Build/"
     :DEVICE-REPLACEMENT "Pantech $1$2" :BRAND-REPLACEMENT "Pantech"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX
     "; {0,2}((?:ADR8995|ADR910L|ADR930L|ADR930VW|PTL21|P8000)(?: 4G|)) Build/"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Pantech" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}Pantech([^;/]{1,30}).{0,200}? Build/" :DEVICE-REPLACEMENT
     "Pantech $1" :BRAND-REPLACEMENT "Pantech" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(papyre)[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Papyre"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(?:Touchlet )?(X10\\.[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Pearl $1" :BRAND-REPLACEMENT "Pearl"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; PHICOMM (i800)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "Phicomm $1" :BRAND-REPLACEMENT "Phicomm" :MODEL-REPLACEMENT "$1")
    (:REGEX "; PHICOMM ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Phicomm $1" :BRAND-REPLACEMENT "Phicomm"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(FWS\\d{3}[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Phicomm $1" :BRAND-REPLACEMENT "Phicomm"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(D633|D822|D833|T539|T939|V726|W335|W336|W337|W3568|W536|W5510|W626|W632|W6350|W6360|W6500|W732|W736|W737|W7376|W820|W832|W8355|W8500|W8510|W930)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Philips" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:Philips|PHILIPS)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Philips $1" :BRAND-REPLACEMENT "Philips"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android 4\\..{0,200}; {0,2}(M[12356789]|U[12368]|S[123])\\ ?(pro)?(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Pipo $1$2" :BRAND-REPLACEMENT "Pipo"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}(MOMO[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Ployer" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:Polaroid[ _]|)((?:MIDC\\d{3,}|PMID\\d{2,}|PTAB\\d{3,})[^;/]{0,30}?)(\\/[^;/]{0,30}|)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Polaroid" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:Polaroid )(Tablet)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Polaroid" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(POMP)[ _\\-](.{1,200}?) {0,2}(?:Build|[;/\\)])"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Pomp" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(TB07STA|TB10STA|TB07FTA|TB10FTA)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Positivo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:Positivo |)((?:YPY|Ypy)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Positivo" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(MOB-[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "POV" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}POV[ _\\-]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "POV $1" :BRAND-REPLACEMENT "POV" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}((?:TAB-PLAYTAB|TAB-PROTAB|PROTAB|PlayTabPro|Mobii[ _\\-]|TAB-P)[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "POV $1" :BRAND-REPLACEMENT "POV" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:Prestigio |)((?:PAP|PMP)\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Prestigio $1" :BRAND-REPLACEMENT "Prestigio"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(PLT[0-9]{4}.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Proscan" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(A2|A5|A8|A900)_?(Classic|)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Qmobile"
     :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "; {0,2}(Q[Mm]obile)_([^_]+)_([^_]+?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Qmobile $2 $3" :BRAND-REPLACEMENT "Qmobile"
     :MODEL-REPLACEMENT "$2 $3")
    (:REGEX
     "; {0,2}(Q\\-?[Mm]obile)[_ ](A[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Qmobile $2" :BRAND-REPLACEMENT "Qmobile"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Q\\-Smart)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Qmobilevn"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(Q\\-?[Mm]obile)[ _\\-](S[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Qmobilevn"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(TA1013)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Quanta" :MODEL-REPLACEMENT "$1")
    (:REGEX "; (RCT\\w+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "RCA" :MODEL-REPLACEMENT "$1")
    (:REGEX "; RCA (\\w+)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "RCA $1" :BRAND-REPLACEMENT "RCA" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(RK\\d+),?(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Rockchip" :MODEL-REPLACEMENT "$1")
    (:REGEX " Build/(RK\\d+)" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT
     "Rockchip" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(SAMSUNG |Samsung |)((?:Galaxy (?:Note II|S\\d)|GT-I9082|GT-I9205|GT-N7\\d{3}|SM-N9005)[^;/]{0,100})\\/?[^;/]{0,50} Build/"
     :DEVICE-REPLACEMENT "Samsung $1$2" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Google |)(Nexus [Ss](?: 4G|)) Build/" :DEVICE-REPLACEMENT
     "Samsung $1$2" :BRAND-REPLACEMENT "Samsung" :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(SAMSUNG |Samsung )([^\\/]{0,50})\\/[^ ]{0,50} Build/"
     :DEVICE-REPLACEMENT "Samsung $2" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(Galaxy(?: Ace| Nexus| S ?II+|Nexus S| with MCR 1.2| Mini Plus 4G|)) Build/"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(SAMSUNG[ _\\-]|)(?:SAMSUNG[ _\\-])([^;/]{1,100}) Build"
     :DEVICE-REPLACEMENT "Samsung $2" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(SAMSUNG-|)(GT\\-[BINPS]\\d{4}[^\\/]{0,50})(\\/[^ ]{0,50}) Build"
     :DEVICE-REPLACEMENT "Samsung $1$2$3" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "(?:; {0,2}|^)((?:GT\\-[BIiNPS]\\d{4}|I9\\d{2}0[A-Za-z\\+]?\\b)[^;/\\)]*?)(?:Build|Linux|MIUI|[;/\\)])"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; (SAMSUNG-)([A-Za-z0-9\\-]{0,50}).{0,200} Build/"
     :DEVICE-REPLACEMENT "Samsung $1$2" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}((?:SCH|SGH|SHV|SHW|SPH|SC|SM)\\-[A-Za-z0-9 ]{1,50})(/?[^ ]*|) Build"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((?:SC)\\-[A-Za-z0-9 ]{1,50})(/?[^ ]*|)\\)"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX " ((?:SCH)\\-[A-Za-z0-9 ]{1,50})(/?[^ ]*|) Build"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Behold ?(?:2|II)|YP\\-G[^;/]{1,100}|EK-GC100|SCL21|I9300) Build"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((?:SCH|SGH|SHV|SHW|SPH|SC|SM)\\-[A-Za-z0-9]{5,6})[\\)]"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(SH\\-?\\d\\d[^;/]{1,100}|SBM\\d[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sharp" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SHARP[ -])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Sharp" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(SPX[_\\-]\\d[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Simvalley" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SX7\\-PEARL\\.GmbH)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Simvalley" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SP[T]?\\-\\d{2}[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Simvalley" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SK\\-.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "SKtelesys" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(?:SKYTEX|SX)-([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Skytex" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(IMAGINE [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Skytex" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SmartQ) ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(WF7C|WF10C|SBT[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Smartbitt" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SBM(?:003SH|005SH|006SH|007SH|102SH)) Build"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sharp" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(003P|101P|101P11C|102P) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Panasonic" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(00\\dZ) Build/" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT "$1")
    (:REGEX "; HTC(X06HT) Build" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT
     "HTC" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(001HT|X06HT) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(201M) Build" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT
     "Motorola" :MODEL-REPLACEMENT "XT902")
    (:REGEX "; {0,2}(ST\\d{4}.{0,200})Build/ST" :DEVICE-REPLACEMENT
     "Trekstor $1" :BRAND-REPLACEMENT "Trekstor" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(ST\\d{4}.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Trekstor $1" :BRAND-REPLACEMENT "Trekstor"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(Sony ?Ericsson ?)([^;/]{1,100}) Build" :DEVICE-REPLACEMENT
     "$1$2" :BRAND-REPLACEMENT "SonyEricsson" :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}((?:SK|ST|E|X|LT|MK|MT|WT)\\d{2}[a-z0-9]*(?:-o|)|R800i|U20i) Build"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "SonyEricsson"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(Xperia (?:A8|Arc|Acro|Active|Live with Walkman|Mini|Neo|Play|Pro|Ray|X\\d+)[^;/]{0,50}) Build"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "SonyEricsson"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; Sony (Tablet[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Sony $1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; Sony ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Sony $1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(Sony)([A-Za-z0-9\\-]+)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(Xperia [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(C(?:1[0-9]|2[0-9]|53|55|6[0-9])[0-9]{2}|D[25]\\d{3}|D6[56]\\d{2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(SGP\\d{3}|SGPT\\d{2})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(NW-Z1000Series)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "PLAYSTATION 3" :DEVICE-REPLACEMENT "PlayStation 3"
     :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT "PlayStation 3")
    (:REGEX "(PlayStation (?:Portable|Vita|\\d+))" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}((?:CSL_Spice|Spice|SPICE|CSL)[ _\\-]?|)([Mm][Ii])([ _\\-]|)(\\d{3}[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2$3$4" :BRAND-REPLACEMENT "Spice"
     :MODEL-REPLACEMENT "Mi$4")
    (:REGEX "; {0,2}(Sprint )(.{1,200}?) {0,2}(?:Build|[;/])"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Sprint" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "\\b(Sprint)[: ]([^;,/ ]+)" :DEVICE-REPLACEMENT "$1$2"
     :BRAND-REPLACEMENT "Sprint" :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(TAGI[ ]?)(MID) ?([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2$3" :BRAND-REPLACEMENT "Tagi" :MODEL-REPLACEMENT
     "$2$3")
    (:REGEX "; {0,2}(Oyster500|Opal 800)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Tecmobile $1" :BRAND-REPLACEMENT "Tecmobile"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(TECNO[ _])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Tecno" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}Android for (Telechips|Techvision) ([^ ]+) " :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(T-Hub2)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Telstra" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(PAD) ?(100[12])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Terra $1$2" :BRAND-REPLACEMENT "Terra"
     :MODEL-REPLACEMENT "$1$2")
    (:REGEX "; {0,2}(T[BM]-\\d{3}[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Texet" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(tolino [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Thalia" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}Build/.{0,200} (TOLINO_BROWSER)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Thalia" :MODEL-REPLACEMENT "Tolino Shine")
    (:REGEX
     "; {0,2}(?:CJ[ -])?(ThL|THL)[ -]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Thl" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(T100|T200|T5|W100|W200|W8s)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Thl" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(T-Mobile[ _]G2[ _]Touch) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "Hero")
    (:REGEX "; {0,2}(T-Mobile[ _]G2) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "Desire Z")
    (:REGEX "; {0,2}(T-Mobile myTouch Q) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "U8730")
    (:REGEX "; {0,2}(T-Mobile myTouch) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "U8680")
    (:REGEX "; {0,2}(T-Mobile_Espresso) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "Espresso")
    (:REGEX "; {0,2}(T-Mobile G1) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT "Dream")
    (:REGEX
     "\\b(T-Mobile ?|)(myTouch)[ _]?([34]G)[ _]?([^\\/]*) (?:Mozilla|Build)"
     :DEVICE-REPLACEMENT "$1$2 $3 $4" :BRAND-REPLACEMENT "HTC"
     :MODEL-REPLACEMENT "$2 $3 $4")
    (:REGEX "\\b(T-Mobile)_([^_]+)_(.{0,200}) Build" :DEVICE-REPLACEMENT
     "$1 $2 $3" :BRAND-REPLACEMENT "Tmobile" :MODEL-REPLACEMENT "$2 $3")
    (:REGEX "\\b(T-Mobile)[_ ]?(.{0,200}?)Build" :DEVICE-REPLACEMENT "$1 $2"
     :BRAND-REPLACEMENT "Tmobile" :MODEL-REPLACEMENT "$2")
    (:REGEX " (ATP[0-9]{4})(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Tomtec" :MODEL-REPLACEMENT "$1")
    (:REGEX " ?(TOOKY)[ _\\-]([^;/]{1,100}) ?(?:Build|;)" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Tooky" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "\\b(TOSHIBA_AC_AND_AZ|TOSHIBA_FOLIO_AND_A|FOLIO_AND_A)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Toshiba" :MODEL-REPLACEMENT
     "Folio 100")
    (:REGEX "; {0,2}([Ff]olio ?100)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Toshiba" :MODEL-REPLACEMENT
     "Folio 100")
    (:REGEX
     "; {0,2}(AT[0-9]{2,3}(?:\\-A|LE\\-A|PE\\-A|SE|a|)|AT7-A|AT1S0|Hikari-iFrame/WDPF-[^;/]{1,100}|THRiVE|Thrive)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Toshiba $1" :BRAND-REPLACEMENT "Toshiba"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(TM-MID\\d+[^;/]{1,50}|TOUCHMATE|MID-750)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Touchmate" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TM-SM\\d+[^;/]{1,50}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Touchmate" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(A10 [Bb]asic2?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Treq" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(TREQ[ _\\-])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Treq"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(X-?5|X-?3)(?: Build|\\) AppleWebKit)" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Umeox" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(A502\\+?|A936|A603|X1|X2)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Umeox" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; thor Build/" :DEVICE-REPLACEMENT "Thor" :BRAND-REPLACEMENT
     "Vernee" :MODEL-REPLACEMENT "Thor")
    (:REGEX "; Thor (E)? Build/" :DEVICE-REPLACEMENT "Thor $1"
     :BRAND-REPLACEMENT "Vernee" :MODEL-REPLACEMENT "Thor")
    (:REGEX "; Apollo Lite Build/" :DEVICE-REPLACEMENT "Apollo Lite"
     :BRAND-REPLACEMENT "Vernee" :MODEL-REPLACEMENT "Apollo")
    (:REGEX "(TOUCH(?:TAB|PAD).{1,200}?)(?: Build|\\) AppleWebKit)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "Versus $1" :BRAND-REPLACEMENT "Versus"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "(VERTU) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Vertu" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "; {0,2}(Videocon)[ _\\-]([^;/]{1,100}?) {0,2}(?:Build|;)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "Videocon"
     :MODEL-REPLACEMENT "$2")
    (:REGEX " (VT\\d{2}[A-Za-z]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Videocon" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}((?:ViewPad|ViewPhone|VSD)[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Viewsonic" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(ViewSonic-)([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "Viewsonic"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(GTablet.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Viewsonic" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}([Vv]ivo)[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "vivo" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "(Vodafone) (.{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "; {0,2}(?:Walton[ _\\-]|)(Primo[ _\\-][^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Walton $1" :BRAND-REPLACEMENT
     "Walton" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:WIKO[ \\-]|)(CINK\\+?|BARRY|BLOOM|DARKFULL|DARKMOON|DARKNIGHT|DARKSIDE|FIZZ|HIGHWAY|IGGY|OZZY|RAINBOW|STAIRWAY|SUBLIM|WAX|CINK [^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Wiko $1" :BRAND-REPLACEMENT "Wiko"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}WellcoM-([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Wellcom $1" :BRAND-REPLACEMENT "Wellcom"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:(WeTab)-Browser|; (wetab) Build)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "WeTab" :MODEL-REPLACEMENT "WeTab")
    (:REGEX "; {0,2}(AT-AS[^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Wolfgang $1" :BRAND-REPLACEMENT "Wolfgang"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(?:Woxter|Wxt) ([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Woxter $1" :BRAND-REPLACEMENT "Woxter"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:Xenta |Luna |)(TAB[234][0-9]{2}|TAB0[78]-\\d{3}|TAB0?9-\\d{3}|TAB1[03]-\\d{3}|SMP\\d{2}-\\d{3})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Yarvik $1" :BRAND-REPLACEMENT "Yarvik"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}([A-Z]{2,4})(M\\d{3,}[A-Z]{2})([^;\\)\\/]*)(?: Build|[;\\)])"
     :DEVICE-REPLACEMENT "Yifang $1$2$3" :BRAND-REPLACEMENT "Yifang"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}((Mi|MI|HM|MI-ONE|Redmi)[ -](NOTE |Note |)[^;/]*) (Build|MIUI)/"
     :DEVICE-REPLACEMENT "XiaoMi $1" :BRAND-REPLACEMENT "XiaoMi"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((Mi|MI|HM|MI-ONE|Redmi)[ -](NOTE |Note |)[^;/\\)]*)"
     :DEVICE-REPLACEMENT "XiaoMi $1" :BRAND-REPLACEMENT "XiaoMi"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(MIX) (Build|MIUI)/" :DEVICE-REPLACEMENT "XiaoMi $1"
     :BRAND-REPLACEMENT "XiaoMi" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}((MIX) ([^;/]*)) (Build|MIUI)/" :DEVICE-REPLACEMENT
     "XiaoMi $1" :BRAND-REPLACEMENT "XiaoMi" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}XOLO[ _]([^;/]{0,30}tab.{0,30})(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Xolo $1" :BRAND-REPLACEMENT "Xolo"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}XOLO[ _]([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Xolo $1" :BRAND-REPLACEMENT "Xolo"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(q\\d0{2,3}[a-z]?)(?: Build|\\) AppleWebKit)" :REGEX-FLAG
     "i" :DEVICE-REPLACEMENT "Xolo $1" :BRAND-REPLACEMENT "Xolo"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(PAD ?[79]\\d+[^;/]{0,50}|TelePAD\\d+[^;/])(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Xoro $1" :BRAND-REPLACEMENT "Xoro" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; {0,2}(?:(?:ZOPO|Zopo)[ _]([^;/]{1,100}?)|(ZP ?(?:\\d{2}[^;/]{1,100}|C2))|(C[2379]))(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2$3" :BRAND-REPLACEMENT "Zopo" :MODEL-REPLACEMENT
     "$1$2$3")
    (:REGEX "; {0,2}(ZiiLABS) (Zii[^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "ZiiLabs"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(Zii)_([^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "ZiiLabs"
     :MODEL-REPLACEMENT "$2")
    (:REGEX
     "; {0,2}(ARIZONA|(?:ATLAS|Atlas) W|D930|Grand (?:[SX][^;]{0,200}?|Era|Memo[^;]{0,200}?)|JOE|(?:Kis|KIS)\\b[^;]{0,200}?|Libra|Light [^;]{0,200}?|N8[056][01]|N850L|N8000|N9[15]\\d{2}|N9810|NX501|Optik|(?:Vip )Racer[^;]{0,200}?|RacerII|RACERII|San Francisco[^;]{0,200}?|V9[AC]|V55|V881|Z[679][0-9]{2}[A-z]?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}([A-Z]\\d+)_USA_[^;]{0,200}(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(SmartTab\\d+)[^;]{0,50}(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; {0,2}(?:Blade|BLADE|ZTE-BLADE)([^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "ZTE Blade$1" :BRAND-REPLACEMENT "ZTE"
     :MODEL-REPLACEMENT "Blade$1")
    (:REGEX
     "; {0,2}(?:Skate|SKATE|ZTE-SKATE)([^;/]*)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "ZTE Skate$1" :BRAND-REPLACEMENT "ZTE"
     :MODEL-REPLACEMENT "Skate$1")
    (:REGEX
     "; {0,2}(Orange |Optimus )(Monte Carlo|San Francisco)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1$2" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT
     "$1$2")
    (:REGEX
     "; {0,2}(?:ZXY-ZTE_|ZTE\\-U |ZTE[\\- _]|ZTE-C[_ ])([^;/]{1,100}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "ZTE $1" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "; (BASE) (lutea|Lutea 2|Tab[^;]{0,200}?)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT
     "$1 $2")
    (:REGEX
     "; (Avea inTouch 2|soft stone|tmn smart a7|Movistar[ _]Link)(?: Build|\\) AppleWebKit)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "ZTE"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(vp9plus)\\)" :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT
     "ZTE" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "; ?(Cloud[ _]Z5|z1000|Z99 2G|z99|z930|z999|z990|z909|Z919|z900)(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Zync" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; ?(KFOT|Kindle Fire) Build\\b" :DEVICE-REPLACEMENT "Kindle Fire"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle Fire")
    (:REGEX "; ?(KFOTE|Amazon Kindle Fire2) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire 2" :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT
     "Kindle Fire 2")
    (:REGEX "; ?(KFTT) Build\\b" :DEVICE-REPLACEMENT "Kindle Fire HD"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle Fire HD 7\"")
    (:REGEX "; ?(KFJWI) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire HD 8.9\" WiFi" :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT
     "Kindle Fire HD 8.9\" WiFi")
    (:REGEX "; ?(KFJWA) Build\\b" :DEVICE-REPLACEMENT "Kindle Fire HD 8.9\" 4G"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle Fire HD 8.9\" 4G")
    (:REGEX "; ?(KFSOWI) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire HD 7\" WiFi" :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT
     "Kindle Fire HD 7\" WiFi")
    (:REGEX "; ?(KFTHWI) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire HDX 7\" WiFi" :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT
     "Kindle Fire HDX 7\" WiFi")
    (:REGEX "; ?(KFTHWA) Build\\b" :DEVICE-REPLACEMENT "Kindle Fire HDX 7\" 4G"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle Fire HDX 7\" 4G")
    (:REGEX "; ?(KFAPWI) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire HDX 8.9\" WiFi" :BRAND-REPLACEMENT "Amazon"
     :MODEL-REPLACEMENT "Kindle Fire HDX 8.9\" WiFi")
    (:REGEX "; ?(KFAPWA) Build\\b" :DEVICE-REPLACEMENT
     "Kindle Fire HDX 8.9\" 4G" :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT
     "Kindle Fire HDX 8.9\" 4G")
    (:REGEX "; ?Amazon ([^;/]{1,100}) Build\\b" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "$1")
    (:REGEX "; ?(Kindle) Build\\b" :DEVICE-REPLACEMENT "Kindle"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle")
    (:REGEX "; ?(Silk)/(\\d+)\\.(\\d+)(?:\\.([0-9\\-]+)|) Build\\b"
     :DEVICE-REPLACEMENT "Kindle Fire" :BRAND-REPLACEMENT "Amazon"
     :MODEL-REPLACEMENT "Kindle Fire$2")
    (:REGEX " (Kindle)/(\\d+\\.\\d+)" :DEVICE-REPLACEMENT "Kindle"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "$1 $2")
    (:REGEX " (Silk|Kindle)/(\\d+)\\." :DEVICE-REPLACEMENT "Kindle"
     :BRAND-REPLACEMENT "Amazon" :MODEL-REPLACEMENT "Kindle")
    (:REGEX "(sprd)\\-([^/]{1,50})/" :DEVICE-REPLACEMENT "$1 $2"
     :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT "$2")
    (:REGEX "; {0,2}(H\\d{2}00\\+?) Build" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Hero" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(iphone|iPhone5) Build/" :DEVICE-REPLACEMENT "Xianghe $1"
     :BRAND-REPLACEMENT "Xianghe" :MODEL-REPLACEMENT "$1")
    (:REGEX "; {0,2}(e\\d{4}[a-z]?_?v\\d+|v89_[^;/]{1,100})[^;/]{1,30} Build/"
     :DEVICE-REPLACEMENT "Xianghe $1" :BRAND-REPLACEMENT "Xianghe"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "\\bUSCC[_\\-]?([^ ;/\\)]+)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Cellular" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:ALCATEL)[^;]{0,200}; {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Alcatel $1" :BRAND-REPLACEMENT "Alcatel"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|WpsLondonTest; ?|)(?:ASUS|Asus)[^;]{0,200}; {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Asus $1" :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:DELL|Dell)[^;]{0,200}; {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Dell $1" :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|WpsLondonTest; ?|)(?:HTC|Htc|HTC_blocked[^;]{0,200})[^;]{0,200}; {0,2}(?:HTC|)([^;,\\)]+)"
     :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:HUAWEI)[^;]{0,200}; {0,2}(?:HUAWEI |)([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Huawei $1" :BRAND-REPLACEMENT "Huawei"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:LG|Lg)[^;]{0,200}; {0,2}(?:LG[ \\-]|)([^;,\\)]+)"
     :DEVICE-REPLACEMENT "LG $1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:rv:11; |)(?:NOKIA|Nokia)[^;]{0,200}; {0,2}(?:NOKIA ?|Nokia ?|LUMIA ?|[Ll]umia ?|)(\\d{3,10}[^;\\)]*)"
     :DEVICE-REPLACEMENT "Lumia $1" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "Lumia $1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:NOKIA|Nokia)[^;]{0,200}; {0,2}(RM-\\d{3,})"
     :DEVICE-REPLACEMENT "Nokia $1" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "(?:Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)]|WPDesktop;) ?(?:ARM; ?Touch; ?|Touch; ?|)(?:NOKIA|Nokia)[^;]{0,200}; {0,2}(?:NOKIA ?|Nokia ?|LUMIA ?|[Ll]umia ?|)([^;\\)]+)"
     :DEVICE-REPLACEMENT "Nokia $1" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|)(?:Microsoft(?: Corporation|))[^;]{0,200}; {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Microsoft $1" :BRAND-REPLACEMENT "Microsoft"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|WpsLondonTest; ?|)(?:SAMSUNG)[^;]{0,200}; {0,2}(?:SAMSUNG |)([^;,\\.\\)]+)"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|WpsLondonTest; ?|)(?:TOSHIBA|FujitsuToshibaMobileCommun)[^;]{0,200}; {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "Toshiba $1" :BRAND-REPLACEMENT "Toshiba"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Windows Phone [^;]{1,30}; .{0,100}?IEMobile/[^;\\)]+[;\\)] ?(?:ARM; ?Touch; ?|Touch; ?|WpsLondonTest; ?|)([^;]{1,200}); {0,2}([^;,\\)]+)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "(?:^|; )SAMSUNG\\-([A-Za-z0-9\\-]{1,50}).{0,200} Bada/"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "\\(Mobile; ALCATEL ?(One|ONE) ?(Touch|TOUCH) ?([^;/]{1,100}?)(?:/[^;]{1,200}|); rv:[^\\)]{1,200}\\) Gecko/[^\\/]{1,200} Firefox/"
     :DEVICE-REPLACEMENT "Alcatel $1 $2 $3" :BRAND-REPLACEMENT "Alcatel"
     :MODEL-REPLACEMENT "One Touch $3")
    (:REGEX
     "\\(Mobile; (?:ZTE([^;]{1,200})|(OpenC)); rv:[^\\)]{1,200}\\) Gecko/[^\\/]{1,200} Firefox/"
     :DEVICE-REPLACEMENT "ZTE $1$2" :BRAND-REPLACEMENT "ZTE" :MODEL-REPLACEMENT
     "$1$2")
    (:REGEX
     "\\(Mobile; ALCATEL([A-Za-z0-9\\-]+); rv:[^\\)]{1,200}\\) Gecko/[^\\/]{1,200} Firefox/[^\\/]{1,200} KaiOS/"
     :DEVICE-REPLACEMENT "Alcatel $1" :BRAND-REPLACEMENT "Alcatel"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "\\(Mobile; LYF\\/([A-Za-z0-9\\-]{1,100})\\/.{0,100};.{0,100}rv:[^\\)]{1,100}\\) Gecko/[^\\/]{1,100} Firefox/[^\\/]{1,100} KAIOS/"
     :DEVICE-REPLACEMENT "LYF $1" :BRAND-REPLACEMENT "LYF" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "\\(Mobile; Nokia_([A-Za-z0-9\\-]{1,100})_.{1,100}; rv:[^\\)]{1,100}\\) Gecko/[^\\/]{1,100} Firefox/[^\\/]{1,100} KAIOS/"
     :DEVICE-REPLACEMENT "Nokia $1" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "Nokia(N[0-9]+)([A-Za-z_\\-][A-Za-z0-9_\\-]*)" :DEVICE-REPLACEMENT
     "Nokia $1" :BRAND-REPLACEMENT "Nokia" :MODEL-REPLACEMENT "$1$2")
    (:REGEX
     "(?:NOKIA|Nokia)(?:\\-| {0,2})(?:([A-Za-z0-9]+)\\-[0-9a-f]{32}|([A-Za-z0-9\\-]+)(?:UCBrowser)|([A-Za-z0-9\\-]+))"
     :DEVICE-REPLACEMENT "Nokia $1$2$3" :BRAND-REPLACEMENT "Nokia"
     :MODEL-REPLACEMENT "$1$2$3")
    (:REGEX "Lumia ([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT "Lumia $1"
     :BRAND-REPLACEMENT "Nokia" :MODEL-REPLACEMENT "Lumia $1")
    (:REGEX
     "\\(Symbian; U; S60 V5; [A-z]{2}\\-[A-z]{2}; (SonyEricsson|Samsung|Nokia|LG)([^;/]{1,100}?)\\)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX "\\(Symbian(?:/3|); U; ([^;]{1,200});" :DEVICE-REPLACEMENT
     "Nokia $1" :BRAND-REPLACEMENT "Nokia" :MODEL-REPLACEMENT "$1")
    (:REGEX "BB10; ([A-Za-z0-9\\- ]+)\\)" :DEVICE-REPLACEMENT "BlackBerry $1"
     :BRAND-REPLACEMENT "BlackBerry" :MODEL-REPLACEMENT "$1")
    (:REGEX "Play[Bb]ook.{1,200}RIM Tablet OS" :DEVICE-REPLACEMENT
     "BlackBerry Playbook" :BRAND-REPLACEMENT "BlackBerry" :MODEL-REPLACEMENT
     "Playbook")
    (:REGEX "Black[Bb]erry ([0-9]+);" :DEVICE-REPLACEMENT "BlackBerry $1"
     :BRAND-REPLACEMENT "BlackBerry" :MODEL-REPLACEMENT "$1")
    (:REGEX "Black[Bb]erry([0-9]+)" :DEVICE-REPLACEMENT "BlackBerry $1"
     :BRAND-REPLACEMENT "BlackBerry" :MODEL-REPLACEMENT "$1")
    (:REGEX "Black[Bb]erry;" :DEVICE-REPLACEMENT "BlackBerry"
     :BRAND-REPLACEMENT "BlackBerry")
    (:REGEX "(Pre|Pixi)/\\d+\\.\\d+" :DEVICE-REPLACEMENT "Palm $1"
     :BRAND-REPLACEMENT "Palm" :MODEL-REPLACEMENT "$1")
    (:REGEX "Palm([0-9]+)" :DEVICE-REPLACEMENT "Palm $1" :BRAND-REPLACEMENT
     "Palm" :MODEL-REPLACEMENT "$1")
    (:REGEX "Treo([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Palm Treo $1"
     :BRAND-REPLACEMENT "Palm" :MODEL-REPLACEMENT "Treo $1")
    (:REGEX "webOS.{0,200}(P160U(?:NA|))/(\\d+).(\\d+)" :DEVICE-REPLACEMENT
     "HP Veer" :BRAND-REPLACEMENT "HP" :MODEL-REPLACEMENT "Veer")
    (:REGEX "(Touch[Pp]ad)/\\d+\\.\\d+" :DEVICE-REPLACEMENT "HP TouchPad"
     :BRAND-REPLACEMENT "HP" :MODEL-REPLACEMENT "TouchPad")
    (:REGEX "HPiPAQ([A-Za-z0-9]{1,20})/\\d+\\.\\d+" :DEVICE-REPLACEMENT
     "HP iPAQ $1" :BRAND-REPLACEMENT "HP" :MODEL-REPLACEMENT "iPAQ $1")
    (:REGEX "PDA; (PalmOS)/sony/model ([a-z]+)/Revision" :DEVICE-REPLACEMENT
     "$1" :BRAND-REPLACEMENT "Sony" :MODEL-REPLACEMENT "$1 $2")
    (:REGEX "(Apple\\s?TV)" :DEVICE-REPLACEMENT "AppleTV" :BRAND-REPLACEMENT
     "Apple" :MODEL-REPLACEMENT "AppleTV")
    (:REGEX "(QtCarBrowser)" :DEVICE-REPLACEMENT "Tesla Model S"
     :BRAND-REPLACEMENT "Tesla" :MODEL-REPLACEMENT "Model S")
    (:REGEX "(iPhone|iPad|iPod)(\\d+,\\d+)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1$2")
    (:REGEX "(iPad)(?:;| Simulator;)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1")
    (:REGEX "(iPod)(?:;| touch;| Simulator;)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1")
    (:REGEX "(iPhone)(?:;| Simulator;)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1")
    (:REGEX "(Watch)(\\d+,\\d+)" :DEVICE-REPLACEMENT "Apple $1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1$2")
    (:REGEX "(Apple Watch)(?:;| Simulator;)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1")
    (:REGEX "(HomePod)(?:;| Simulator;)" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "$1")
    (:REGEX "iPhone" :DEVICE-REPLACEMENT "iPhone" :BRAND-REPLACEMENT "Apple"
     :MODEL-REPLACEMENT "iPhone")
    (:REGEX
     "CFNetwork/.{0,100} Darwin/\\d.{0,100}\\(((?:Mac|iMac|PowerMac|PowerBook)[^\\d]*)(\\d+)(?:,|%2C)(\\d+)"
     :DEVICE-REPLACEMENT "$1$2,$3" :BRAND-REPLACEMENT "Apple"
     :MODEL-REPLACEMENT "$1$2,$3")
    (:REGEX "CFNetwork/.{0,100} Darwin/\\d+\\.\\d+\\.\\d+ \\(x86_64\\)"
     :DEVICE-REPLACEMENT "Mac" :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT
     "Mac")
    (:REGEX "CFNetwork/.{0,100} Darwin/\\d" :DEVICE-REPLACEMENT "iOS-Device"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "iOS-Device")
    (:REGEX "Outlook-(iOS)/\\d+\\.\\d+\\.prod\\.iphone" :BRAND-REPLACEMENT
     "Apple" :DEVICE-REPLACEMENT "iPhone" :MODEL-REPLACEMENT "iPhone")
    (:REGEX "acer_([A-Za-z0-9]+)_" :DEVICE-REPLACEMENT "Acer $1"
     :BRAND-REPLACEMENT "Acer" :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:ALCATEL|Alcatel)-([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT
     "Alcatel $1" :BRAND-REPLACEMENT "Alcatel" :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:Amoi|AMOI)\\-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Amoi $1"
     :BRAND-REPLACEMENT "Amoi" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "(?:; |\\/|^)((?:Transformer (?:Pad|Prime) |Transformer |PadFone[ _]?)[A-Za-z0-9]*)"
     :DEVICE-REPLACEMENT "Asus $1" :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "(?:asus.{0,200}?ASUS|Asus|ASUS|asus)[\\- ;]*((?:Transformer (?:Pad|Prime) |Transformer |Padfone |Nexus[ _]|)[A-Za-z0-9]+)"
     :DEVICE-REPLACEMENT "Asus $1" :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "(?:ASUS)_([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT "Asus $1"
     :BRAND-REPLACEMENT "Asus" :MODEL-REPLACEMENT "$1")
    (:REGEX "\\bBIRD[ \\-\\.]([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Bird $1"
     :BRAND-REPLACEMENT "Bird" :MODEL-REPLACEMENT "$1")
    (:REGEX "\\bDell ([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Dell $1"
     :BRAND-REPLACEMENT "Dell" :MODEL-REPLACEMENT "$1")
    (:REGEX "DoCoMo/2\\.0 ([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "DoCoMo $1"
     :BRAND-REPLACEMENT "DoCoMo" :MODEL-REPLACEMENT "$1")
    (:REGEX "^.{0,50}?([A-Za-z0-9]{1,30})_W;FOMA" :DEVICE-REPLACEMENT
     "DoCoMo $1" :BRAND-REPLACEMENT "DoCoMo" :MODEL-REPLACEMENT "$1")
    (:REGEX "^.{0,50}?([A-Za-z0-9]{1,30});FOMA" :DEVICE-REPLACEMENT "DoCoMo $1"
     :BRAND-REPLACEMENT "DoCoMo" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "\\b(?:HTC/|HTC/[a-z0-9]{1,20}/|)HTC[ _\\-;]? {0,2}(.{0,200}?)(?:-?Mozilla|fingerPrint|[;/\\(\\)]|$)"
     :DEVICE-REPLACEMENT "HTC $1" :BRAND-REPLACEMENT "HTC" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "Huawei([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Huawei $1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "HUAWEI-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Huawei $1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "HUAWEI ([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT "Huawei $1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "$1")
    (:REGEX "vodafone([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Huawei Vodafone $1"
     :BRAND-REPLACEMENT "Huawei" :MODEL-REPLACEMENT "Vodafone $1")
    (:REGEX "i\\-mate ([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "i-mate $1"
     :BRAND-REPLACEMENT "i-mate" :MODEL-REPLACEMENT "$1")
    (:REGEX "Kyocera\\-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Kyocera $1"
     :BRAND-REPLACEMENT "Kyocera" :MODEL-REPLACEMENT "$1")
    (:REGEX "KWC\\-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Kyocera $1"
     :BRAND-REPLACEMENT "Kyocera" :MODEL-REPLACEMENT "$1")
    (:REGEX "Lenovo[_\\-]([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Lenovo $1"
     :BRAND-REPLACEMENT "Lenovo" :MODEL-REPLACEMENT "$1")
    (:REGEX "(HbbTV)/[0-9]+\\.[0-9]+\\.[0-9]+ \\( ?;(LG)E ?;([^;]{0,30})"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "$2" :MODEL-REPLACEMENT "$3")
    (:REGEX
     "(HbbTV)/1\\.1\\.1.{0,200}CE-HTML/1\\.\\d;(Vendor/|)(THOM[^;]{0,200}?)[;\\s].{0,30}(LF[^;]{1,200});?"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Thomson" :MODEL-REPLACEMENT
     "$4")
    (:REGEX
     "(HbbTV)(?:/1\\.1\\.1|) ?(?: \\(;;;;;\\)|); {0,2}CE-HTML(?:/1\\.\\d|); {0,2}([^ ]{1,30}) ([^;]{1,200});"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "$2" :MODEL-REPLACEMENT "$3")
    (:REGEX "(HbbTV)/1\\.1\\.1 \\(;;;;;\\) Maple_2011" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Samsung")
    (:REGEX
     "(HbbTV)/[0-9]+\\.[0-9]+\\.[0-9]+ \\([^;]{0,30}; ?(?:CUS:([^;]{0,200})|([^;]{1,200})) ?; ?([^;]{0,30})"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "$2$3" :MODEL-REPLACEMENT
     "$4")
    (:REGEX "(HbbTV)/[0-9]+\\.[0-9]+\\.[0-9]+" :DEVICE-REPLACEMENT "$1")
    (:REGEX
     "LGE; (?:Media\\/|)([^;]{0,200});[^;]{0,200};[^;]{0,200};?\\); \"?LG NetCast(\\.TV|\\.Media|)-\\d+"
     :DEVICE-REPLACEMENT "NetCast$2" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$1")
    (:REGEX
     "InettvBrowser/[0-9]{1,30}\\.[0-9A-Z]{1,30} \\([^;]{0,200};(Sony)([^;]{0,200});[^;]{0,200};[^\\)]{0,10}\\)"
     :DEVICE-REPLACEMENT "Inettv" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "InettvBrowser/[0-9]{1,30}\\.[0-9A-Z]{1,30} \\([^;]{0,200};([^;]{0,200});[^;]{0,200};[^\\)]{0,10}\\)"
     :DEVICE-REPLACEMENT "Inettv" :BRAND-REPLACEMENT "Generic_Inettv"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:InettvBrowser|TSBNetTV|NETTV|HBBTV)" :DEVICE-REPLACEMENT
     "Inettv" :BRAND-REPLACEMENT "Generic_Inettv")
    (:REGEX "Series60/\\d\\.\\d (LG)[\\-]?([A-Za-z0-9 \\-]+)"
     :DEVICE-REPLACEMENT "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT
     "$2")
    (:REGEX
     "\\b(?:LGE[ \\-]LG\\-(?:AX|)|LGE |LGE?-LG|LGE?[ \\-]|LG[ /\\-]|lg[\\-])([A-Za-z0-9]+)\\b"
     :DEVICE-REPLACEMENT "LG $1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "(?:^LG[\\-]?|^LGE[\\-/]?)([A-Za-z]+[0-9]+[A-Za-z]*)"
     :DEVICE-REPLACEMENT "LG $1" :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "^LG([0-9]+[A-Za-z]*)" :DEVICE-REPLACEMENT "LG $1"
     :BRAND-REPLACEMENT "LG" :MODEL-REPLACEMENT "$1")
    (:REGEX "(KIN\\.[^ ]+) (\\d+)\\.(\\d+)" :DEVICE-REPLACEMENT "Microsoft $1"
     :BRAND-REPLACEMENT "Microsoft" :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:MSIE|XBMC).{0,200}\\b(Xbox)\\b" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Microsoft" :MODEL-REPLACEMENT "$1")
    (:REGEX "; ARM; Trident/6\\.0; Touch[\\);]" :DEVICE-REPLACEMENT
     "Microsoft Surface RT" :BRAND-REPLACEMENT "Microsoft" :MODEL-REPLACEMENT
     "Surface RT")
    (:REGEX "Motorola\\-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Motorola $1"
     :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "$1")
    (:REGEX "MOTO\\-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Motorola $1"
     :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "$1")
    (:REGEX "MOT\\-([A-z0-9][A-z0-9\\-]*)" :DEVICE-REPLACEMENT "Motorola $1"
     :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT "$1")
    (:REGEX "; (moto[ a-zA-z0-9()]{0,50});((?: Build|.{0,50}\\) AppleWebKit))"
     :DEVICE-REPLACEMENT "$1" :BRAND-REPLACEMENT "Motorola" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "; {0,2}(moto)(.{0,50})(?: Build|\\) AppleWebKit)"
     :DEVICE-REPLACEMENT "Motorola$2" :BRAND-REPLACEMENT "Motorola"
     :MODEL-REPLACEMENT "$2")
    (:REGEX "Nintendo WiiU" :DEVICE-REPLACEMENT "Nintendo Wii U"
     :BRAND-REPLACEMENT "Nintendo" :MODEL-REPLACEMENT "Wii U")
    (:REGEX "Nintendo (DS|3DS|DSi|Wii);" :DEVICE-REPLACEMENT "Nintendo $1"
     :BRAND-REPLACEMENT "Nintendo" :MODEL-REPLACEMENT "$1")
    (:REGEX "(?:Pantech|PANTECH)[ _-]?([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT
     "Pantech $1" :BRAND-REPLACEMENT "Pantech" :MODEL-REPLACEMENT "$1")
    (:REGEX "Philips([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Philips $1"
     :BRAND-REPLACEMENT "Philips" :MODEL-REPLACEMENT "$1")
    (:REGEX "Philips ([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Philips $1"
     :BRAND-REPLACEMENT "Philips" :MODEL-REPLACEMENT "$1")
    (:REGEX "(SMART-TV); .{0,200} Tizen " :DEVICE-REPLACEMENT "Samsung $1"
     :BRAND-REPLACEMENT "Samsung" :MODEL-REPLACEMENT "$1")
    (:REGEX "SymbianOS/9\\.\\d.{0,200} Samsung[/\\-]([A-Za-z0-9 \\-]+)"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "(Samsung)(SGH)(i[0-9]+)" :DEVICE-REPLACEMENT "$1 $2$3"
     :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT "$2-$3")
    (:REGEX "SAMSUNG-ANDROID-MMS/([^;/]{1,100})" :DEVICE-REPLACEMENT "$1"
     :BRAND-REPLACEMENT "Samsung" :MODEL-REPLACEMENT "$1")
    (:REGEX "SAMSUNG(?:; |[ -/])([A-Za-z0-9\\-]+)" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Samsung $1" :BRAND-REPLACEMENT "Samsung"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "(Dreamcast)" :DEVICE-REPLACEMENT "Sega $1" :BRAND-REPLACEMENT
     "Sega" :MODEL-REPLACEMENT "$1")
    (:REGEX "^SIE-([A-Za-z0-9]+)" :DEVICE-REPLACEMENT "Siemens $1"
     :BRAND-REPLACEMENT "Siemens" :MODEL-REPLACEMENT "$1")
    (:REGEX "Softbank/[12]\\.0/([A-Za-z0-9]+)" :DEVICE-REPLACEMENT
     "Softbank $1" :BRAND-REPLACEMENT "Softbank" :MODEL-REPLACEMENT "$1")
    (:REGEX "SonyEricsson ?([A-Za-z0-9\\-]+)" :DEVICE-REPLACEMENT "Ericsson $1"
     :BRAND-REPLACEMENT "SonyEricsson" :MODEL-REPLACEMENT "$1")
    (:REGEX "Android [^;]{1,200}; ([^ ]+) (Sony)/" :DEVICE-REPLACEMENT "$2 $1"
     :BRAND-REPLACEMENT "$2" :MODEL-REPLACEMENT "$1")
    (:REGEX "(Sony)(?:BDP\\/|\\/|)([^ /;\\)]+)[ /;\\)]" :DEVICE-REPLACEMENT
     "$1 $2" :BRAND-REPLACEMENT "$1" :MODEL-REPLACEMENT "$2")
    (:REGEX "Puffin/[\\d\\.]+IT" :DEVICE-REPLACEMENT "iPad" :BRAND-REPLACEMENT
     "Apple" :MODEL-REPLACEMENT "iPad")
    (:REGEX "Puffin/[\\d\\.]+IP" :DEVICE-REPLACEMENT "iPhone"
     :BRAND-REPLACEMENT "Apple" :MODEL-REPLACEMENT "iPhone")
    (:REGEX "Puffin/[\\d\\.]+AT" :DEVICE-REPLACEMENT "Generic Tablet"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Tablet")
    (:REGEX "Puffin/[\\d\\.]+AP" :DEVICE-REPLACEMENT "Generic Smartphone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Smartphone")
    (:REGEX
     "Android[\\- ][\\d]+\\.[\\d]+; [A-Za-z]{2}\\-[A-Za-z]{0,2}; WOWMobile (.{1,200})( Build[/ ]|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android[\\- ][\\d]+\\.[\\d]+\\-update1; [A-Za-z]{2}\\-[A-Za-z]{0,2} {0,2}; {0,2}(.{1,200}?)( Build[/ ]|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android[\\- ][\\d]+(?:\\.[\\d]+)(?:\\.[\\d]+|); {0,2}[A-Za-z]{2}[_\\-][A-Za-z]{0,2}\\-? {0,2}; {0,2}(.{1,200}?)( Build[/ ]|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android[\\- ][\\d]+(?:\\.[\\d]+)(?:\\.[\\d]+|); {0,2}[A-Za-z]{0,2}\\- {0,2}; {0,2}(.{1,200}?)( Build[/ ]|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android[\\- ][\\d]+(?:\\.[\\d]+)(?:\\.[\\d]+|); {0,2}[a-z]{0,2}[_\\-]?[A-Za-z]{0,2};?( Build[/ ]|\\))"
     :DEVICE-REPLACEMENT "Generic Smartphone" :BRAND-REPLACEMENT "Generic"
     :MODEL-REPLACEMENT "Smartphone")
    (:REGEX
     "Android[\\- ][\\d]+(?:\\.[\\d]+)(?:\\.[\\d]+|); {0,3}\\-?[A-Za-z]{2}; {0,2}(.{1,50}?)( Build[/ ]|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android \\d+?(?:\\.\\d+|)(?:\\.\\d+|); ([^;]{1,100}?)(?: Build|\\) AppleWebKit).{1,200}? Mobile Safari"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android \\d+?(?:\\.\\d+|)(?:\\.\\d+|); ([^;]{1,100}?)(?: Build|\\) AppleWebKit).{1,200}? Safari"
     :BRAND-REPLACEMENT "Generic_Android_Tablet" :MODEL-REPLACEMENT "$1")
    (:REGEX
     "Android \\d+?(?:\\.\\d+|)(?:\\.\\d+|); ([^;]{1,100}?)(?: Build|\\))"
     :BRAND-REPLACEMENT "Generic_Android" :MODEL-REPLACEMENT "$1")
    (:REGEX "(GoogleTV)" :BRAND-REPLACEMENT "Generic_Inettv" :MODEL-REPLACEMENT
     "$1")
    (:REGEX "(WebTV)/\\d+.\\d+" :BRAND-REPLACEMENT "Generic_Inettv"
     :MODEL-REPLACEMENT "$1")
    (:REGEX "^(Roku)/DVP-\\d+\\.\\d+" :BRAND-REPLACEMENT "Generic_Inettv"
     :MODEL-REPLACEMENT "$1")
    (:REGEX
     "(Android 3\\.\\d|Opera Tablet|Tablet; .{1,100}Firefox/|Android.{0,100}(?:Tab|Pad))"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Tablet" :BRAND-REPLACEMENT
     "Generic" :MODEL-REPLACEMENT "Tablet")
    (:REGEX
     "(Symbian|\\bS60(Version|V\\d)|\\bS60\\b|\\((Series 60|Windows Mobile|Palm OS|Bada); Opera Mini|Windows CE|Opera Mobi|BREW|Brew|Mobile; .{1,200}Firefox/|iPhone OS|Android|MobileSafari|Windows {0,2}Phone|\\(webOS/|PalmOS)"
     :DEVICE-REPLACEMENT "Generic Smartphone" :BRAND-REPLACEMENT "Generic"
     :MODEL-REPLACEMENT "Smartphone")
    (:REGEX "(hiptop|avantgo|plucker|xiino|blazer|elaine)" :REGEX-FLAG "i"
     :DEVICE-REPLACEMENT "Generic Smartphone" :BRAND-REPLACEMENT "Generic"
     :MODEL-REPLACEMENT "Smartphone")
    (:REGEX
     "^.{0,100}(bot|BUbiNG|zao|borg|DBot|oegp|silk|Xenu|zeal|^NING|CCBot|crawl|htdig|lycos|slurp|teoma|voila|yahoo|Sogou|CiBra|Nutch|^Java/|^JNLP/|Daumoa|Daum|Genieo|ichiro|larbin|pompos|Scrapy|snappy|speedy|spider|msnbot|msrbot|vortex|^vortex|crawler|favicon|indexer|Riddler|scooter|scraper|scrubby|WhatWeb|WinHTTP|bingbot|BingPreview|openbot|gigabot|furlbot|polybot|seekbot|^voyager|archiver|Icarus6j|mogimogi|Netvibes|blitzbot|altavista|charlotte|findlinks|Retreiver|TLSProber|WordPress|SeznamBot|ProoXiBot|wsr\\-agent|Squrl Java|EtaoSpider|PaperLiBot|SputnikBot|A6\\-Indexer|netresearch|searchsight|baiduspider|YisouSpider|ICC\\-Crawler|http%20client|Python-urllib|dataparksearch|converacrawler|Screaming Frog|AppEngine-Google|YahooCacheSystem|fast\\-webcrawler|Sogou Pic Spider|semanticdiscovery|Innovazion Crawler|facebookexternalhit|Google.{0,200}/\\+/web/snippet|Google-HTTP-Java-Client|BlogBridge|IlTrovatore-Setaccio|InternetArchive|GomezAgent|WebThumbnail|heritrix|NewsGator|PagePeeker|Reaper|ZooShot|holmes|NL-Crawler|Pingdom|StatusCake|WhatsApp|masscan|Google Web Preview|Qwantify|Yeti|OgScrper)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Spider" :BRAND-REPLACEMENT "Spider"
     :MODEL-REPLACEMENT "Desktop")
    (:REGEX
     "^(1207|3gso|4thp|501i|502i|503i|504i|505i|506i|6310|6590|770s|802s|a wa|acer|acs\\-|airn|alav|asus|attw|au\\-m|aur |aus |abac|acoo|aiko|alco|alca|amoi|anex|anny|anyw|aptu|arch|argo|bmobile|bell|bird|bw\\-n|bw\\-u|beck|benq|bilb|blac|c55/|cdm\\-|chtm|capi|comp|cond|dall|dbte|dc\\-s|dica|ds\\-d|ds12|dait|devi|dmob|doco|dopo|dorado|el(?:38|39|48|49|50|55|58|68)|el[3456]\\d{2}dual|erk0|esl8|ex300|ez40|ez60|ez70|ezos|ezze|elai|emul|eric|ezwa|fake|fly\\-|fly_|g\\-mo|g1 u|g560|gf\\-5|grun|gene|go.w|good|grad|hcit|hd\\-m|hd\\-p|hd\\-t|hei\\-|hp i|hpip|hs\\-c|htc |htc\\-|htca|htcg)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX
     "^(htcp|htcs|htct|htc_|haie|hita|huaw|hutc|i\\-20|i\\-go|i\\-ma|i\\-mobile|i230|iac|iac\\-|iac/|ig01|im1k|inno|iris|jata|kddi|kgt|kgt/|kpt |kwc\\-|klon|lexi|lg g|lg\\-a|lg\\-b|lg\\-c|lg\\-d|lg\\-f|lg\\-g|lg\\-k|lg\\-l|lg\\-m|lg\\-o|lg\\-p|lg\\-s|lg\\-t|lg\\-u|lg\\-w|lg/k|lg/l|lg/u|lg50|lg54|lge\\-|lge/|leno|m1\\-w|m3ga|m50/|maui|mc01|mc21|mcca|medi|meri|mio8|mioa|mo01|mo02|mode|modo|mot |mot\\-|mt50|mtp1|mtv |mate|maxo|merc|mits|mobi|motv|mozz|n100|n101|n102|n202|n203|n300|n302|n500|n502|n505|n700|n701|n710|nec\\-|nem\\-|newg|neon)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX
     "^(netf|noki|nzph|o2 x|o2\\-x|opwv|owg1|opti|oran|ot\\-s|p800|pand|pg\\-1|pg\\-2|pg\\-3|pg\\-6|pg\\-8|pg\\-c|pg13|phil|pn\\-2|pt\\-g|palm|pana|pire|pock|pose|psio|qa\\-a|qc\\-2|qc\\-3|qc\\-5|qc\\-7|qc07|qc12|qc21|qc32|qc60|qci\\-|qwap|qtek|r380|r600|raks|rim9|rove|s55/|sage|sams|sc01|sch\\-|scp\\-|sdk/|se47|sec\\-|sec0|sec1|semc|sgh\\-|shar|sie\\-|sk\\-0|sl45|slid|smb3|smt5|sp01|sph\\-|spv |spv\\-|sy01|samm|sany|sava|scoo|send|siem|smar|smit|soft|sony|t\\-mo|t218|t250|t600|t610|t618|tcl\\-|tdg\\-|telm|tim\\-|ts70|tsm\\-|tsm3|tsm5|tx\\-9|tagt)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX
     "^(talk|teli|topl|tosh|up.b|upg1|utst|v400|v750|veri|vk\\-v|vk40|vk50|vk52|vk53|vm40|vx98|virg|vertu|vite|voda|vulc|w3c |w3c\\-|wapj|wapp|wapu|wapm|wig |wapi|wapr|wapv|wapy|wapa|waps|wapt|winc|winw|wonu|x700|xda2|xdag|yas\\-|your|zte\\-|zeto|aste|audi|avan|blaz|brew|brvw|bumb|ccwa|cell|cldc|cmd\\-|dang|eml2|fetc|hipt|http|ibro|idea|ikom|ipaq|jbro|jemu|jigs|keji|kyoc|kyok|libw|m\\-cr|midp|mmef|moto|mwbp|mywa|newt|nok6|o2im|pant|pdxg|play|pluc|port|prox|rozo|sama|seri|smal|symb|treo|upsi|vx52|vx53|vx60|vx61|vx70|vx80|vx81|vx83|vx85|wap\\-|webc|whit|wmlb|xda\\-|xda_)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX "^(Ice)$" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX
     "(wap[\\-\\ ]browser|maui|netfront|obigo|teleca|up\\.browser|midp|Opera Mini)"
     :REGEX-FLAG "i" :DEVICE-REPLACEMENT "Generic Feature Phone"
     :BRAND-REPLACEMENT "Generic" :MODEL-REPLACEMENT "Feature Phone")
    (:REGEX "Mac OS" :DEVICE-REPLACEMENT "Mac" :BRAND-REPLACEMENT "Apple"
     :MODEL-REPLACEMENT "Mac")))
(DEFVAR *USER-AGENT-REGEXES*
  '((:REGEX "(GeoEvent Server) (\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)")
    (:REGEX "(ArcGIS Pro)(?: (\\d+)\\.(\\d+)\\.([^ ]+)|)")
    (:REGEX "ArcGIS Client Using WinInet" :FAMILY-REPLACEMENT "ArcMap")
    (:REGEX "(OperationsDashboard)-(?:Windows)-(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Operations Dashboard for ArcGIS")
    (:REGEX "(arcgisearth)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "ArcGIS Earth")
    (:REGEX "com.esri.(earth).phone/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "ArcGIS Earth")
    (:REGEX "(arcgis-explorer)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Explorer for ArcGIS")
    (:REGEX "arcgis-(collector|aurora)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Collector for ArcGIS")
    (:REGEX "(arcgis-workforce)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Workforce for ArcGIS")
    (:REGEX
     "(Collector|Explorer|Workforce)-(?:Android|iOS)-(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "$1 for ArcGIS")
    (:REGEX "(Explorer|Collector)/(\\d+) CFNetwork" :FAMILY-REPLACEMENT
     "$1 for ArcGIS")
    (:REGEX "ArcGISRuntime-(Android|iOS|NET|Qt)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "ArcGIS Runtime SDK for $1")
    (:REGEX
     "ArcGIS\\.?(iOS|Android|NET|Qt)(?:-|\\.)(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "ArcGIS Runtime SDK for $1")
    (:REGEX "ArcGIS\\.Runtime\\.(Qt)\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "ArcGIS Runtime SDK for $1")
    (:REGEX "^(Luminary)[Stage]+/(\\d+) CFNetwork")
    (:REGEX "(ESPN)[%20| ]+Radio/(\\d+)\\.(\\d+)\\.(\\d+) CFNetwork")
    (:REGEX "(Antenna)/(\\d+) CFNetwork" :FAMILY-REPLACEMENT "AntennaPod")
    (:REGEX "(TopPodcasts)Pro/(\\d+) CFNetwork")
    (:REGEX "(MusicDownloader)Lite/(\\d+)\\.(\\d+)\\.(\\d+) CFNetwork")
    (:REGEX
     "^(.{0,200})-iPad\\/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)(?:\\.(\\d+)|) CFNetwork")
    (:REGEX
     "^(.{0,200})-iPhone/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)(?:\\.(\\d+)|) CFNetwork")
    (:REGEX
     "^(.{0,200})/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)(?:\\.(\\d+)|) CFNetwork")
    (:REGEX "^(Luminary)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(espn\\.go)" :FAMILY-REPLACEMENT "ESPN")
    (:REGEX "(espnradio\\.com)" :FAMILY-REPLACEMENT "ESPN")
    (:REGEX "ESPN APP$" :FAMILY-REPLACEMENT "ESPN")
    (:REGEX "(audioboom\\.com)" :FAMILY-REPLACEMENT "AudioBoom")
    (:REGEX " (Rivo) RHYTHM")
    (:REGEX "(CFNetwork)(?:/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)|)"
     :FAMILY-REPLACEMENT "CFNetwork")
    (:REGEX "(Pingdom\\.com_bot_version_)(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "PingdomBot")
    (:REGEX "(PingdomTMS)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "PingdomBot")
    (:REGEX "(PingdomPageSpeed)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "PingdomBot")
    (:REGEX " (PTST)/(\\d+)(?:\\.(\\d+)|)$" :FAMILY-REPLACEMENT
     "WebPageTest.org bot")
    (:REGEX "X11; (Datanyze); Linux")
    (:REGEX "(NewRelicPinger)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "NewRelicPingerBot")
    (:REGEX "(Tableau)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Tableau")
    (:REGEX
     "AppleWebKit/\\d{1,10}\\.\\d{1,10}.{0,200} Safari.{0,200} (CreativeCloud)/(\\d+)\\.(\\d+).(\\d+)"
     :FAMILY-REPLACEMENT "Adobe CreativeCloud")
    (:REGEX "(Salesforce)(?:.)\\/(\\d+)\\.(\\d?)")
    (:REGEX "(\\(StatusCake\\))" :FAMILY-REPLACEMENT "StatusCakeBot")
    (:REGEX "(facebookexternalhit)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "FacebookBot")
    (:REGEX "Google.{0,50}/\\+/web/snippet" :FAMILY-REPLACEMENT
     "GooglePlusBot")
    (:REGEX "via ggpht\\.com GoogleImageProxy" :FAMILY-REPLACEMENT
     "GmailImageProxy")
    (:REGEX
     "YahooMailProxy; https://help\\.yahoo\\.com/kb/yahoo-mail-proxy-SLN28749\\.html"
     :FAMILY-REPLACEMENT "YahooMailProxy")
    (:REGEX "(Twitterbot)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Twitterbot")
    (:REGEX
     "/((?:Ant-|)Nutch|[A-z]+[Bb]ot|[A-z]+[Ss]pider|Axtaris|fetchurl|Isara|ShopSalad|Tailsweep)[ \\-](\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX
     "\\b(008|Altresium|Argus|BaiduMobaider|BoardReader|DNSGroup|DataparkSearch|EDI|Goodzer|Grub|INGRID|Infohelfer|LinkedInBot|LOOQ|Nutch|OgScrper|Pandora|PathDefender|Peew|PostPost|Steeler|Twitterbot|VSE|WebCrunch|WebZIP|Y!J-BR[A-Z]|YahooSeeker|envolk|sproose|wminer)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(MSIE) (\\d+)\\.(\\d+)([a-z]\\d|[a-z]|);.{0,200} MSIECrawler"
     :FAMILY-REPLACEMENT "MSIECrawler")
    (:REGEX "(DAVdroid)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX
     "(Google-HTTP-Java-Client|Apache-HttpClient|PostmanRuntime|Go-http-client|scalaj-http|http%20client|Python-urllib|HttpMonitor|TLSProber|WinHTTP|JNLP|okhttp|aihttp|reqwest|axios|unirest-(?:java|python|ruby|nodejs|php|net))(?:[ /](\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)")
    (:REGEX
     "(Pinterest(?:bot|))/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)[;\\s(]+\\+https://www.pinterest.com/bot.html"
     :FAMILY-REPLACEMENT "Pinterestbot")
    (:REGEX
     "(CSimpleSpider|Cityreview Robot|CrawlDaddy|CrawlFire|Finderbots|Index crawler|Job Roboter|KiwiStatus Spider|Lijit Crawler|QuerySeekerSpider|ScollSpider|Trends Crawler|USyd-NLP-Spider|SiteCat Webbot|BotName\\/\\$BotVersion|123metaspider-Bot|1470\\.net crawler|50\\.nu|8bo Crawler Bot|Aboundex|Accoona-[A-z]{1,30}-Agent|AdsBot-Google(?:-[a-z]{1,30}|)|altavista|AppEngine-Google|archive.{0,30}\\.org_bot|archiver|Ask Jeeves|[Bb]ai[Dd]u[Ss]pider(?:-[A-Za-z]{1,30})(?:-[A-Za-z]{1,30}|)|bingbot|BingPreview|blitzbot|BlogBridge|Bloglovin|BoardReader Blog Indexer|BoardReader Favicon Fetcher|boitho.com-dc|BotSeer|BUbiNG|\\b\\w{0,30}favicon\\w{0,30}\\b|\\bYeti(?:-[a-z]{1,30}|)|Catchpoint(?: bot|)|[Cc]harlotte|Checklinks|clumboot|Comodo HTTP\\(S\\) Crawler|Comodo-Webinspector-Crawler|ConveraCrawler|CRAWL-E|CrawlConvera|Daumoa(?:-feedfetcher|)|Feed Seeker Bot|Feedbin|findlinks|Flamingo_SearchEngine|FollowSite Bot|furlbot|Genieo|gigabot|GomezAgent|gonzo1|(?:[a-zA-Z]{1,30}-|)Googlebot(?:-[a-zA-Z]{1,30}|)|Google SketchUp|grub-client|gsa-crawler|heritrix|HiddenMarket|holmes|HooWWWer|htdig|ia_archiver|ICC-Crawler|Icarus6j|ichiro(?:/mobile|)|IconSurf|IlTrovatore(?:-Setaccio|)|InfuzApp|Innovazion Crawler|InternetArchive|IP2[a-z]{1,30}Bot|jbot\\b|KaloogaBot|Kraken|Kurzor|larbin|LEIA|LesnikBot|Linguee Bot|LinkAider|LinkedInBot|Lite Bot|Llaut|lycos|Mail\\.RU_Bot|masscan|masidani_bot|Mediapartners-Google|Microsoft .{0,30} Bot|mogimogi|mozDex|MJ12bot|msnbot(?:-media {0,2}|)|msrbot|Mtps Feed Aggregation System|netresearch|Netvibes|NewsGator[^/]{0,30}|^NING|Nutch[^/]{0,30}|Nymesis|ObjectsSearch|OgScrper|Orbiter|OOZBOT|PagePeeker|PagesInventory|PaxleFramework|Peeplo Screenshot Bot|PHPCrawl|PlantyNet_WebRobot|Pompos|Qwantify|Read%20Later|Reaper|RedCarpet|Retreiver|Riddler|Rival IQ|scooter|Scrapy|Scrubby|searchsight|seekbot|semanticdiscovery|SemrushBot|Simpy|SimplePie|SEOstats|SimpleRSS|SiteCon|Slackbot-LinkExpanding|Slack-ImgProxy|Slurp|snappy|Speedy Spider|Squrl Java|Stringer|TheUsefulbot|ThumbShotsBot|Thumbshots\\.ru|Tiny Tiny RSS|Twitterbot|WhatsApp|URL2PNG|Vagabondo|VoilaBot|^vortex|Votay bot|^voyager|WASALive.Bot|Web-sniffer|WebThumb|WeSEE:[A-z]{1,30}|WhatWeb|WIRE|WordPress|Wotbox|www\\.almaden\\.ibm\\.com|Xenu(?:.s|) Link Sleuth|Xerka [A-z]{1,30}Bot|yacy(?:bot|)|YahooSeeker|Yahoo! Slurp|Yandex\\w{1,30}|YodaoBot(?:-[A-z]{1,30}|)|YottaaMonitor|Yowedo|^Zao|^Zao-Crawler|ZeBot_www\\.ze\\.bz|ZooShot|ZyBorg|ArcGIS Hub Indexer)(?:[ /]v?(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)|)")
    (:REGEX
     "\\b(Boto3?|JetS3t|aws-(?:cli|sdk-(?:cpp|go|java|nodejs|ruby2?|dotnet-(?:\\d{1,2}|core)))|s3fs)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(FME)\\/(\\d+\\.\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(QGIS)\\/(\\d)\\.?0?(\\d{1,2})\\.?0?(\\d{1,2})")
    (:REGEX "(JOSM)/(\\d+)\\.(\\d+)")
    (:REGEX
     "(Tygron Platform) \\((\\d+)\\.(\\d+)\\.(\\d+(?:\\.\\d+| RC \\d+\\.\\d+))")
    (:REGEX
     "\\[(FBAN/MessengerForiOS|FB_IAB/MESSENGER);FBAV/(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)|)"
     :FAMILY-REPLACEMENT "Facebook Messenger")
    (:REGEX "\\[FB.{0,300};(FBAV)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Facebook")
    (:REGEX "\\[FB.{0,300};" :FAMILY-REPLACEMENT "Facebook")
    (:REGEX
     "^.{0,200}?(?:\\/[A-Za-z0-9\\.]{0,50}|) {0,2}([A-Za-z0-9 \\-_\\!\\[\\]:]{0,50}(?:[Aa]rchiver|[Ii]ndexer|[Ss]craper|[Bb]ot|[Ss]pider|[Cc]rawl[a-z]{0,50}))[/ ](\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)")
    (:REGEX
     "^.{0,200}?((?:[A-Za-z][A-Za-z0-9 -]{0,50}|)[^C][^Uu][Bb]ot)\\b(?:(?:[ /]| v)(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)")
    (:REGEX
     "^.{0,200}?((?:[A-z0-9]{1,50}|[A-z\\-]{1,50} ?|)(?: the |)(?:[Ss][Pp][Ii][Dd][Ee][Rr]|[Ss]crape|[Cc][Rr][Aa][Ww][Ll])[A-z0-9]{0,50})(?:(?:[ /]| v)(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)")
    (:REGEX "(HbbTV)/(\\d+)\\.(\\d+)\\.(\\d+) \\(")
    (:REGEX
     "(Chimera|SeaMonkey|Camino|Waterfox)/(\\d+)\\.(\\d+)\\.?([ab]?\\d+[a-z]*|)")
    (:REGEX "(SailfishBrowser)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Sailfish Browser")
    (:REGEX "\\[(Pinterest)/[^\\]]{1,50}\\]")
    (:REGEX
     "(Pinterest)(?: for Android(?: Tablet|)|)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX
     "Mozilla.{1,200}Mobile.{1,100}(Instagram).(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "Mozilla.{1,200}Mobile.{1,100}(Flipboard).(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "Mozilla.{1,200}Mobile.{1,100}(Flipboard-Briefing).(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "Mozilla.{1,200}Mobile.{1,100}(Onefootball)\\/Android.(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Snapchat)\\/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "(Twitter for (?:iPhone|iPad)|TwitterAndroid)(?:\\/(\\d+)\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Twitter")
    (:REGEX
     "Mozilla.{1,200}Mobile.{1,100}(Phantom\\/ios|android).(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Phantom")
    (:REGEX "Mozilla.{1,100}Mobile.{1,100}(AspiegelBot|PetalBot)"
     :FAMILY-REPLACEMENT "Spider")
    (:REGEX "AspiegelBot|PetalBot" :FAMILY-REPLACEMENT "Spider")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+) Basilisk/(\\d+)" :FAMILY-REPLACEMENT
     "Basilisk")
    (:REGEX "(PaleMoon)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "Pale Moon")
    (:REGEX "(Fennec)/(\\d+)\\.(\\d+)\\.?([ab]?\\d+[a-z]*)" :FAMILY-REPLACEMENT
     "Firefox Mobile")
    (:REGEX "(Fennec)/(\\d+)\\.(\\d+)(pre)" :FAMILY-REPLACEMENT
     "Firefox Mobile")
    (:REGEX "(Fennec)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Firefox Mobile")
    (:REGEX "(?:Mobile|Tablet);.{0,200}(Firefox)/(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Firefox Mobile")
    (:REGEX "(Namoroka|Shiretoko|Minefield)/(\\d+)\\.(\\d+)\\.(\\d+(?:pre|))"
     :FAMILY-REPLACEMENT "Firefox ($1)")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)(a\\d+[a-z]*)" :FAMILY-REPLACEMENT
     "Firefox Alpha")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)(b\\d+[a-z]*)" :FAMILY-REPLACEMENT
     "Firefox Beta")
    (:REGEX "(Firefox)-(?:\\d+\\.\\d+|)/(\\d+)\\.(\\d+)(a\\d+[a-z]*)"
     :FAMILY-REPLACEMENT "Firefox Alpha")
    (:REGEX "(Firefox)-(?:\\d+\\.\\d+|)/(\\d+)\\.(\\d+)(b\\d+[a-z]*)"
     :FAMILY-REPLACEMENT "Firefox Beta")
    (:REGEX "(Namoroka|Shiretoko|Minefield)/(\\d+)\\.(\\d+)([ab]\\d+[a-z]*|)"
     :FAMILY-REPLACEMENT "Firefox ($1)")
    (:REGEX "(Firefox).{0,200}Tablet browser (\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "MicroB")
    (:REGEX "(MozillaDeveloperPreview)/(\\d+)\\.(\\d+)([ab]\\d+[a-z]*|)")
    (:REGEX "(FxiOS)/(\\d+)\\.(\\d+)(\\.(\\d+)|)(\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Firefox iOS")
    (:REGEX "(Flock)/(\\d+)\\.(\\d+)(b\\d+?)")
    (:REGEX "(RockMelt)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Navigator)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Netscape")
    (:REGEX "(Navigator)/(\\d+)\\.(\\d+)([ab]\\d+)" :FAMILY-REPLACEMENT
     "Netscape")
    (:REGEX "(Netscape6)/(\\d+)\\.(\\d+)\\.?([ab]?\\d+|)" :FAMILY-REPLACEMENT
     "Netscape")
    (:REGEX "(MyIBrow)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "My Internet Browser")
    (:REGEX "(UC? ?Browser|UCWEB|U3)[ /]?(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "UC Browser")
    (:REGEX "(Opera Tablet).{0,200}Version/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(Opera Mini)(?:/att|)/?(\\d+|)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(Opera)/.{1,100}Opera Mobi.{1,100}Version/(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Opera Mobile")
    (:REGEX "(Opera)/(\\d+)\\.(\\d+).{1,100}Opera Mobi" :FAMILY-REPLACEMENT
     "Opera Mobile")
    (:REGEX "Opera Mobi.{1,100}(Opera)(?:/|\\s+)(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Opera Mobile")
    (:REGEX "Opera Mobi" :FAMILY-REPLACEMENT "Opera Mobile")
    (:REGEX "(Opera)/9.80.{0,200}Version/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(?:Mobile Safari).{1,300}(OPR)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Opera Mobile")
    (:REGEX "(?:Chrome).{1,300}(OPR)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Opera")
    (:REGEX "(Coast)/(\\d+).(\\d+).(\\d+)" :FAMILY-REPLACEMENT "Opera Coast")
    (:REGEX "(OPiOS)/(\\d+).(\\d+).(\\d+)" :FAMILY-REPLACEMENT "Opera Mini")
    (:REGEX "Chrome/.{1,200}( MMS)/(\\d+).(\\d+).(\\d+)" :FAMILY-REPLACEMENT
     "Opera Neon")
    (:REGEX "(hpw|web)OS/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "webOS Browser")
    (:REGEX "(luakit)" :FAMILY-REPLACEMENT "LuaKit")
    (:REGEX "(Snowshoe)/(\\d+)\\.(\\d+).(\\d+)")
    (:REGEX
     "Gecko/\\d+ (Lightning)/(\\d+)\\.(\\d+)\\.?((?:[ab]?\\d+[a-z]*)|(?:\\d*))")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)\\.(\\d+(?:pre|)) \\(Swiftfox\\)"
     :FAMILY-REPLACEMENT "Swiftfox")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)([ab]\\d+[a-z]*|) \\(Swiftfox\\)"
     :FAMILY-REPLACEMENT "Swiftfox")
    (:REGEX "(rekonq)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|) Safari" :FAMILY-REPLACEMENT
     "Rekonq")
    (:REGEX "rekonq" :FAMILY-REPLACEMENT "Rekonq")
    (:REGEX "(conkeror|Conkeror)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Conkeror")
    (:REGEX "(konqueror)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Konqueror")
    (:REGEX "(WeTab)-Browser")
    (:REGEX "(Comodo_Dragon)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Comodo Dragon")
    (:REGEX "(Symphony) (\\d+).(\\d+)")
    (:REGEX "PLAYSTATION 3.{1,200}WebKit" :FAMILY-REPLACEMENT "NetFront NX")
    (:REGEX "PLAYSTATION 3" :FAMILY-REPLACEMENT "NetFront")
    (:REGEX "(PlayStation Portable)" :FAMILY-REPLACEMENT "NetFront")
    (:REGEX "(PlayStation Vita)" :FAMILY-REPLACEMENT "NetFront NX")
    (:REGEX "AppleWebKit.{1,200} (NX)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "NetFront NX")
    (:REGEX "(Nintendo 3DS)" :FAMILY-REPLACEMENT "NetFront NX")
    (:REGEX "(Silk)/(\\d+)\\.(\\d+)(?:\\.([0-9\\-]+)|)" :FAMILY-REPLACEMENT
     "Amazon Silk")
    (:REGEX "(Puffin)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "Windows Phone .{0,200}(Edge)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Edge Mobile")
    (:REGEX "(EdgiOS|EdgA)/(\\d+)\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Edge Mobile")
    (:REGEX "(OculusBrowser)/(\\d+)\\.(\\d+).0.0(?:\\.([0-9\\-]+)|)"
     :FAMILY-REPLACEMENT "Oculus Browser")
    (:REGEX "(SamsungBrowser)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Samsung Internet")
    (:REGEX "(SznProhlizec)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "Seznam prohlížeč")
    (:REGEX "(coc_coc_browser)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Coc Coc")
    (:REGEX "(baidubrowser)[/\\s](\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Baidu Browser")
    (:REGEX "(FlyFlow)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Baidu Explorer")
    (:REGEX "(MxBrowser)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "Maxthon")
    (:REGEX "(Crosswalk)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Line)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "LINE")
    (:REGEX "(MiuiBrowser)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "MiuiBrowser")
    (:REGEX "(Mint Browser)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Mint Browser")
    (:REGEX "(TopBuzz)/(\\d+).(\\d+).(\\d+)" :FAMILY-REPLACEMENT "TopBuzz")
    (:REGEX "Mozilla.{1,200}Android.{1,200}(GSA)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Google")
    (:REGEX "(MQQBrowser/Mini)(?:(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)"
     :FAMILY-REPLACEMENT "QQ Browser Mini")
    (:REGEX "(MQQBrowser)(?:/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)"
     :FAMILY-REPLACEMENT "QQ Browser Mobile")
    (:REGEX "(QQBrowser)(?:/(\\d+)(?:\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|)|)|)"
     :FAMILY-REPLACEMENT "QQ Browser")
    (:REGEX "Mobile.{0,200}(DuckDuckGo)/(\\d+)" :FAMILY-REPLACEMENT
     "DuckDuckGo Mobile")
    (:REGEX "(Tenta/)(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Tenta Browser")
    (:REGEX "Version/.{1,300}(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Chrome Mobile WebView")
    (:REGEX "; wv\\).{1,300}(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Chrome Mobile WebView")
    (:REGEX "(CrMo)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Chrome Mobile")
    (:REGEX "(CriOS)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Chrome Mobile iOS")
    (:REGEX "(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+) Mobile(?:[ /]|$)"
     :FAMILY-REPLACEMENT "Chrome Mobile")
    (:REGEX " Mobile .{1,300}(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Chrome Mobile")
    (:REGEX "(chromeframe)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Chrome Frame")
    (:REGEX "(SLP Browser)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Tizen Browser")
    (:REGEX "(SE 2\\.X) MetaSr (\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Sogou Explorer")
    (:REGEX "(Rackspace Monitoring)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "RackspaceBot")
    (:REGEX "(PRTG Network Monitor)")
    (:REGEX "(PyAMF)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(YaBrowser)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Yandex Browser")
    (:REGEX "(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+).{0,100} MRCHROME"
     :FAMILY-REPLACEMENT "Mail.ru Chromium Browser")
    (:REGEX "(AOL) (\\d+)\\.(\\d+); AOLBuild (\\d+)")
    (:REGEX
     "(PodCruncher|Downcast)[ /]?(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX " (BoxNotes)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Whale)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+) Mobile(?:[ /]|$)"
     :FAMILY-REPLACEMENT "Whale")
    (:REGEX "(Whale)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Whale")
    (:REGEX "(1Password)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Ghost)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "PAN (GlobalProtect)/(\\d+)\\.(\\d+)\\.(\\d+) .{1,100} \\(X11; Linux x86_64\\)")
    (:REGEX "^(surveyon)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Surveyon")
    (:REGEX "(Slack_SSB)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Slack Desktop Client")
    (:REGEX "(HipChat)/?(\\d+|)" :FAMILY-REPLACEMENT "HipChat Desktop Client")
    (:REGEX
     "\\b(MobileIron|FireWeb|Jasmine|ANTGalio|Midori|Fresco|Lobo|PaleMoon|Maxthon|Lynx|OmniWeb|Dillo|Camino|Demeter|Fluid|Fennec|Epiphany|Shiira|Sunrise|Spotify|Flock|Netscape|Lunascape|WebPilot|NetFront|Netfront|Konqueror|SeaMonkey|Kazehakase|Vienna|Iceape|Iceweasel|IceWeasel|Iron|K-Meleon|Sleipnir|Galeon|GranParadiso|Opera Mini|iCab|NetNewsWire|ThunderBrowse|Iris|UP\\.Browser|Bunjalloo|Google Earth|Raven for Mac|Openwave|MacOutlook|Electron|OktaMobile)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "Microsoft Office Outlook 12\\.\\d+\\.\\d+|MSOffice 12"
     :FAMILY-REPLACEMENT "Outlook" :V1-REPLACEMENT "2007")
    (:REGEX "Microsoft Outlook 14\\.\\d+\\.\\d+|MSOffice 14"
     :FAMILY-REPLACEMENT "Outlook" :V1-REPLACEMENT "2010")
    (:REGEX "Microsoft Outlook 15\\.\\d+\\.\\d+" :FAMILY-REPLACEMENT "Outlook"
     :V1-REPLACEMENT "2013")
    (:REGEX "Microsoft Outlook (?:Mail )?16\\.\\d+\\.\\d+|MSOffice 16"
     :FAMILY-REPLACEMENT "Outlook" :V1-REPLACEMENT "2016")
    (:REGEX "Microsoft Office (Word) 2014")
    (:REGEX "Outlook-Express\\/7\\.0" :FAMILY-REPLACEMENT "Windows Live Mail")
    (:REGEX "(Airmail) (\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(Thunderbird)/(\\d+)\\.(\\d+)(?:\\.(\\d+(?:pre|))|)"
     :FAMILY-REPLACEMENT "Thunderbird")
    (:REGEX "(Postbox)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Postbox")
    (:REGEX "(Barca(?:Pro)?)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "Barca")
    (:REGEX "(Lotus-Notes)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)" :FAMILY-REPLACEMENT
     "Lotus Notes")
    (:REGEX "Superhuman" :FAMILY-REPLACEMENT "Superhuman")
    (:REGEX "(Vivaldi)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(Edge?)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Edge")
    (:REGEX "(brave)/(\\d+)\\.(\\d+)\\.(\\d+) Chrome" :FAMILY-REPLACEMENT
     "Brave")
    (:REGEX "(Chrome)/(\\d+)\\.(\\d+)\\.(\\d+)[\\d.]{0,100} Iron[^/]"
     :FAMILY-REPLACEMENT "Iron")
    (:REGEX "\\b(Dolphin)(?: |HDCN/|/INT\\-)(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(HeadlessChrome)(?:/(\\d+)\\.(\\d+)\\.(\\d+)|)")
    (:REGEX "(Evolution)/(\\d+)\\.(\\d+)\\.(\\d+\\.\\d+)")
    (:REGEX "(RCM CardDAV plugin)/(\\d+)\\.(\\d+)\\.(\\d+(?:-dev|))")
    (:REGEX
     "(bingbot|Bolt|AdobeAIR|Jasmine|IceCat|Skyfire|Midori|Maxthon|Lynx|Arora|IBrowse|Dillo|Camino|Shiira|Fennec|Phoenix|Flock|Netscape|Lunascape|Epiphany|WebPilot|Opera Mini|Opera|NetFront|Netfront|Konqueror|Googlebot|SeaMonkey|Kazehakase|Vienna|Iceape|Iceweasel|IceWeasel|Iron|K-Meleon|Sleipnir|Galeon|GranParadiso|iCab|iTunes|MacAppStore|NetNewsWire|Space Bison|Stainless|Orca|Dolfin|BOLT|Minimo|Tizen Browser|Polaris|Abrowser|Planetweb|ICE Browser|mDolphin|qutebrowser|Otter|QupZilla|MailBar|kmail2|YahooMobileMail|ExchangeWebServices|ExchangeServicesClient|Dragon|Outlook-iOS-Android)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(Chromium|Chrome)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(IEMobile)[ /](\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "IE Mobile")
    (:REGEX "(BacaBerita App)\\/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(bPod|Pocket Casts|Player FM)$")
    (:REGEX "^(AlexaMediaPlayer|VLC)/(\\d+)\\.(\\d+)\\.([^.\\s]+)")
    (:REGEX
     "^(AntennaPod|WMPlayer|Zune|Podkicker|Radio|ExoPlayerDemo|Overcast|PocketTunes|NSPlayer|okhttp|DoggCatcher|QuickNews|QuickTime|Peapod|Podcasts|GoldenPod|VLC|Spotify|Miro|MediaGo|Juice|iPodder|gPodder|Banshee)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "^(Peapod|Liferea)/([^.\\s]+)\\.([^.\\s]+|)\\.?([^.\\s]+|)")
    (:REGEX "^(bPod|Player FM) BMID/(\\S+)")
    (:REGEX "^(Podcast ?Addict)/v(\\d+) ")
    (:REGEX "^(Podcast ?Addict) " :FAMILY-REPLACEMENT "PodcastAddict")
    (:REGEX "(Replay) AV") (:REGEX "(VOX) Music Player")
    (:REGEX "(CITA) RSS Aggregator/(\\d+)\\.(\\d+)") (:REGEX "(Pocket Casts)$")
    (:REGEX "(Player FM)$")
    (:REGEX
     "(LG Player|Doppler|FancyMusic|MediaMonkey|Clementine) (\\d+)\\.(\\d+)\\.?([^.\\s]+|)\\.?([^.\\s]+|)")
    (:REGEX "(philpodder)/(\\d+)\\.(\\d+)\\.?([^.\\s]+|)\\.?([^.\\s]+|)")
    (:REGEX
     "(Player FM|Pocket Casts|DoggCatcher|Spotify|MediaMonkey|MediaGo|BashPodder)")
    (:REGEX "(QuickTime)\\.(\\d+)\\.(\\d+)\\.(\\d+)") (:REGEX "(Kinoma)(\\d+)")
    (:REGEX "(Fancy) Cloud Music (\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "FancyMusic")
    (:REGEX "EspnDownloadManager" :FAMILY-REPLACEMENT "ESPN")
    (:REGEX "(ESPN) Radio (\\d+)\\.(\\d+)(?:\\.(\\d+)|) ?(?:rv:(\\d+)|) ")
    (:REGEX "(podracer|jPodder) v ?(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "(ZDM)/(\\d+)\\.(\\d+)[; ]?")
    (:REGEX "(Zune|BeyondPod) (\\d+)(?:\\.(\\d+)|)[\\);]")
    (:REGEX "(WMPlayer)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(Lavf)" :FAMILY-REPLACEMENT "WMPlayer")
    (:REGEX "^(RSSRadio)[ /]?(\\d+|)")
    (:REGEX "(RSS_Radio) (\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "RSSRadio")
    (:REGEX "(Podkicker) \\S+/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Podkicker")
    (:REGEX
     "^(HTC) Streaming Player \\S+ / \\S+ / \\S+ / (\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "^(Stitcher)/iOS") (:REGEX "^(Stitcher)/Android")
    (:REGEX "^(VLC) .{0,200}version (\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX " (VLC) for")
    (:REGEX "(vlc)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "VLC")
    (:REGEX "^(foobar)\\S{1,10}/(\\d+)\\.(\\d+|)\\.?([\\da-z]+|)")
    (:REGEX "^(Clementine)\\S{1,10} (\\d+)\\.(\\d+|)\\.?(\\d+|)")
    (:REGEX "(amarok)/(\\d+)\\.(\\d+|)\\.?(\\d+|)" :FAMILY-REPLACEMENT
     "Amarok")
    (:REGEX "(Custom)-Feed Reader")
    (:REGEX
     "(iRider|Crazy Browser|SkipStone|iCab|Lunascape|Sleipnir|Maemo Browser) (\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX
     "(iCab|Lunascape|Opera|Android|Jasmine|Polaris|Microsoft SkyDriveSync|The Bat!) (\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(Kindle)/(\\d+)\\.(\\d+)")
    (:REGEX "(Android) Donut" :V1-REPLACEMENT "1" :V2-REPLACEMENT "2")
    (:REGEX "(Android) Eclair" :V1-REPLACEMENT "2" :V2-REPLACEMENT "1")
    (:REGEX "(Android) Froyo" :V1-REPLACEMENT "2" :V2-REPLACEMENT "2")
    (:REGEX "(Android) Gingerbread" :V1-REPLACEMENT "2" :V2-REPLACEMENT "3")
    (:REGEX "(Android) Honeycomb" :V1-REPLACEMENT "3")
    (:REGEX "(MSIE) (\\d+)\\.(\\d+).{0,100}XBLWP7" :FAMILY-REPLACEMENT
     "IE Large Screen")
    (:REGEX "(Nextcloud)") (:REGEX "(mirall)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(ownCloud-android)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Owncloud")
    (:REGEX "(OC)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+) \\(Skype for Business\\)"
     :FAMILY-REPLACEMENT "Skype")
    (:REGEX "(OpenVAS)(?:-VT)?(?:[ \\/](\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)"
     :FAMILY-REPLACEMENT "OpenVAS Scanner")
    (:REGEX "(AnyConnect)\\/(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)|)|)")
    (:REGEX "compatible; monitis" :FAMILY-REPLACEMENT "Monitis")
    (:REGEX "(Obigo)InternetBrowser") (:REGEX "(Obigo)\\-Browser")
    (:REGEX "(Obigo|OBIGO)[^\\d]*(\\d+)(?:.(\\d+)|)" :FAMILY-REPLACEMENT
     "Obigo")
    (:REGEX "(MAXTHON|Maxthon) (\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Maxthon")
    (:REGEX "(Maxthon|MyIE2|Uzbl|Shiira)" :V1-REPLACEMENT "0")
    (:REGEX "(BrowseX) \\((\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(NCSA_Mosaic)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "NCSA Mosaic")
    (:REGEX "(POLARIS)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Polaris")
    (:REGEX "(Embider)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Polaris")
    (:REGEX "(BonEcho)/(\\d+)\\.(\\d+)\\.?([ab]?\\d+|)" :FAMILY-REPLACEMENT
     "Bon Echo")
    (:REGEX "(TopBuzz) com.alex.NewsMaster/(\\d+).(\\d+).(\\d+)"
     :FAMILY-REPLACEMENT "TopBuzz")
    (:REGEX "(TopBuzz) com.mobilesrepublic.newsrepublic/(\\d+).(\\d+).(\\d+)"
     :FAMILY-REPLACEMENT "TopBuzz")
    (:REGEX "(TopBuzz) com.topbuzz.videoen/(\\d+).(\\d+).(\\d+)"
     :FAMILY-REPLACEMENT "TopBuzz")
    (:REGEX
     "(iPod|iPhone|iPad).{1,200}GSA/(\\d+)\\.(\\d+)\\.(\\d+)(?:\\.(\\d+)|) Mobile"
     :FAMILY-REPLACEMENT "Google")
    (:REGEX
     "(iPod|iPhone|iPad).{1,200}Version/(\\d+)\\.(\\d+)(?:\\.(\\d+)|).{1,200}[ +]Safari"
     :FAMILY-REPLACEMENT "Mobile Safari")
    (:REGEX
     "(iPod|iPod touch|iPhone|iPad);.{0,30}CPU.{0,30}OS[ +](\\d+)_(\\d+)(?:_(\\d+)|).{0,30} AppleNews\\/\\d+\\.\\d+(?:\\.\\d+|)"
     :FAMILY-REPLACEMENT "Mobile Safari UI/WKWebView")
    (:REGEX "(iPod|iPhone|iPad).{1,200}Version/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)"
     :FAMILY-REPLACEMENT "Mobile Safari UI/WKWebView")
    (:REGEX "(iPod|iPod touch|iPhone|iPad).{0,200} Safari" :FAMILY-REPLACEMENT
     "Mobile Safari")
    (:REGEX "(iPod|iPod touch|iPhone|iPad)" :FAMILY-REPLACEMENT
     "Mobile Safari UI/WKWebView")
    (:REGEX "(Watch)(\\d+),(\\d+)" :FAMILY-REPLACEMENT "Apple $1 App")
    (:REGEX
     "(Outlook-iOS)/\\d+\\.\\d+\\.prod\\.iphone \\((\\d+)\\.(\\d+)\\.(\\d+)\\)")
    (:REGEX "(AvantGo) (\\d+).(\\d+)")
    (:REGEX "(OneBrowser)/(\\d+).(\\d+)" :FAMILY-REPLACEMENT "ONE Browser")
    (:REGEX "(Avant)" :V1-REPLACEMENT "1")
    (:REGEX "(QtCarBrowser)" :V1-REPLACEMENT "1")
    (:REGEX "^(iBrowser/Mini)(\\d+).(\\d+)" :FAMILY-REPLACEMENT
     "iBrowser Mini")
    (:REGEX "^(iBrowser|iRAPP)/(\\d+).(\\d+)")
    (:REGEX "^(Nokia)" :FAMILY-REPLACEMENT "Nokia Services (WAP) Browser")
    (:REGEX "(NokiaBrowser)/(\\d+)\\.(\\d+).(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Nokia Browser")
    (:REGEX "(NokiaBrowser)/(\\d+)\\.(\\d+).(\\d+)" :FAMILY-REPLACEMENT
     "Nokia Browser")
    (:REGEX "(NokiaBrowser)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Nokia Browser")
    (:REGEX "(BrowserNG)/(\\d+)\\.(\\d+).(\\d+)" :FAMILY-REPLACEMENT
     "Nokia Browser")
    (:REGEX "(Series60)/5\\.0" :FAMILY-REPLACEMENT "Nokia Browser"
     :V1-REPLACEMENT "7" :V2-REPLACEMENT "0")
    (:REGEX "(Series60)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Nokia OSS Browser")
    (:REGEX "(S40OviBrowser)/(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Ovi Browser")
    (:REGEX "(Nokia)[EN]?(\\d+)")
    (:REGEX "(PlayBook).{1,200}RIM Tablet OS (\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "BlackBerry WebKit")
    (:REGEX "(Black[bB]erry|BB10).{1,200}Version/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "BlackBerry WebKit")
    (:REGEX "(Black[bB]erry)\\s?(\\d+)" :FAMILY-REPLACEMENT "BlackBerry")
    (:REGEX "(OmniWeb)/v(\\d+)\\.(\\d+)")
    (:REGEX "(Blazer)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Palm Blazer")
    (:REGEX "(Pre)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Palm Pre")
    (:REGEX "(ELinks)/(\\d+)\\.(\\d+)") (:REGEX "(ELinks) \\((\\d+)\\.(\\d+)")
    (:REGEX "(Links) \\((\\d+)\\.(\\d+)")
    (:REGEX "(QtWeb) Internet Browser/(\\d+)\\.(\\d+)")
    (:REGEX "(PhantomJS)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(AppleWebKit)/(\\d+)(?:\\.(\\d+)|)\\+ .{0,200} Safari"
     :FAMILY-REPLACEMENT "WebKit Nightly")
    (:REGEX "(Version)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|).{0,100}Safari/"
     :FAMILY-REPLACEMENT "Safari")
    (:REGEX "(Safari)/\\d+") (:REGEX "(OLPC)/Update(\\d+)\\.(\\d+)")
    (:REGEX "(OLPC)/Update()\\.(\\d+)" :V1-REPLACEMENT "0")
    (:REGEX "(SEMC\\-Browser)/(\\d+)\\.(\\d+)")
    (:REGEX "(Teleca)" :FAMILY-REPLACEMENT "Teleca Browser")
    (:REGEX "(Phantom)/V(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "Phantom Browser")
    (:REGEX "(Trident)/(7|8)\\.(0)" :FAMILY-REPLACEMENT "IE" :V1-REPLACEMENT
     "11")
    (:REGEX "(Trident)/(6)\\.(0)" :FAMILY-REPLACEMENT "IE" :V1-REPLACEMENT
     "10")
    (:REGEX "(Trident)/(5)\\.(0)" :FAMILY-REPLACEMENT "IE" :V1-REPLACEMENT "9")
    (:REGEX "(Trident)/(4)\\.(0)" :FAMILY-REPLACEMENT "IE" :V1-REPLACEMENT "8")
    (:REGEX "(Espial)/(\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)")
    (:REGEX "(AppleWebKit)/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Apple Mail")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)(?:\\.(\\d+)|$)")
    (:REGEX "(Firefox)/(\\d+)\\.(\\d+)(pre|[ab]\\d+[a-z]*|)")
    (:REGEX "([MS]?IE) (\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT "IE")
    (:REGEX "(python-requests)/(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Python Requests")
    (:REGEX
     "\\b(Windows-Update-Agent|WindowsPowerShell|Microsoft-CryptoAPI|SophosUpdateManager|SophosAgent|Debian APT-HTTP|Ubuntu APT-HTTP|libcurl-agent|libwww-perl|urlgrabber|curl|PycURL|Wget|wget2|aria2|Axel|OpenBSD ftp|lftp|jupdate|insomnia|fetch libfetch|akka-http|got|CloudCockpitBackend|ReactorNetty|axios|Jersey|Vert.x-WebClient|Apache-CXF|Go-CF-client|go-resty|AHC|HTTPie)(?:[ /](\\d+)(?:\\.(\\d+)|)(?:\\.(\\d+)|)|)")
    (:REGEX "^(cf)\\/(\\d+)\\.(\\d+)\\.(\\S+)" :FAMILY-REPLACEMENT
     "CloudFoundry")
    (:REGEX "^(sap-leonardo-iot-sdk-nodejs) \\/ (\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(SAP NetWeaver Application Server) \\(1.0;(\\d{1})(\\d{2})\\)")
    (:REGEX "^(\\w+-HTTPClient)\\/(\\d+)\\.(\\d+)-(\\S+)" :FAMILY-REPLACEMENT
     "HTTPClient")
    (:REGEX "^(go-cli)\\s(\\d+)\\.(\\d+).(\\S+)")
    (:REGEX
     "^(Java-EurekaClient|Java-EurekaClient-Replication|HTTPClient|lua-resty-http)\\/v?(\\d+)\\.(\\d+)\\.?(\\d*)")
    (:REGEX
     "^(ping-service|sap xsuaa|Node-oauth|Site24x7|SAP CPI|JAEGER_SECURITY)")
    (:REGEX "(Python/3\\.\\d{1,3} aiohttp)/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "Python aiohttp")
    (:REGEX "(Java)[/ ]?\\d{1}\\.(\\d+)\\.(\\d+)[_-]*([a-zA-Z0-9]+|)")
    (:REGEX "(Java)[/ ]?(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "(minio-go)/v(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(ureq)[/ ](\\d+)\\.(\\d+).(\\d+)")
    (:REGEX "^(http\\.rb)/(\\d+)\\.(\\d+).(\\d+)")
    (:REGEX "^(GuzzleHttp)/(\\d+)\\.(\\d+).(\\d+)") (:REGEX "^(grab)\\b")
    (:REGEX "^(Cyberduck)/(\\d+)\\.(\\d+)\\.(\\d+)(?:\\.\\d+|)")
    (:REGEX
     "^(S3 Browser) (\\d+)[.-](\\d+)[.-](\\d+)(?:\\s*https?://s3browser\\.com|)")
    (:REGEX "(S3Gof3r)")
    (:REGEX
     "\\b(ibm-cos-sdk-(?:core|java|js|python))/(\\d+)\\.(\\d+)(?:\\.(\\d+)|)")
    (:REGEX "^(rusoto)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(rclone)/v(\\d+)\\.(\\d+)")
    (:REGEX "^(Roku)/DVP-(\\d+)\\.(\\d+)")
    (:REGEX "(Kurio)\\/(\\d+)\\.(\\d+)\\.(\\d+)" :FAMILY-REPLACEMENT
     "Kurio App")
    (:REGEX "^(Box(?: Sync)?)/(\\d+)\\.(\\d+)\\.(\\d+)")
    (:REGEX "^(ViaFree|Viafree)-(?:tvOS-)?[A-Z]{2}/(\\d+)\\.(\\d+)\\.(\\d+)"
     :FAMILY-REPLACEMENT "ViaFree")
    (:REGEX "(Transmit)/(\\d+)\\.(\\d+)\\.(\\d+)") (:REGEX "(Download Master)")
    (:REGEX "\\b(HTTrack) (\\d+)\\.(\\d+)(?:[\\.\\-](\\d+)|)")
    (:REGEX "SerenityOS" :FAMILY-REPLACEMENT "SerenityOS Browser")))