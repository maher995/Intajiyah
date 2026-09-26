import '/components/habit_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'habits_model.dart';
export 'habits_model.dart';

/// <div dir="ltr"
/// data-fg-m4g1="17.13:17.13022:/src/app/components/LanguageContext.tsx:207:7:12710:65:e:div:c"
/// data-fgid-m4g1=":r2:"><div class="h-screen max-w-md mx-auto bg-background
/// relative"
/// data-fg-d3bl19="0.8:17.234:/src/app/App.tsx:73:7:2320:187:e:div:xte"
/// data-fgid-d3bl19=":r3:"><div class="flex flex-col h-full bg-background"
/// data-fg-bkia0="1.22:17.900:/src/app/components/Habits.tsx:58:5:1534:3826:e:div:etete:1"
/// data-fgid-bkia0=":r5g:" data-fg-callsite-d3bl5=""><div class="p-6 border-b
/// border-border"
/// data-fg-bkia1="1.22:17.900:/src/app/components/Habits.tsx:59:7:1593:200:e:div:ete"
/// data-fgid-bkia1=":r5h:"><h1 class="text-2xl mb-1"
/// data-fg-bkia2="1.22:17.900:/src/app/components/Habits.tsx:60:9:1646:54:e:h1:x"
/// data-fgid-bkia2=":r5i:">Habits</h1><p class="text-sm
/// text-muted-foreground"
/// data-fg-bkia4="1.22:17.900:/src/app/components/Habits.tsx:61:9:1709:71:e:p:x"
/// data-fgid-bkia4=":r5j:">Build consistency, one day at a time</p></div><div
/// class="flex-1 overflow-y-auto pb-24"
/// data-fg-bkia6="1.22:17.900:/src/app/components/Habits.tsx:64:7:1801:3292:e:div:e"
/// data-fgid-bkia6=":r5k:"><div class="p-6"
/// data-fg-bkia7="1.22:17.900:/src/app/components/Habits.tsx:65:9:1856:3224:e:div:etete"
/// data-fgid-bkia7=":r5l:"><div class="bg-gradient-to-br from-orange-500
/// to-red-500 rounded-3xl p-6 text-white mb-6"
/// data-fg-bkia8="1.22:17.900:/src/app/components/Habits.tsx:66:11:1888:445:e:div:etete"
/// data-fgid-bkia8=":r5m:"><div class="flex items-center gap-2 mb-2"
/// data-fg-bkia9="1.22:17.900:/src/app/components/Habits.tsx:67:13:1995:193:e:div:ete"
/// data-fgid-bkia9=":r5n:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-flame w-6 h-6"
/// data-fg-bkia10="1.22:17.900:node_modules/lucide-react:68:15:2056:29:e:Flame::::::DE75"
/// data-fgid-bkia10=":r5o:"><path d="M8.5 14.5A2.5 2.5 0 0 0 11
/// 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3
/// 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5
/// 2.5z"></path></svg><span class="text-sm opacity-90"
/// data-fg-bkia11="1.22:17.900:/src/app/components/Habits.tsx:69:15:2100:69:e:span:x"
/// data-fgid-bkia11=":r5p:">Total Streak</span></div><div class="text-5xl
/// mb-1"
/// data-fg-bkia13="1.22:17.900:/src/app/components/Habits.tsx:71:13:2201:39:e:div:t"
/// data-fgid-bkia13=":r5q:">27</div><p class="text-sm opacity-90"
/// data-fg-bkia15="1.22:17.900:/src/app/components/Habits.tsx:72:13:2253:63:e:p:x"
/// data-fgid-bkia15=":r5r:">days of consistency</p></div><div class="flex
/// items-center justify-between mb-4"
/// data-fg-bkia17="1.22:17.900:/src/app/components/Habits.tsx:75:11:2345:297:e:div:ete"
/// data-fgid-bkia17=":r5s:"><h2 class="text-lg"
/// data-fg-bkia18="1.22:17.900:/src/app/components/Habits.tsx:76:13:2414:54:e:h2:x"
/// data-fgid-bkia18=":r5t:">Today's Habits</h2><span class="text-sm
/// text-muted-foreground"
/// data-fg-bkia20="1.22:17.900:/src/app/components/Habits.tsx:77:13:2481:144:e:span:xtx"
/// data-fgid-bkia20=":r5u:">2/4</span></div><div class="space-y-3"
/// data-fg-bkia24="1.22:17.900:/src/app/components/Habits.tsx:82:11:2654:2411:e:div:x"
/// data-fgid-bkia24=":r5v:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-bkia26="1.22:17.900:/src/app/components/Habits.tsx:84:15:2736:2296:e:motion.div:ete"
/// data-fgid-bkia26=":r60:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-bkia27="1.22:17.900:/src/app/components/Habits.tsx:91:17:3027:1593:e:div:ete"
/// data-fgid-bkia27=":r61:"><button class="w-8 h-8 rounded-full border-2 flex
/// items-center justify-center transition-all bg-primary border-primary"
/// data-fg-bkia28="1.22:17.900:/src/app/components/Habits.tsx:92:19:3091:486:e:button:x"
/// data-fgid-bkia28=":r62:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-check w-5 h-5 text-white"
/// data-fg-bkia30="1.22:17.900:node_modules/lucide-react:100:46:3508:40:e:Check::::::Dijm"
/// data-fgid-bkia30=":r63:"><path d="M20 6 9
/// 17l-5-5"></path></svg></button><div class="flex-1"
/// data-fg-bkia31="1.22:17.900:/src/app/components/Habits.tsx:102:19:3596:1001:e:div:ete"
/// data-fgid-bkia31=":r64:"><div class="flex items-center gap-2 mb-1"
/// data-fg-bkia32="1.22:17.900:/src/app/components/Habits.tsx:103:21:3641:310:e:div:ete"
/// data-fgid-bkia32=":r65:"><span class="text-xl"
/// data-fg-bkia33="1.22:17.900:/src/app/components/Habits.tsx:104:23:3710:45:e:span:x"
/// data-fgid-bkia33=":r66:">💪</span><h3 class="line-through
/// text-muted-foreground"
/// data-fg-bkia35="1.22:17.900:/src/app/components/Habits.tsx:105:23:3778:146:e:h3:x"
/// data-fgid-bkia35=":r67:">Morning Exercise</h3></div><div class="flex
/// flex-col gap-1"
/// data-fg-bkia37="1.22:17.900:/src/app/components/Habits.tsx:109:21:3972:600:e:div:ete"
/// data-fgid-bkia37=":r68:"><div class="flex items-center gap-1 text-sm
/// text-muted-foreground"
/// data-fg-bkia38="1.22:17.900:/src/app/components/Habits.tsx:110:23:4032:246:e:div:ete"
/// data-fgid-bkia38=":r69:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-flame w-4 h-4
/// text-orange-500"
/// data-fg-bkia39="1.22:17.900:node_modules/lucide-react:111:25:4128:45:e:Flame::::::DE75"
/// data-fgid-bkia39=":r6a:"><path d="M8.5 14.5A2.5 2.5 0 0 0 11
/// 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3
/// 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5
/// 2.5z"></path></svg><span
/// data-fg-bkia40="1.22:17.900:/src/app/components/Habits.tsx:112:25:4198:51:e:span:xtx"
/// data-fgid-bkia40=":r6b:">7 day streak</span></div><div class="flex
/// items-center gap-1 text-xs text-muted-foreground"
/// data-fg-bkia43="1.22:17.900:/src/app/components/Habits.tsx:114:23:4301:244:e:div:ete"
/// data-fgid-bkia43=":r6c:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-calendar w-3 h-3"
/// data-fg-bkia44="1.22:17.900:node_modules/lucide-react:115:25:4397:32:e:Calendar::::::Bbz4"
/// data-fgid-bkia44=":r6d:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span
/// data-fg-bkia45="1.22:17.900:/src/app/components/Habits.tsx:116:25:4454:62:e:span:xtx"
/// data-fgid-bkia45=":r6e:">daily • Mon, Tue, Wed, Thu, Fri, Sat,
/// Sun</span></div></div></div></div><div class="flex gap-1"
/// data-fg-bkia49="1.22:17.900:/src/app/components/Habits.tsx:122:17:4638:366:e:div:x"
/// data-fgid-bkia49=":r6f:"><div class="flex-1 h-2 rounded-full bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6g:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6h:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6i:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6j:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6k:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6l:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r6m:"></div></div></div><div class="bg-card border
/// border-border rounded-2xl p-4"
/// data-fg-bkia26="1.22:17.900:/src/app/components/Habits.tsx:84:15:2736:2296:e:motion.div:ete"
/// data-fgid-bkia26=":r6n:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-bkia27="1.22:17.900:/src/app/components/Habits.tsx:91:17:3027:1593:e:div:ete"
/// data-fgid-bkia27=":r6o:"><button class="w-8 h-8 rounded-full border-2 flex
/// items-center justify-center transition-all bg-primary border-primary"
/// data-fg-bkia28="1.22:17.900:/src/app/components/Habits.tsx:92:19:3091:486:e:button:x"
/// data-fgid-bkia28=":r6p:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-check w-5 h-5 text-white"
/// data-fg-bkia30="1.22:17.900:node_modules/lucide-react:100:46:3508:40:e:Check::::::Dijm"
/// data-fgid-bkia30=":r6q:"><path d="M20 6 9
/// 17l-5-5"></path></svg></button><div class="flex-1"
/// data-fg-bkia31="1.22:17.900:/src/app/components/Habits.tsx:102:19:3596:1001:e:div:ete"
/// data-fgid-bkia31=":r6r:"><div class="flex items-center gap-2 mb-1"
/// data-fg-bkia32="1.22:17.900:/src/app/components/Habits.tsx:103:21:3641:310:e:div:ete"
/// data-fgid-bkia32=":r6s:"><span class="text-xl"
/// data-fg-bkia33="1.22:17.900:/src/app/components/Habits.tsx:104:23:3710:45:e:span:x"
/// data-fgid-bkia33=":r6t:">🎯</span><h3 class="line-through
/// text-muted-foreground"
/// data-fg-bkia35="1.22:17.900:/src/app/components/Habits.tsx:105:23:3778:146:e:h3:x"
/// data-fgid-bkia35=":r6u:">Deep Work</h3></div><div class="flex flex-col
/// gap-1"
/// data-fg-bkia37="1.22:17.900:/src/app/components/Habits.tsx:109:21:3972:600:e:div:ete"
/// data-fgid-bkia37=":r6v:"><div class="flex items-center gap-1 text-sm
/// text-muted-foreground"
/// data-fg-bkia38="1.22:17.900:/src/app/components/Habits.tsx:110:23:4032:246:e:div:ete"
/// data-fgid-bkia38=":r70:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-flame w-4 h-4
/// text-orange-500"
/// data-fg-bkia39="1.22:17.900:node_modules/lucide-react:111:25:4128:45:e:Flame::::::DE75"
/// data-fgid-bkia39=":r71:"><path d="M8.5 14.5A2.5 2.5 0 0 0 11
/// 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3
/// 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5
/// 2.5z"></path></svg><span
/// data-fg-bkia40="1.22:17.900:/src/app/components/Habits.tsx:112:25:4198:51:e:span:xtx"
/// data-fgid-bkia40=":r72:">12 day streak</span></div><div class="flex
/// items-center gap-1 text-xs text-muted-foreground"
/// data-fg-bkia43="1.22:17.900:/src/app/components/Habits.tsx:114:23:4301:244:e:div:ete"
/// data-fgid-bkia43=":r73:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-calendar w-3 h-3"
/// data-fg-bkia44="1.22:17.900:node_modules/lucide-react:115:25:4397:32:e:Calendar::::::Bbz4"
/// data-fgid-bkia44=":r74:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span
/// data-fg-bkia45="1.22:17.900:/src/app/components/Habits.tsx:116:25:4454:62:e:span:xtx"
/// data-fgid-bkia45=":r75:">daily • Mon, Tue, Wed, Thu,
/// Fri</span></div></div></div></div><div class="flex gap-1"
/// data-fg-bkia49="1.22:17.900:/src/app/components/Habits.tsx:122:17:4638:366:e:div:x"
/// data-fgid-bkia49=":r76:"><div class="flex-1 h-2 rounded-full bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r77:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r78:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r79:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7a:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7b:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7c:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7d:"></div></div></div><div class="bg-card border
/// border-border rounded-2xl p-4"
/// data-fg-bkia26="1.22:17.900:/src/app/components/Habits.tsx:84:15:2736:2296:e:motion.div:ete"
/// data-fgid-bkia26=":r7e:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-bkia27="1.22:17.900:/src/app/components/Habits.tsx:91:17:3027:1593:e:div:ete"
/// data-fgid-bkia27=":r7f:"><button class="w-8 h-8 rounded-full border-2 flex
/// items-center justify-center transition-all border-muted-foreground"
/// data-fg-bkia28="1.22:17.900:/src/app/components/Habits.tsx:92:19:3091:486:e:button:x"
/// data-fgid-bkia28=":r7g:"></button><div class="flex-1"
/// data-fg-bkia31="1.22:17.900:/src/app/components/Habits.tsx:102:19:3596:1001:e:div:ete"
/// data-fgid-bkia31=":r7h:"><div class="flex items-center gap-2 mb-1"
/// data-fg-bkia32="1.22:17.900:/src/app/components/Habits.tsx:103:21:3641:310:e:div:ete"
/// data-fgid-bkia32=":r7i:"><span class="text-xl"
/// data-fg-bkia33="1.22:17.900:/src/app/components/Habits.tsx:104:23:3710:45:e:span:x"
/// data-fgid-bkia33=":r7j:">📚</span><h3 class=""
/// data-fg-bkia35="1.22:17.900:/src/app/components/Habits.tsx:105:23:3778:146:e:h3:x"
/// data-fgid-bkia35=":r7k:">Read for 30min</h3></div><div class="flex
/// flex-col gap-1"
/// data-fg-bkia37="1.22:17.900:/src/app/components/Habits.tsx:109:21:3972:600:e:div:ete"
/// data-fgid-bkia37=":r7l:"><div class="flex items-center gap-1 text-sm
/// text-muted-foreground"
/// data-fg-bkia38="1.22:17.900:/src/app/components/Habits.tsx:110:23:4032:246:e:div:ete"
/// data-fgid-bkia38=":r7m:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-flame w-4 h-4
/// text-orange-500"
/// data-fg-bkia39="1.22:17.900:node_modules/lucide-react:111:25:4128:45:e:Flame::::::DE75"
/// data-fgid-bkia39=":r7n:"><path d="M8.5 14.5A2.5 2.5 0 0 0 11
/// 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3
/// 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5
/// 2.5z"></path></svg><span
/// data-fg-bkia40="1.22:17.900:/src/app/components/Habits.tsx:112:25:4198:51:e:span:xtx"
/// data-fgid-bkia40=":r7o:">5 day streak</span></div><div class="flex
/// items-center gap-1 text-xs text-muted-foreground"
/// data-fg-bkia43="1.22:17.900:/src/app/components/Habits.tsx:114:23:4301:244:e:div:ete"
/// data-fgid-bkia43=":r7p:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-calendar w-3 h-3"
/// data-fg-bkia44="1.22:17.900:node_modules/lucide-react:115:25:4397:32:e:Calendar::::::Bbz4"
/// data-fgid-bkia44=":r7q:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span
/// data-fg-bkia45="1.22:17.900:/src/app/components/Habits.tsx:116:25:4454:62:e:span:xtx"
/// data-fgid-bkia45=":r7r:">5x/week • Mon, Tue, Wed, Fri,
/// Sat</span></div></div></div></div><div class="flex gap-1"
/// data-fg-bkia49="1.22:17.900:/src/app/components/Habits.tsx:122:17:4638:366:e:div:x"
/// data-fgid-bkia49=":r7s:"><div class="flex-1 h-2 rounded-full bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7t:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7u:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r7v:"></div><div class="flex-1 h-2 rounded-full
/// bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r80:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r81:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r82:"></div><div class="flex-1 h-2 rounded-full
/// bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r83:"></div></div></div><div class="bg-card border
/// border-border rounded-2xl p-4"
/// data-fg-bkia26="1.22:17.900:/src/app/components/Habits.tsx:84:15:2736:2296:e:motion.div:ete"
/// data-fgid-bkia26=":r84:" style="opacity: 1; transform: none;"><div
/// class="flex items-start gap-3 mb-3"
/// data-fg-bkia27="1.22:17.900:/src/app/components/Habits.tsx:91:17:3027:1593:e:div:ete"
/// data-fgid-bkia27=":r85:"><button class="w-8 h-8 rounded-full border-2 flex
/// items-center justify-center transition-all border-muted-foreground"
/// data-fg-bkia28="1.22:17.900:/src/app/components/Habits.tsx:92:19:3091:486:e:button:x"
/// data-fgid-bkia28=":r86:"></button><div class="flex-1"
/// data-fg-bkia31="1.22:17.900:/src/app/components/Habits.tsx:102:19:3596:1001:e:div:ete"
/// data-fgid-bkia31=":r87:"><div class="flex items-center gap-2 mb-1"
/// data-fg-bkia32="1.22:17.900:/src/app/components/Habits.tsx:103:21:3641:310:e:div:ete"
/// data-fgid-bkia32=":r88:"><span class="text-xl"
/// data-fg-bkia33="1.22:17.900:/src/app/components/Habits.tsx:104:23:3710:45:e:span:x"
/// data-fgid-bkia33=":r89:">🧘</span><h3 class=""
/// data-fg-bkia35="1.22:17.900:/src/app/components/Habits.tsx:105:23:3778:146:e:h3:x"
/// data-fgid-bkia35=":r8a:">Meditation</h3></div><div class="flex flex-col
/// gap-1"
/// data-fg-bkia37="1.22:17.900:/src/app/components/Habits.tsx:109:21:3972:600:e:div:ete"
/// data-fgid-bkia37=":r8b:"><div class="flex items-center gap-1 text-sm
/// text-muted-foreground"
/// data-fg-bkia38="1.22:17.900:/src/app/components/Habits.tsx:110:23:4032:246:e:div:ete"
/// data-fgid-bkia38=":r8c:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-flame w-4 h-4
/// text-orange-500"
/// data-fg-bkia39="1.22:17.900:node_modules/lucide-react:111:25:4128:45:e:Flame::::::DE75"
/// data-fgid-bkia39=":r8d:"><path d="M8.5 14.5A2.5 2.5 0 0 0 11
/// 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3
/// 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5
/// 2.5z"></path></svg><span
/// data-fg-bkia40="1.22:17.900:/src/app/components/Habits.tsx:112:25:4198:51:e:span:xtx"
/// data-fgid-bkia40=":r8e:">3 day streak</span></div><div class="flex
/// items-center gap-1 text-xs text-muted-foreground"
/// data-fg-bkia43="1.22:17.900:/src/app/components/Habits.tsx:114:23:4301:244:e:div:ete"
/// data-fgid-bkia43=":r8f:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-calendar w-3 h-3"
/// data-fg-bkia44="1.22:17.900:node_modules/lucide-react:115:25:4397:32:e:Calendar::::::Bbz4"
/// data-fgid-bkia44=":r8g:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span
/// data-fg-bkia45="1.22:17.900:/src/app/components/Habits.tsx:116:25:4454:62:e:span:xtx"
/// data-fgid-bkia45=":r8h:">3x/week • Tue, Wed,
/// Thu</span></div></div></div></div><div class="flex gap-1"
/// data-fg-bkia49="1.22:17.900:/src/app/components/Habits.tsx:122:17:4638:366:e:div:x"
/// data-fgid-bkia49=":r8i:"><div class="flex-1 h-2 rounded-full bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8j:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8k:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8l:"></div><div class="flex-1 h-2 rounded-full
/// bg-primary"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8m:"></div><div class="flex-1 h-2 rounded-full
/// bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8n:"></div><div class="flex-1 h-2 rounded-full
/// bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8o:"></div><div class="flex-1 h-2 rounded-full
/// bg-muted"
/// data-fg-bkia51="1.22:17.900:/src/app/components/Habits.tsx:124:21:4751:208:e:div"
/// data-fgid-bkia51=":r8p:"></div></div></div></div></div></div><button
/// class="fixed bottom-24 right-6 w-14 h-14 bg-primary rounded-full flex
/// items-center justify-center shadow-lg"
/// data-fg-bkia52="1.22:17.900:/src/app/components/Habits.tsx:138:7:5101:248:e:motion.button:e"
/// data-fgid-bkia52=":r8q:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-plus
/// w-6 h-6 text-white"
/// data-fg-bkia53="1.22:17.900:node_modules/lucide-react:142:9:5287:39:e:Plus::::::ISW"
/// data-fgid-bkia53=":r8r:"><path d="M5 12h14"></path><path d="M12
/// 5v14"></path></svg></button></div><div class="fixed bottom-0 left-0
/// right-0 bg-card border-t border-border"
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
/// data-fgid-h9b8=":r5f:">Settings</span></button></div></div></div></div></div>
class HabitsWidget extends StatefulWidget {
  const HabitsWidget({super.key});

