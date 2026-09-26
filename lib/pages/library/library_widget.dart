import '/components/resource_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'library_model.dart';
export 'library_model.dart';

/// <div id="container"><div class="tailwind"><div id="fig-code-root"
/// style="height: 100%;"><div dir="ltr"
/// data-fg-m4g1="17.13:17.13022:/src/app/components/LanguageContext.tsx:207:7:12710:65:e:div:c"
/// data-fgid-m4g1=":r2:"><div class="h-screen max-w-md mx-auto bg-background
/// relative"
/// data-fg-d3bl19="0.8:17.234:/src/app/App.tsx:73:7:2320:187:e:div:xte"
/// data-fgid-d3bl19=":r3:"><div class="flex flex-col h-full bg-background"
/// data-fg-ize0="1.27:1.6877:/src/app/components/Resources.tsx:51:5:2949:3714:e:div:ete:1"
/// data-fgid-ize0=":r99:" data-fg-callsite-d3bl9=""><div class="p-6 border-b
/// border-border"
/// data-fg-ize1="1.27:1.6877:/src/app/components/Resources.tsx:52:7:3008:456:e:div:ete"
/// data-fgid-ize1=":r9a:"><h1 class="text-2xl mb-4"
/// data-fg-ize2="1.27:1.6877:/src/app/components/Resources.tsx:53:9:3061:44:e:h1:t"
/// data-fgid-ize2=":r9b:">Resources</h1><div class="relative"
/// data-fg-ize4="1.27:1.6877:/src/app/components/Resources.tsx:54:9:3114:337:e:div:ete"
/// data-fgid-ize4=":r9c:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-search absolute left-3 top-1/2 -translate-y-1/2 w-5
/// h-5 text-muted-foreground"
/// data-fg-ize5="1.27:1.6877:node_modules/lucide-react:55:11:3151:93:e:Search::::::B9rK"
/// data-fgid-ize5=":r9d:"><circle cx="11" cy="11" r="8"></circle><path d="m21
/// 21-4.3-4.3"></path></svg><input type="text" placeholder="Search
/// resources..." class="w-full bg-input-background rounded-2xl pl-10 pr-4
/// py-3 outline-none"
/// data-fg-ize6="1.27:1.6877:/src/app/components/Resources.tsx:56:11:3255:181:e:input"
/// data-fgid-ize6=":r9e:"></div></div><div class="flex-1 overflow-y-auto
/// pb-24"
/// data-fg-ize7="1.27:1.6877:/src/app/components/Resources.tsx:64:7:3472:3180:e:div:e"
/// data-fgid-ize7=":r9f:"><div class="p-6"
/// data-fg-ize8="1.27:1.6877:/src/app/components/Resources.tsx:65:9:3527:3112:e:div:etx"
/// data-fgid-ize8=":r9g:"><div class="bg-gradient-to-br from-primary
/// to-purple-600 rounded-3xl p-6 text-white mb-6"
/// data-fg-ize9="1.27:1.6877:/src/app/components/Resources.tsx:66:11:3559:695:e:motion.div:etete"
/// data-fgid-ize9=":r9h:" style="opacity: 1; transform: none;"><div
/// class="flex items-start justify-between mb-3"
/// data-fg-ize10="1.27:1.6877:/src/app/components/Resources.tsx:71:13:3783:244:e:div:ete"
/// data-fgid-ize10=":r9i:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-book-open w-12 h-12"
/// data-fg-ize11="1.27:1.6877:node_modules/lucide-react:72:15:3853:34:e:BookOpen::::::BP4H"
/// data-fgid-ize11=":r9j:"><path d="M12 7v14"></path><path d="M3 18a1 1 0 0
/// 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1
/// 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"></path></svg><div
/// class="bg-white/20 px-3 py-1 rounded-full text-sm"
/// data-fg-ize12="1.27:1.6877:/src/app/components/Resources.tsx:73:15:3902:106:e:div:t"
/// data-fgid-ize12=":r9k:">25 Books</div></div><h2 class="text-xl mb-2"
/// data-fg-ize14="1.27:1.6877:/src/app/components/Resources.tsx:77:13:4040:51:e:h2:t"
/// data-fgid-ize14=":r9l:">Knowledge Library</h2><p class="text-sm
/// opacity-90"
/// data-fg-ize16="1.27:1.6877:/src/app/components/Resources.tsx:78:13:4104:126:e:p:t"
/// data-fgid-ize16=":r9m:">Curated collection of productivity and time
/// management books</p></div><div class="mb-6"
/// data-fg-ize19="1.27:1.6877:/src/app/components/Resources.tsx:84:13:4320:2290:e:motion.div:ete"
/// data-fgid-ize19=":r9n:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-3"
/// data-fg-ize20="1.27:1.6877:/src/app/components/Resources.tsx:91:15:4569:49:e:h2:x"
/// data-fgid-ize20=":r9o:">Productivity &amp; Time Management</h2><div
/// class="space-y-3"
/// data-fg-ize22="1.27:1.6877:/src/app/components/Resources.tsx:92:15:4633:1951:e:div:x"
/// data-fgid-ize22=":r9p:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":r9q:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":r9r:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":r9s:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":r9t:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":r9u:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":r9v:">Deep Work - Cal Newport</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":ra0:">Cal Newport</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":ra1:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":ra2:">296 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":ra3:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":ra4:">3.2 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":ra5:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":ra6:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":ra7:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":ra8:">4.8</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":ra9:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":raa:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rab:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rac:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rad:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rae:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":raf:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rag:">Getting Things Done - David Allen</h3><p
/// class="text-xs text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rah:">David Allen</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rai:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":raj:">352 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rak:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":ral:">2.8 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":ram:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":ran:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rao:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rap:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":raq:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rar:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":ras:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rat:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rau:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rav:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rb0:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rb1:">The Productivity Project</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rb2:">Chris Bailey</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rb3:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rb4:">304 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rb5:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rb6:">3.5 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rb7:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rb8:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rb9:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rba:">4.5</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rbb:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rbc:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rbd:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rbe:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rbf:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rbg:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rbh:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rbi:">Eat That Frog!
///
/// - Brian Tracy</h3><p class="text-xs text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rbj:">Brian Tracy</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rbk:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rbl:">144 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rbm:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rbn:">1.9 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rbo:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rbp:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rbq:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rbr:">4.7</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rbs:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rbt:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rbu:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rbv:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rc0:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rc1:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rc2:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rc3:">The One Thing</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rc4:">Gary Keller</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rc5:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rc6:">240 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rc7:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rc8:">2.4 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rc9:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rca:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rcb:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rcc:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rcd:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rce:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rcf:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rcg:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rch:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rci:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rcj:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rck:">Make Time - Jake Knapp</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rcl:">Jake Knapp</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rcm:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rcn:">304 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rco:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rcp:">2.6 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rcq:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rcr:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rcs:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rct:">4.4</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rcu:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rcv:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rd0:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rd1:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rd2:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rd3:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rd4:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rd5:">Essentialism - Greg McKeown</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rd6:">Greg McKeown</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rd7:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rd8:">272 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rd9:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rda:">2.2 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rdb:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rdc:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rdd:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rde:">4.7</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rdf:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rdg:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rdh:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rdi:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rdj:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rdk:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rdl:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rdm:">168 Hours - Laura Vanderkam</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rdn:">Laura Vanderkam</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rdo:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rdp:">272 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rdq:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rdr:">2.1 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rds:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rdt:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rdu:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rdv:">4.3</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":re0:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":re1:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15"
/// y2="3"></line></svg></button></div></div></div></div><div class="mb-6"
/// data-fg-ize19="1.27:1.6877:/src/app/components/Resources.tsx:84:13:4320:2290:e:motion.div:ete"
/// data-fgid-ize19=":re2:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-3"
/// data-fg-ize20="1.27:1.6877:/src/app/components/Resources.tsx:91:15:4569:49:e:h2:x"
/// data-fgid-ize20=":re3:">Habits &amp; Behavior Change</h2><div
/// class="space-y-3"
/// data-fg-ize22="1.27:1.6877:/src/app/components/Resources.tsx:92:15:4633:1951:e:div:x"
/// data-fgid-ize22=":re4:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":re5:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":re6:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":re7:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":re8:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":re9:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rea:">Atomic Habits - James Clear</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":reb:">James Clear</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rec:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":red:">320 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":ree:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":ref:">3.1 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":reg:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":reh:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rei:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rej:">4.9</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rek:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rel:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rem:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":ren:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":reo:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rep:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":req:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rer:">The Power of Habit</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":res:">Charles Duhigg</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":ret:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":reu:">416 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rev:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rf0:">3.4 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rf1:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rf2:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rf3:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rf4:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rf5:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rf6:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rf7:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rf8:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rf9:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rfa:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rfb:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rfc:">Tiny Habits - BJ Fogg</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rfd:">BJ Fogg</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rfe:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rff:">320 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rfg:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rfh:">2.7 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rfi:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rfj:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rfk:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rfl:">4.5</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rfm:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rfn:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rfo:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rfp:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rfq:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rfr:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rfs:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rft:">Better Than Before</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rfu:">Gretchen Rubin</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rfv:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rg0:">336 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rg1:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rg2:">2.9 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rg3:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rg4:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rg5:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rg6:">4.4</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rg7:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rg8:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rg9:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rga:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rgb:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rgc:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rgd:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rge:">Mini Habits - Stephen Guise</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rgf:">Stephen Guise</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rgg:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rgh:">128 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rgi:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rgj:">1.5 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rgk:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rgl:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rgm:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rgn:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rgo:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rgp:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15"
/// y2="3"></line></svg></button></div></div></div></div><div class="mb-6"
/// data-fg-ize19="1.27:1.6877:/src/app/components/Resources.tsx:84:13:4320:2290:e:motion.div:ete"
/// data-fgid-ize19=":rgq:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-3"
/// data-fg-ize20="1.27:1.6877:/src/app/components/Resources.tsx:91:15:4569:49:e:h2:x"
/// data-fgid-ize20=":rgr:">Focus &amp; Deep Thinking</h2><div
/// class="space-y-3"
/// data-fg-ize22="1.27:1.6877:/src/app/components/Resources.tsx:92:15:4633:1951:e:div:x"
/// data-fgid-ize22=":rgs:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rgt:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rgu:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rgv:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rh0:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rh1:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rh2:">Flow - Mihaly Csikszentmihalyi</h3><p
/// class="text-xs text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rh3:">Mihaly Csikszentmihalyi</p><div class="flex
/// items-center gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rh4:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rh5:">336 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rh6:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rh7:">3.8 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rh8:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rh9:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rha:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rhb:">4.7</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rhc:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rhd:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rhe:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rhf:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rhg:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rhh:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rhi:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rhj:">Hyperfocus - Chris Bailey</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rhk:">Chris Bailey</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rhl:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rhm:">288 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rhn:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rho:">2.5 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rhp:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rhq:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rhr:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rhs:">4.5</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rht:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rhu:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rhv:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":ri0:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":ri1:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":ri2:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":ri3:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":ri4:">The Distracted Mind</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":ri5:">Adam Gazzaley</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":ri6:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":ri7:">304 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":ri8:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":ri9:">2.8 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":ria:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rib:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":ric:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rid:">4.3</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rie:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rif:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rig:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rih:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rii:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rij:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rik:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":ril:">Indistractable - Nir Eyal</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rim:">Nir Eyal</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rin:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rio:">256 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rip:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":riq:">2.6 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rir:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":ris:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rit:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":riu:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":riv:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rj0:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rj1:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rj2:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rj3:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rj4:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rj5:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rj6:">Digital Minimalism</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rj7:">Cal Newport</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rj8:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rj9:">304 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rja:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rjb:">2.3 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rjc:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rjd:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rje:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rjf:">4.5</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rjg:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rjh:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15"
/// y2="3"></line></svg></button></div></div></div></div><div class="mb-6"
/// data-fg-ize19="1.27:1.6877:/src/app/components/Resources.tsx:84:13:4320:2290:e:motion.div:ete"
/// data-fgid-ize19=":rji:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-3"
/// data-fg-ize20="1.27:1.6877:/src/app/components/Resources.tsx:91:15:4569:49:e:h2:x"
/// data-fgid-ize20=":rjj:">Energy &amp; Performance</h2><div
/// class="space-y-3"
/// data-fg-ize22="1.27:1.6877:/src/app/components/Resources.tsx:92:15:4633:1951:e:div:x"
/// data-fgid-ize22=":rjk:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rjl:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rjm:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rjn:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rjo:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rjp:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rjq:">The Power of Full Engagement</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rjr:">Jim Loehr</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rjs:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rjt:">272 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rju:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rjv:">2.7 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rk0:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rk1:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rk2:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rk3:">4.6</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rk4:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rk5:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rk6:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rk7:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rk8:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rk9:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rka:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rkb:">When - Daniel Pink</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rkc:">Daniel Pink</p><div class="flex items-center gap-3
/// text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rkd:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rke:">272 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rkf:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rkg:">2.4 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rkh:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rki:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rkj:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rkk:">4.4</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rkl:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rkm:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rkn:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rko:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rkp:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rkq:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rkr:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rks:">Peak Performance</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rkt:">Brad Stulberg</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rku:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rkv:">256 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rl0:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rl1:">2.5 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rl2:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rl3:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rl4:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rl5:">4.5</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rl6:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rl7:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15" y2="3"></line></svg></button></div></div><div
/// class="bg-card border border-border rounded-2xl p-4"
/// data-fg-ize24="1.27:1.6877:/src/app/components/Resources.tsx:94:19:4745:1798:e:motion.div:e"
/// data-fgid-ize24=":rl8:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-ize25="1.27:1.6877:/src/app/components/Resources.tsx:101:21:5079:1432:e:div:etete"
/// data-fgid-ize25=":rl9:"><div class="w-12 h-16 bg-gradient-to-br
/// from-primary to-purple-600 rounded-lg flex items-center justify-center
/// flex-shrink-0"
/// data-fg-ize26="1.27:1.6877:/src/app/components/Resources.tsx:102:23:5147:227:e:div:e"
/// data-fgid-ize26=":rla:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-file-text w-6 h-6 text-white"
/// data-fg-ize27="1.27:1.6877:node_modules/lucide-react:103:25:5302:43:e:FileText::::::B1i5"
/// data-fgid-ize27=":rlb:"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2
/// 2h12a2 2 0 0 0 2-2V7Z"></path><path d="M14 2v4a2 2 0 0 0 2
/// 2h4"></path><path d="M10 9H8"></path><path d="M16 13H8"></path><path
/// d="M16 17H8"></path></svg></div><div class="flex-1 min-w-0"
/// data-fg-ize28="1.27:1.6877:/src/app/components/Resources.tsx:105:23:5397:820:e:div:etete"
/// data-fgid-ize28=":rlc:"><h3 class="text-sm mb-1 line-clamp-1"
/// data-fg-ize29="1.27:1.6877:/src/app/components/Resources.tsx:106:25:5454:63:e:h3:x"
/// data-fgid-ize29=":rld:">The Upside of Stress</h3><p class="text-xs
/// text-muted-foreground mb-2"
/// data-fg-ize31="1.27:1.6877:/src/app/components/Resources.tsx:107:25:5542:71:e:p:x"
/// data-fgid-ize31=":rle:">Kelly McGonigal</p><div class="flex items-center
/// gap-3 text-xs text-muted-foreground"
/// data-fg-ize33="1.27:1.6877:/src/app/components/Resources.tsx:108:25:5638:550:e:div:etetetete"
/// data-fgid-ize33=":rlf:"><span
/// data-fg-ize34="1.27:1.6877:/src/app/components/Resources.tsx:109:27:5736:35:e:span:xt"
/// data-fgid-ize34=":rlg:">304 pages</span><span
/// data-fg-ize37="1.27:1.6877:/src/app/components/Resources.tsx:110:27:5798:14:e:span:t"
/// data-fgid-ize37=":rlh:">•</span><span
/// data-fg-ize39="1.27:1.6877:/src/app/components/Resources.tsx:111:27:5839:28:e:span:x"
/// data-fgid-ize39=":rli:">2.6 MB</span><span
/// data-fg-ize41="1.27:1.6877:/src/app/components/Resources.tsx:112:27:5894:14:e:span:t"
/// data-fgid-ize41=":rlj:">•</span><div class="flex items-center gap-1"
/// data-fg-ize43="1.27:1.6877:/src/app/components/Resources.tsx:113:27:5935:222:e:div:ete"
/// data-fgid-ize43=":rlk:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-star w-3 h-3 fill-yellow-500 text-yellow-500"
/// data-fg-ize44="1.27:1.6877:node_modules/lucide-react:114:29:6005:60:e:Star::::::hX0"
/// data-fgid-ize44=":rll:"><path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31
/// 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736
/// 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0
/// 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0
/// 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1
/// .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z"></path></svg><span
/// data-fg-ize45="1.27:1.6877:/src/app/components/Resources.tsx:115:29:6094:30:e:span:x"
/// data-fgid-ize45=":rlm:">4.4</span></div></div></div><button class="w-10
/// h-10 bg-primary/10 hover:bg-primary/20 rounded-full flex items-center
/// justify-center flex-shrink-0 transition-colors"
/// data-fg-ize47="1.27:1.6877:/src/app/components/Resources.tsx:119:23:6240:244:e:button:e"
/// data-fgid-ize47=":rln:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-download w-5 h-5 text-primary"
/// data-fg-ize48="1.27:1.6877:node_modules/lucide-react:120:25:6407:45:e:Download::::::yh6"
/// data-fgid-ize48=":rlo:"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line
/// x1="12" x2="12" y1="15"
/// y2="3"></line></svg></button></div></div></div></div></div></div></div><div
/// class="fixed bottom-0 left-0 right-0 bg-card border-t border-border"
/// data-fg-h9b0="1.25:17.134:/src/app/components/Navigation.tsx:22:5:733:1417:e:div:e:1"
/// data-fgid-h9b0=":r4t:" data-fg-callsite-d3bl21=""><div class="max-w-md
/// mx-auto px-2 py-2"
/// data-fg-h9b1="1.25:17.134:/src/app/components/Navigation.tsx:23:7:818:1321:e:div:e"
/// data-fgid-h9b1=":r4u:"><div class="flex items-center justify-around"
/// data-fg-h9b2="1.25:17.134:/src/app/components/Navigation.tsx:24:9:871:1255:e:div:x"
/// data-fgid-h9b2=":r4v:"><button class="relative flex flex-col items-center
/// gap-1 px-4 py-2 rounded-2xl transition-colors"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r50:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-house w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r52:"><path d="M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1
/// 1v8"></path><path d="M3 10a2 2 0 0 1 .709-1.528l7-5.999a2 2 0 0 1 2.582
/// 0l7 5.999A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2z"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r53:">Home</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r54:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-square-check-big w-5 h-5 relative z-10
/// transition-colors text-muted-foreground"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r55:"><path d="M21 10.5V19a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2V5a2 2 0 0 1 2-2h12.5"></path><path d="m9 11 3 3L22
/// 4"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r56:">Tasks</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r57:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-chart-column w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r58:"><path d="M3 3v16a2 2 0 0 0 2 2h16"></path><path
/// d="M18 17V9"></path><path d="M13 17V5"></path><path d="M8
/// 17v-3"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r59:">Analytics</span></button><button class="relative
/// flex flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r5a:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-book-open w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r5b:"><path d="M12 7v14"></path><path d="M3 18a1 1 0 0
/// 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1
/// 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"></path></svg><span
/// class="text-xs relative z-10 transition-colors text-muted-foreground"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r5c:">Journal</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r5d:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-settings w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r5e:"><path d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0
/// 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0
/// 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0
/// 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1
/// 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2
/// 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0
/// 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0
/// 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2
/// 0 0 1-1-1.73V4a2 2 0 0 0-2-2z"></path><circle cx="12" cy="12"
/// r="3"></circle></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r5f:">Settings</span></button></div></div></div></div></div></div></div></div>
class LibraryWidget extends StatefulWidget {
  const LibraryWidget({super.key});

