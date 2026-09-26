import '/components/history_item_widget.dart';
import '/components/mood_button_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'journal_model.dart';
export 'journal_model.dart';

/// <div dir="ltr"
/// data-fg-m4g1="17.13:17.13022:/src/app/components/LanguageContext.tsx:207:7:12710:65:e:div:c"
/// data-fgid-m4g1=":r2:"><div class="h-screen max-w-md mx-auto bg-background
/// relative"
/// data-fg-d3bl19="0.8:17.234:/src/app/App.tsx:73:7:2320:187:e:div:xte"
/// data-fgid-d3bl19=":r3:"><div class="flex flex-col h-full bg-background"
/// data-fg-5fs0="1.23:17.9088:/src/app/components/Journal.tsx:42:5:1257:9487:e:div:ete:1"
/// data-fgid-5fs0=":r5g:" data-fg-callsite-d3bl7=""><div class="p-6 border-b
/// border-border"
/// data-fg-5fs1="1.23:17.9088:/src/app/components/Journal.tsx:43:7:1316:382:e:div:e"
/// data-fgid-5fs1=":r5h:"><div class="flex items-center justify-between"
/// data-fg-5fs2="1.23:17.9088:/src/app/components/Journal.tsx:44:9:1369:316:e:div:ete"
/// data-fgid-5fs2=":r5i:"><h1 class="text-2xl"
/// data-fg-5fs3="1.23:17.9088:/src/app/components/Journal.tsx:45:11:1431:50:e:h1:x"
/// data-fgid-5fs3=":r5j:">Journal &amp; Energy</h1><div class="flex
/// items-center gap-2 text-sm text-muted-foreground"
/// data-fg-5fs5="1.23:17.9088:/src/app/components/Journal.tsx:46:11:1492:178:e:div:ete"
/// data-fgid-5fs5=":r5k:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-calendar w-4 h-4"
/// data-fg-5fs6="1.23:17.9088:node_modules/lucide-react:47:13:1576:32:e:Calendar::::::Bbz4"
/// data-fgid-5fs6=":r5l:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span
/// data-fg-5fs7="1.23:17.9088:/src/app/components/Journal.tsx:48:13:1621:32:e:span:x"
/// data-fgid-5fs7=":r5m:">Today</span></div></div></div><div class="flex-1
/// overflow-y-auto pb-24"
/// data-fg-5fs9="1.23:17.9088:/src/app/components/Journal.tsx:53:7:1706:9027:e:div:e"
/// data-fgid-5fs9=":r5n:"><div class="p-6 space-y-6"
/// data-fg-5fs10="1.23:17.9088:/src/app/components/Journal.tsx:54:9:1761:8959:e:div:etetetete"
/// data-fgid-5fs10=":r5o:"><div class="bg-accent/30 border border-accent
/// rounded-2xl p-4"
/// data-fg-5fs11="1.23:17.9088:/src/app/components/Journal.tsx:55:11:1803:1018:e:motion.div:ete"
/// data-fgid-5fs11=":r5p:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-3"
/// data-fg-5fs12="1.23:17.9088:/src/app/components/Journal.tsx:60:13:2000:233:e:div:ete"
/// data-fgid-5fs12=":r5q:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-sparkles w-4 h-4 text-accent-foreground"
/// data-fg-5fs13="1.23:17.9088:node_modules/lucide-react:61:15:2061:55:e:Sparkles::::::DD2N"
/// data-fgid-5fs13=":r5r:"><path d="M9.937 15.5A2 2 0 0 0 8.5
/// 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937
/// 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135
/// 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582
/// 6.135a.5.5 0 0 1-.963 0z"></path><path d="M20 3v4"></path><path d="M22
/// 5h-4"></path><path d="M4 17v2"></path><path d="M5 18H3"></path></svg><span
/// class="text-sm text-accent-foreground"
/// data-fg-5fs14="1.23:17.9088:/src/app/components/Journal.tsx:62:15:2131:83:e:span:x"
/// data-fgid-5fs14=":r5s:">Journal Entry</span></div><div class="flex
/// flex-wrap gap-2"
/// data-fg-5fs16="1.23:17.9088:/src/app/components/Journal.tsx:64:13:2246:551:e:div:x"
/// data-fgid-5fs16=":r5t:"><button class="px-3 py-2 rounded-xl text-sm
/// transition-colors bg-primary text-white"
/// data-fg-5fs18="1.23:17.9088:/src/app/components/Journal.tsx:66:17:2345:415:e:button:x"
/// data-fgid-5fs18=":r5u:">What drained your energy today?</button><button
/// class="px-3 py-2 rounded-xl text-sm transition-colors bg-card border
/// border-border"
/// data-fg-5fs18="1.23:17.9088:/src/app/components/Journal.tsx:66:17:2345:415:e:button:x"
/// data-fgid-5fs18=":r5v:">What boosted your productivity?</button><button
/// class="px-3 py-2 rounded-xl text-sm transition-colors bg-card border
/// border-border"
/// data-fg-5fs18="1.23:17.9088:/src/app/components/Journal.tsx:66:17:2345:415:e:button:x"
/// data-fgid-5fs18=":r60:">What are you grateful for today?</button><button
/// class="px-3 py-2 rounded-xl text-sm transition-colors bg-card border
/// border-border"
/// data-fg-5fs18="1.23:17.9088:/src/app/components/Journal.tsx:66:17:2345:415:e:button:x"
/// data-fgid-5fs18=":r61:">What did you learn today?</button></div></div><div
/// class="bg-card border border-border rounded-3xl p-6 min-h-[300px]
/// relative"
/// data-fg-5fs20="1.23:17.9088:/src/app/components/Journal.tsx:81:11:2833:2039:e:motion.div:etxte"
/// data-fgid-5fs20=":r62:" style="opacity: 1; transform: none;"><div
/// class="flex items-center justify-between mb-4"
/// data-fg-5fs21="1.23:17.9088:/src/app/components/Journal.tsx:87:13:3088:570:e:div:ete"
/// data-fgid-5fs21=":r63:"><p class="text-sm text-muted-foreground"
/// data-fg-5fs22="1.23:17.9088:/src/app/components/Journal.tsx:88:15:3159:65:e:p:x"
/// data-fgid-5fs22=":r64:">What drained your energy today?</p><button
/// class="w-10 h-10 rounded-full flex items-center justify-center bg-primary"
/// data-fg-5fs24="1.23:17.9088:/src/app/components/Journal.tsx:89:15:3239:400:e:motion.button:e"
/// data-fgid-5fs24=":r65:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-mic
/// w-5 h-5 text-white"
/// data-fg-5fs25="1.23:17.9088:node_modules/lucide-react:96:17:3570:38:e:Mic::::::ELnR"
/// data-fgid-5fs25=":r66:"><path d="M12 2a3 3 0 0 0-3 3v7a3 3 0 0 0 6 0V5a3 3
/// 0 0 0-3-3Z"></path><path d="M19 10v2a7 7 0 0 1-14 0v-2"></path><line
/// x1="12" x2="12" y1="19" y2="22"></line></svg></button></div><textarea
/// placeholder="Start writing or use voice input..." class="w-full h-full
/// bg-transparent outline-none resize-none min-h-[200px]"
/// data-fg-5fs33="1.23:17.9088:/src/app/components/Journal.tsx:124:13:4591:257:e:textarea"
/// data-fgid-5fs33=":r67:"></textarea></div><button class="w-full bg-primary
/// text-white py-4 rounded-2xl"
/// data-fg-5fs34="1.23:17.9088:/src/app/components/Journal.tsx:132:11:4884:123:e:button:x"
/// data-fgid-5fs34=":r68:">Save Entry</button><div class="border-t
/// border-border pt-6"
/// data-fg-5fs36="1.23:17.9088:/src/app/components/Journal.tsx:136:11:5019:4497:e:div:etf"
/// data-fgid-5fs36=":r69:"><h2 class="text-lg mb-4"
/// data-fg-5fs37="1.23:17.9088:/src/app/components/Journal.tsx:137:13:5077:58:e:h2:x"
/// data-fgid-5fs37=":r6a:">Log Energy</h2><div class="bg-card border
/// border-border rounded-3xl p-6"
/// data-fg-5fs40="1.23:17.9088:/src/app/components/Journal.tsx:139:15:5165:1365:e:motion.div:etete"
/// data-fgid-5fs40=":r6b:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-5fs41="1.23:17.9088:/src/app/components/Journal.tsx:145:17:5421:62:e:h2:x"
/// data-fgid-5fs41=":r6c:">Current Energy Level</h2><div class="text-center
/// mb-6"
/// data-fg-5fs43="1.23:17.9088:/src/app/components/Journal.tsx:146:17:5500:192:e:div:ete"
/// data-fgid-5fs43=":r6d:"><div class="text-6xl mb-2"
/// data-fg-5fs44="1.23:17.9088:/src/app/components/Journal.tsx:147:19:5553:51:e:div:xt"
/// data-fgid-5fs44=":r6e:">75%</div><div class="text-4xl"
/// data-fg-5fs47="1.23:17.9088:/src/app/components/Journal.tsx:148:19:5623:46:e:div:x"
/// data-fgid-5fs47=":r6f:">😊</div></div><div class="space-y-4"
/// data-fg-5fs49="1.23:17.9088:/src/app/components/Journal.tsx:150:17:5709:793:e:div:ete"
/// data-fgid-5fs49=":r6g:"><input type="range" min="0" max="100"
/// class="w-full h-2 bg-muted rounded-full appearance-none cursor-pointer
/// [&amp;::-webkit-slider-thumb]:appearance-none
/// [&amp;::-webkit-slider-thumb]:w-6 [&amp;::-webkit-slider-thumb]:h-6
/// [&amp;::-webkit-slider-thumb]:rounded-full
/// [&amp;::-webkit-slider-thumb]:bg-primary"
/// data-fg-5fs50="1.23:17.9088:/src/app/components/Journal.tsx:151:19:5755:509:e:input"
/// data-fgid-5fs50=":r6h:" value="75"><div class="flex justify-between
/// text-xs text-muted-foreground"
/// data-fg-5fs51="1.23:17.9088:/src/app/components/Journal.tsx:159:19:6283:196:e:div:ete"
/// data-fgid-5fs51=":r6i:"><span
/// data-fg-5fs52="1.23:17.9088:/src/app/components/Journal.tsx:160:21:6372:30:e:span:x"
/// data-fgid-5fs52=":r6j:">Low</span><span
/// data-fg-5fs54="1.23:17.9088:/src/app/components/Journal.tsx:161:21:6423:31:e:span:x"
/// data-fgid-5fs54=":r6k:">High</span></div></div></div><div class="bg-card
/// border border-border rounded-3xl p-6"
/// data-fg-5fs56="1.23:17.9088:/src/app/components/Journal.tsx:166:15:6546:1132:e:motion.div:ete"
/// data-fgid-5fs56=":r6l:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-5fs57="1.23:17.9088:/src/app/components/Journal.tsx:172:17:6802:59:e:h2:x"
/// data-fgid-5fs57=":r6m:">How are you feeling?</h2><div class="grid
/// grid-cols-5 gap-3"
/// data-fg-5fs59="1.23:17.9088:/src/app/components/Journal.tsx:173:17:6878:772:e:div:x"
/// data-fgid-5fs59=":r6n:"><button class="aspect-square rounded-2xl flex
/// flex-col items-center justify-center gap-2 transition-colors bg-primary/10
/// border-2 border-primary"
/// data-fg-5fs61="1.23:17.9088:/src/app/components/Journal.tsx:175:21:6983:622:e:motion.button:e"
/// data-fgid-5fs61=":r6o:" tabindex="0"><span class="text-2xl"
/// data-fg-5fs62="1.23:17.9088:/src/app/components/Journal.tsx:185:23:7522:46:e:span:x"
/// data-fgid-5fs62=":r6p:">😊</span></button><button class="aspect-square
/// rounded-2xl flex flex-col items-center justify-center gap-2
/// transition-colors bg-muted border border-border"
/// data-fg-5fs61="1.23:17.9088:/src/app/components/Journal.tsx:175:21:6983:622:e:motion.button:e"
/// data-fgid-5fs61=":r6q:" tabindex="0"><span class="text-2xl"
/// data-fg-5fs62="1.23:17.9088:/src/app/components/Journal.tsx:185:23:7522:46:e:span:x"
/// data-fgid-5fs62=":r6r:">😄</span></button><button class="aspect-square
/// rounded-2xl flex flex-col items-center justify-center gap-2
/// transition-colors bg-muted border border-border"
/// data-fg-5fs61="1.23:17.9088:/src/app/components/Journal.tsx:175:21:6983:622:e:motion.button:e"
/// data-fgid-5fs61=":r6s:" tabindex="0"><span class="text-2xl"
/// data-fg-5fs62="1.23:17.9088:/src/app/components/Journal.tsx:185:23:7522:46:e:span:x"
/// data-fgid-5fs62=":r6t:">😐</span></button><button class="aspect-square
/// rounded-2xl flex flex-col items-center justify-center gap-2
/// transition-colors bg-muted border border-border"
/// data-fg-5fs61="1.23:17.9088:/src/app/components/Journal.tsx:175:21:6983:622:e:motion.button:e"
/// data-fgid-5fs61=":r6u:" tabindex="0"><span class="text-2xl"
/// data-fg-5fs62="1.23:17.9088:/src/app/components/Journal.tsx:185:23:7522:46:e:span:x"
/// data-fgid-5fs62=":r6v:">😔</span></button><button class="aspect-square
/// rounded-2xl flex flex-col items-center justify-center gap-2
/// transition-colors bg-muted border border-border"
/// data-fg-5fs61="1.23:17.9088:/src/app/components/Journal.tsx:175:21:6983:622:e:motion.button:e"
/// data-fgid-5fs61=":r70:" tabindex="0"><span class="text-2xl"
/// data-fg-5fs62="1.23:17.9088:/src/app/components/Journal.tsx:185:23:7522:46:e:span:x"
/// data-fgid-5fs62=":r71:">😠</span></button></div></div><div class="bg-card
/// border border-border rounded-3xl p-6"
/// data-fg-5fs64="1.23:17.9088:/src/app/components/Journal.tsx:191:15:7694:1159:e:motion.div:ete"
/// data-fgid-5fs64=":r72:" style="opacity: 1; transform: none;"><div
/// class="flex items-center justify-between mb-4"
/// data-fg-5fs65="1.23:17.9088:/src/app/components/Journal.tsx:197:17:7950:221:e:div:ete"
/// data-fgid-5fs65=":r73:"><h2 class="text-lg"
/// data-fg-5fs66="1.23:17.9088:/src/app/components/Journal.tsx:198:19:8025:55:e:h2:x"
/// data-fgid-5fs66=":r74:">Weekly Trend</h2><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-trending-up w-5 h-5 text-green-500"
/// data-fg-5fs68="1.23:17.9088:node_modules/lucide-react:199:19:8099:49:e:TrendingUp::::::tM8"
/// data-fgid-5fs68=":r75:"><polyline points="22 7 13.5 15.5 8.5 10.5 2
/// 17"></polyline><polyline points="16 7 22 7 22
/// 13"></polyline></svg></div><div class="recharts-responsive-container"
/// style="width: 100%; height: 200px; min-width: 0px;"><div
/// class="recharts-wrapper" style="position: relative; cursor: default;
/// width: 330px; height: 200px;"><svg
/// data-fg-5fs70="1.23:17.9088:node_modules/recharts:202:19:8254:532:e:LineChart:etetetete:::::hwU"
/// class="recharts-surface" width="330" height="200" viewBox="0 0 330 200"
/// style="width: 100%; height:
/// 100%;"><title></title><desc></desc><defs><clipPath
/// id="recharts1-clip"><rect x="65" y="5" height="160"
/// width="260"></rect></clipPath></defs><g class="recharts-cartesian-grid"><g
/// class="recharts-cartesian-grid-horizontal"><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="165"
/// x2="325" y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="125"
/// x2="325" y2="125"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="85" x2="325"
/// y2="85"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="45" x2="325"
/// y2="45"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="5" x2="325"
/// y2="5"></line></g><g class="recharts-cartesian-grid-vertical"><line
/// stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="5" x2="65"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="108.33333333333334"
/// y1="5" x2="108.33333333333334" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="151.66666666666669"
/// y1="5" x2="151.66666666666669" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="195" y1="5" x2="195"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="238.33333333333334"
/// y1="5" x2="238.33333333333334" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="281.6666666666667"
/// y1="5" x2="281.6666666666667" y2="165"></line><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-5fs71="1.23:17.9088:node_modules/recharts:203:21:8302:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="325" y1="5" x2="325"
/// y2="165"></line></g></g><g class="recharts-layer recharts-cartesian-axis
/// recharts-xAxis xAxis"><line orientation="bottom" width="260" height="30"
/// stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-line" fill="none" x1="65"
/// y1="165" x2="325" y2="165"></line><g
/// class="recharts-cartesian-axis-ticks"><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="65" y1="171" x2="65" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="65"
/// dy="0.71em">Mon</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="108.33333333333334" y1="171" x2="108.33333333333334"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="108.33333333333334" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="108.33333333333334"
/// dy="0.71em">Tue</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="151.66666666666669" y1="171" x2="151.66666666666669"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="151.66666666666669" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="151.66666666666669"
/// dy="0.71em">Wed</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="195" y1="171" x2="195" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="195" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="195"
/// dy="0.71em">Thu</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="238.33333333333334" y1="171" x2="238.33333333333334"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="238.33333333333334" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="238.33333333333334"
/// dy="0.71em">Fri</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="281.6666666666667" y1="171" x2="281.6666666666667"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="281.6666666666667" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="281.6666666666667"
/// dy="0.71em">Sat</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="325" y1="171" x2="325" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-5fs72="1.23:17.9088:node_modules/recharts:204:21:8379:40:e:XAxis::::::BN8z"
/// x="316.69166564941406" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="316.69166564941406"
/// dy="0.71em">Sun</tspan></text></g></g></g><g class="recharts-layer
/// recharts-cartesian-axis recharts-yAxis yAxis"><line orientation="left"
/// width="60" height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-line" fill="none" x1="65"
/// y1="5" x2="65" y2="165"></line><g class="recharts-cartesian-axis-ticks"><g
/// class="recharts-layer recharts-cartesian-axis-tick"><line
/// orientation="left" width="60" height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="165" x2="65" y2="165"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="57" y="165" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">0</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="125" x2="65" y2="125"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="57" y="125" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">25</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="85" x2="65" y2="85"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="57" y="85" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">50</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="45" x2="65" y2="45"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="57" y="45" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">75</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="5" x2="65" y2="5"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-5fs73="1.23:17.9088:node_modules/recharts:205:21:8440:26:e:YAxis::::::4FS"
/// x="57" y="12.000000953674316" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="end"
/// fill="#64748b"><tspan x="57" dy="0.355em">100</tspan></text></g></g></g><g
/// class="recharts-layer recharts-line"><path stroke="#6366f1"
/// stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="none" width="260" height="160" class="recharts-curve
/// recharts-line-curve" stroke-dasharray="285.61395263671875px 0px"
/// d="M65,61C79.444,52.733,93.889,44.467,108.333,40.2C122.778,35.933,137.222,33.8,151.667,33.8C166.111,33.8,180.556,53,195,53C209.444,53,223.889,24.2,238.333,24.2C252.778,24.2,267.222,45,281.667,45C296.111,45,310.556,45,325,45"></path><g
/// class="recharts-layer"></g><g class="recharts-layer
/// recharts-line-dots"><circle r="5" stroke="#6366f1" stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="65" cy="60.99999999999999"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="108.33333333333334"
/// cy="40.199999999999996" class="recharts-dot
/// recharts-line-dot"></circle><circle r="5" stroke="#6366f1"
/// stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="151.66666666666669"
/// cy="33.800000000000004" class="recharts-dot
/// recharts-line-dot"></circle><circle r="5" stroke="#6366f1"
/// stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="195" cy="53.00000000000001"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="238.33333333333334"
/// cy="24.200000000000003" class="recharts-dot
/// recharts-line-dot"></circle><circle r="5" stroke="#6366f1"
/// stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="281.6666666666667" cy="45"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-5fs75="1.23:17.9088:node_modules/recharts:207:21:8519:236:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="325" cy="45"
/// class="recharts-dot recharts-line-dot"></circle></g></g></svg><div
/// tabindex="-1" class="recharts-tooltip-wrapper
/// recharts-tooltip-wrapper-right recharts-tooltip-wrapper-bottom"
/// style="visibility: hidden; pointer-events: none; position: absolute; top:
/// 0px; left: 0px; transform: translate(65px, 10px);"><div
/// class="recharts-default-tooltip" style="margin: 0px; padding: 10px;
/// background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204,
/// 204); white-space: nowrap;"><p class="recharts-tooltip-label"
/// style="margin: 0px;"></p></div></div></div></div></div><div
/// class="bg-accent/30 border border-accent rounded-2xl p-4"
/// data-fg-5fs76="1.23:17.9088:/src/app/components/Journal.tsx:218:15:8869:463:e:motion.div:ete"
/// data-fgid-5fs76=":r77:" style="opacity: 1;"><h3 class="text-sm mb-2"
/// data-fg-5fs77="1.23:17.9088:/src/app/components/Journal.tsx:224:17:9117:59:e:h3:tx"
/// data-fgid-5fs77=":r78:">💡 Insight</h3><p class="text-sm
/// text-muted-foreground"
/// data-fg-5fs80="1.23:17.9088:/src/app/components/Journal.tsx:225:17:9193:111:e:p:x"
/// data-fgid-5fs80=":r79:">Your energy peaks around 10 AM.
///
/// Schedule high-focus tasks during this time for best
/// results.</p></div><button class="w-full bg-primary text-white py-4
/// rounded-2xl"
/// data-fg-5fs82="1.23:17.9088:/src/app/components/Journal.tsx:230:15:9348:135:e:button:x"
/// data-fgid-5fs82=":r7a:">Save Energy Log</button></div><div class="mt-8
/// border-t border-border pt-6"
/// data-fg-5fs84="1.23:17.9088:/src/app/components/Journal.tsx:236:11:9528:1177:e:div:ete"
/// data-fgid-5fs84=":r7b:"><h2 class="text-lg mb-4"
/// data-fg-5fs85="1.23:17.9088:/src/app/components/Journal.tsx:237:13:9591:61:e:h2:x"
/// data-fgid-5fs85=":r7c:">Recent Entries</h2><div class="space-y-3"
/// data-fg-5fs87="1.23:17.9088:/src/app/components/Journal.tsx:238:13:9665:1023:e:div:x"
/// data-fgid-5fs87=":r7d:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-5fs89="1.23:17.9088:/src/app/components/Journal.tsx:243:17:10000:651:e:motion.div:ete"
/// data-fgid-5fs89=":r7e:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2"
/// data-fg-5fs90="1.23:17.9088:/src/app/components/Journal.tsx:250:19:10305:238:e:div:ete"
/// data-fgid-5fs90=":r7f:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-calendar w-4 h-4 text-muted-foreground"
/// data-fg-5fs91="1.23:17.9088:node_modules/lucide-react:251:21:10372:54:e:Calendar::::::Bbz4"
/// data-fgid-5fs91=":r7g:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span class="text-sm text-muted-foreground"
/// data-fg-5fs92="1.23:17.9088:/src/app/components/Journal.tsx:252:21:10447:71:e:span:x"
/// data-fgid-5fs92=":r7h:">Yesterday</span></div><p class="text-sm
/// line-clamp-2"
/// data-fg-5fs94="1.23:17.9088:/src/app/components/Journal.tsx:254:19:10562:59:e:p:x"
/// data-fgid-5fs94=":r7i:">Had a really productive morning session. Completed
/// 3 major tasks...</p></div><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-5fs89="1.23:17.9088:/src/app/components/Journal.tsx:243:17:10000:651:e:motion.div:ete"
/// data-fgid-5fs89=":r7j:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2"
/// data-fg-5fs90="1.23:17.9088:/src/app/components/Journal.tsx:250:19:10305:238:e:div:ete"
/// data-fgid-5fs90=":r7k:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-calendar w-4 h-4 text-muted-foreground"
/// data-fg-5fs91="1.23:17.9088:node_modules/lucide-react:251:21:10372:54:e:Calendar::::::Bbz4"
/// data-fgid-5fs91=":r7l:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span class="text-sm text-muted-foreground"
/// data-fg-5fs92="1.23:17.9088:/src/app/components/Journal.tsx:252:21:10447:71:e:span:x"
/// data-fgid-5fs92=":r7m:">2 days ago</span></div><p class="text-sm
/// line-clamp-2"
/// data-fg-5fs94="1.23:17.9088:/src/app/components/Journal.tsx:254:19:10562:59:e:p:x"
/// data-fgid-5fs94=":r7n:">Feeling a bit low on energy today. Need to focus
/// on recovery...</p></div></div></div></div></div></div><div class="fixed
/// bottom-0 left-0 right-0 bg-card border-t border-border"
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
/// data-fgid-h9b4=":r5a:"><div class="absolute inset-0 bg-primary/10
/// rounded-2xl"
/// data-fg-h9b6="1.25:17.134:/src/app/components/Navigation.tsx:36:19:1342:228:e:motion.div"
/// data-fgid-h9b6=":r7o:" style="transform: none; transform-origin: 50% 50%
/// 0px;"></div><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
/// viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-book-open w-5 h-5 relative z-10 transition-colors text-primary"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r5b:"><path d="M12 7v14"></path><path d="M3 18a1 1 0 0
/// 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1
/// 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"></path></svg><span
/// class="text-xs relative z-10 transition-colors text-primary"
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
class JournalWidget extends StatefulWidget {
  const JournalWidget({super.key});