  static String routeName = 'Habits';
  static String routePath = '/habits';

  @override
  State<HabitsWidget> createState() => _HabitsWidgetState();
}

class _HabitsWidgetState extends State<HabitsWidget> {
  late HabitsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HabitsModel());
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
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            Column(
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 120.0, 0.0),
                                      child: Text(
                                        'Habits',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      'Build consistency, one day at a time\n\n',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFF97316),
                                          Color(0xFFEF4444)
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
                                              (FFCrossAxisAlignment.start)
                                                  .flutterValue,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .local_fire_department_outlined,
                                                  color: Colors.white,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Total Streak',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xE6FFFFFF),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                            Text(
                                              '27',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 48.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                            Text(
                                              'days of consistency',
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
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Today\'s Habits',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Text(
                                        '2/4',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.habitCardModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HabitCardWidget(
                                          completed: true,
                                          emoji: '💪',
                                          title: 'Morning Exercise',
                                          streak: '7 day streak',
                                          schedule:
                                              'daily • Mon, Tue, Wed, Thu, Fri, Sat, Sun',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.habitCardModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HabitCardWidget(
                                          completed: true,
                                          emoji: '🎯',
                                          title: 'Deep Work',
                                          streak: '12 day streak',
                                          schedule:
                                              'daily • Mon, Tue, Wed, Thu, Fri',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.habitCardModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HabitCardWidget(
                                          completed: false,
                                          emoji: '📚',
                                          title: 'Read for 30min',
                                          streak: '5 day streak',
                                          schedule:
                                              '5x/week • Mon, Tue, Wed, Fri, Sat',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.habitCardModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: HabitCardWidget(
                                          completed: false,
                                          emoji: '🧘',
                                          title: 'Meditation',
                                          streak: '3 day streak',
                                          schedule: '3x/week • Tue, Wed, Thu',
                                        ),
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
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 4.0, 24.0, 4.0),
                        child: Container(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 0.0,
                              height: 0.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 16.0),
                child: Container(
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                          spreadRadius: 0.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(9999.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