  static String routeName = 'Library';
  static String routePath = '/library';

  @override
  State<LibraryWidget> createState() => _LibraryWidgetState();
}

class _LibraryWidgetState extends State<LibraryWidget> {
  late LibraryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LibraryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Resources',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primary,
                                      Color(0xFF9333EA)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.book_rounded,
                                              color: Colors.white,
                                              size: 40.0,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        9999.0),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                child: Container(
                                                  child: Text(
                                                    '21 Books',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 123.0, 0.0),
                                              child: Text(
                                                'Knowledge Library',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              'Curated collection of productivity and time management books',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xE6FFFFFF),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Productivity & Time Management',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.resourceCardModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Deep Work',
                                          author: 'Cal Newport',
                                          pages: '296',
                                          size: '3.2 MB',
                                          rating: '4.8',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Getting Things Done',
                                          author: 'David Allen',
                                          pages: '352',
                                          size: '2.8 MB',
                                          rating: '4.6',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'The Productivity Project',
                                          author: 'Chris Bailey',
                                          pages: '304',
                                          size: '3.5 MB',
                                          rating: '4.5',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Eat That Frog!',
                                          author: 'Brian Tracy',
                                          pages: '144',
                                          size: '1.9 MB',
                                          rating: '4.7',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'The One Thing',
                                          author: 'Gary Keller',
                                          pages: '240',
                                          size: '2.4 MB',
                                          rating: '4.6',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Make Time',
                                          author: 'Jake Knapp',
                                          pages: '304',
                                          size: '2.6 MB',
                                          rating: '4.4',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Essentialism',
                                          author: 'Greg McKeown',
                                          pages: '272',
                                          size: '2.2 MB',
                                          rating: '4.7',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: '168 Hours',
                                          author: 'Laura Vanderkam',
                                          pages: '272',
                                          size: '2.1 MB',
                                          rating: '4.3',
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Habits & Behavior Change',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.resourceCardModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Atomic Habits',
                                          author: 'James Clear',
                                          pages: '320',
                                          size: '3.1 MB',
                                          rating: '4.9',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'The Power of Habit',
                                          author: 'Charles Duhigg',
                                          pages: '416',
                                          size: '3.4 MB',
                                          rating: '4.6',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel11,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Tiny Habits',
                                          author: 'BJ Fogg',
                                          pages: '320',
                                          size: '2.7 MB',
                                          rating: '4.5',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel12,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Better Than Before',
                                          author: 'Gretchen Rubin',
                                          pages: '336',
                                          size: '2.9 MB',
                                          rating: '4.4',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel13,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Mini Habits',
                                          author: 'Stephen Guise',
                                          pages: '128',
                                          size: '1.5 MB',
                                          rating: '4.6',
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Focus & Deep Thinking',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.resourceCardModel14,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Flow',
                                          author: 'Mihaly Csikszentmihalyi',
                                          pages: '336',
                                          size: '3.8 MB',
                                          rating: '4.7',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel15,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Hyperfocus',
                                          author: 'Chris Bailey',
                                          pages: '288',
                                          size: '2.5 MB',
                                          rating: '4.5',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel16,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'The Distracted Mind',
                                          author: 'Adam Gazzaley',
                                          pages: '304',
                                          size: '2.8 MB',
                                          rating: '4.3',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel17,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Indistractable',
                                          author: 'Nir Eyal',
                                          pages: '256',
                                          size: '2.6 MB',
                                          rating: '4.6',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.resourceCardModel18,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ResourceCardWidget(
                                          title: 'Digital Minimalism',
                                          author: 'Cal Newport',
                                          pages: '304',
                                          size: '2.3 MB',
                                          rating: '4.5',
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                child: Container(
                  width: 0.0,
                  height: 0.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