  static String routeName = 'Journal';
  static String routePath = '/journal';

  @override
  State<JournalWidget> createState() => _JournalWidgetState();
}

class _JournalWidgetState extends State<JournalWidget> {
  late JournalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JournalModel());
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Journal & Energy',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.event_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 18.0,
                              ),
                              Text(
                                'Today',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
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
                                  color: Color(0xFFEFEEFD),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.edit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 18.0,
                                            ),
                                            Text(
                                              'Journal Entry',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Wrap(
                                          spacing: 8.0,
                                          runSpacing: 8.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.check_rounded,
                                                      color: Colors.white,
                                                      size: 16.0,
                                                    ),
                                                    Text(
                                                      'What drained your energy today?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                            lineHeight: 1.4,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 6.0)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'What boosted your productivity?',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                                lineHeight: 1.4,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 6.0)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'What are you grateful for today?',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                                lineHeight: 1.4,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 6.0)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 34.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'What did you learn today?',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                                lineHeight: 1.4,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 6.0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'What drained your energy today?',
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
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
                                            Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        9999.0),
                                                shape: BoxShape.rectangle,
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.mic_rounded,
                                                color: Colors.white,
                                                size: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                            minHeight: 180.0,
                                          ),
                                          child: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            child: Text(
                                              'Start writing or use voice input...',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFFA0A0A0),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 0.0,
                                endIndent: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    (FFMainAxisAlignment.center).flutterValue,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Save Entry',
                                    options: FFButtonOptions(
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          110.0, 0.0, 110.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Log Energy',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          'Current Energy Level',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '75%',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 48.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                            Text(
                                              '😊',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          'How are you feeling?',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.moodButtonModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MoodButtonWidget(
                                                active: true,
                                                emoji: '😊',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.moodButtonModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MoodButtonWidget(
                                                active: false,
                                                emoji: '😄',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.moodButtonModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MoodButtonWidget(
                                                active: false,
                                                emoji: '😐',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.moodButtonModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MoodButtonWidget(
                                                active: false,
                                                emoji: '😔',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.moodButtonModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MoodButtonWidget(
                                                active: false,
                                                emoji: '😠',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Weekly Trend',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Icon(
                                              Icons.trending_up_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 180.0,
                                          child: Container(
                                            height: 180.0,
                                            child: FlutterFlowLineChart(
                                              data: [
                                                FFLineChartData(
                                                  xData: ([
                                                    0.0,
                                                    1.0,
                                                    2.0,
                                                    3.0,
                                                    4.0,
                                                    5.0,
                                                    6.0
                                                  ]),
                                                  yData: ([
                                                    60.0,
                                                    75.0,
                                                    80.0,
                                                    65.0,
                                                    90.0,
                                                    70.0,
                                                    70.0
                                                  ]),
                                                  settings: LineChartBarData(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    barWidth: 2.0,
                                                    isCurved: true,
                                                  ),
                                                )
                                              ],
                                              chartStylingInfo:
                                                  ChartStylingInfo(
                                                backgroundColor:
                                                    Colors.transparent,
                                                showGrid: true,
                                                showBorder: false,
                                              ),
                                              axisBounds: AxisBounds(
                                                minX: 0.0,
                                                minY: 0.0,
                                                maxX: 6.0,
                                                maxY: 108.0,
                                              ),
                                              xLabels: ([
                                                'M',
                                                'T',
                                                'W',
                                                'T',
                                                'F',
                                                'S',
                                                'S'
                                              ]),
                                              xAxisLabelInfo: AxisLabelInfo(
                                                showLabels: true,
                                                labelTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 10.0,
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
                                                          lineHeight: 1.0,
                                                        ),
                                                reservedSize: 28.0,
                                              ),
                                              yAxisLabelInfo: AxisLabelInfo(
                                                reservedSize: 0.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0x1AEE8B60),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x4DEE8B60),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '💡',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Insight',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                              Text(
                                                'Your energy peaks around 10 AM. Schedule high-focus tasks during this time for best results.',
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
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
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
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
                                    'Recent Entries',
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
                                  wrapWithModel(
                                    model: _model.historyItemModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: HistoryItemWidget(
                                      date: 'Yesterday',
                                      snippet:
                                          'Had a really productive morning session. Completed 3 major tasks...',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.historyItemModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: HistoryItemWidget(
                                      date: '2 days ago',
                                      snippet:
                                          'Feeling a bit low on energy today. Need to focus on recovery...',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Container(
                                height: 32.0,
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
