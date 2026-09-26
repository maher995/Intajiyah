import '/components/stat_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'analytics_statics_model.dart';
export 'analytics_statics_model.dart';

/// <div class="flex flex-col h-full bg-background overflow-y-auto pb-24"
/// data-fg-ddf30="1.17:17.7516:/src/app/components/Analytics.tsx:34:5:1286:11253:e:div:ete:1"
/// data-fgid-ddf30=":r89:" data-fg-callsite-d3bl6=""><div class="p-6 border-b
/// border-border"
/// data-fg-ddf31="1.17:17.7516:/src/app/components/Analytics.tsx:35:7:1367:908:e:div:ete"
/// data-fgid-ddf31=":r8a:"><h1 class="text-2xl mb-4"
/// data-fg-ddf32="1.17:17.7516:/src/app/components/Analytics.tsx:36:9:1420:57:e:h1:x"
/// data-fgid-ddf32=":r8b:">Analytics</h1><div class="flex gap-2"
/// data-fg-ddf34="1.17:17.7516:/src/app/components/Analytics.tsx:38:9:1487:775:e:div:ete"
/// data-fgid-ddf34=":r8c:"><button class="flex-1 py-2 px-4 rounded-xl text-sm
/// transition-colors bg-primary text-white"
/// data-fg-ddf35="1.17:17.7516:/src/app/components/Analytics.tsx:39:11:1526:350:e:button:x"
/// data-fgid-ddf35=":r8d:">Statistics</button><button class="flex-1 py-2 px-4
/// rounded-xl text-sm transition-colors bg-muted text-muted-foreground"
/// data-fg-ddf37="1.17:17.7516:/src/app/components/Analytics.tsx:49:11:1887:360:e:button:x"
/// data-fgid-ddf37=":r8e:">Monthly Report</button></div></div><div class="p-6
/// space-y-6"
/// data-fg-ddf39="1.17:17.7516:/src/app/components/Analytics.tsx:62:7:2283:10245:e:div:x"
/// data-fgid-ddf39=":r8f:"><div class="grid grid-cols-2 gap-3"
/// data-fg-ddf312="1.17:17.7516:/src/app/components/Analytics.tsx:65:9:2371:2375:e:div:etetete"
/// data-fgid-ddf312=":r8g:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-ddf313="1.17:17.7516:/src/app/components/Analytics.tsx:66:11:2422:536:e:motion.div:etete"
/// data-fgid-ddf313=":r8h:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2 text-muted-foreground"
/// data-fg-ddf314="1.17:17.7516:/src/app/components/Analytics.tsx:71:13:2623:190:e:div:ete"
/// data-fgid-ddf314=":r8i:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-target w-4 h-4"
/// data-fg-ddf315="1.17:17.7516:node_modules/lucide-react:72:15:2706:30:e:Target::::::DxzD"
/// data-fgid-ddf315=":r8j:"><circle cx="12" cy="12" r="10"></circle><circle
/// cx="12" cy="12" r="6"></circle><circle cx="12" cy="12"
/// r="2"></circle></svg><span class="text-xs"
/// data-fg-ddf316="1.17:17.7516:/src/app/components/Analytics.tsx:73:15:2751:43:e:span:t"
/// data-fgid-ddf316=":r8k:">Tasks Done</span></div><div class="text-3xl"
/// data-fg-ddf318="1.17:17.7516:/src/app/components/Analytics.tsx:75:13:2826:34:e:div:t"
/// data-fgid-ddf318=":r8l:">66</div><p class="text-xs text-green-500 mt-1"
/// data-fg-ddf320="1.17:17.7516:/src/app/components/Analytics.tsx:76:13:2873:61:e:p:t"
/// data-fgid-ddf320=":r8m:">+12% this week</p></div><div class="bg-card
/// border border-border rounded-2xl p-4"
/// data-fg-ddf322="1.17:17.7516:/src/app/components/Analytics.tsx:79:11:2970:578:e:motion.div:etete"
/// data-fgid-ddf322=":r8n:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2 text-muted-foreground"
/// data-fg-ddf323="1.17:17.7516:/src/app/components/Analytics.tsx:85:13:3211:187:e:div:ete"
/// data-fgid-ddf323=":r8o:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-zap w-4 h-4"
/// data-fg-ddf324="1.17:17.7516:node_modules/lucide-react:86:15:3294:27:e:Zap::::::Cp7"
/// data-fgid-ddf324=":r8p:"><path d="M4 14a1 1 0 0 1-.78-1.63l9.9-10.2a.5.5 0
/// 0 1 .86.46l-1.92 6.02A1 1 0 0 0 13 10h7a1 1 0 0 1 .78 1.63l-9.9 10.2a.5.5
/// 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14z"></path></svg><span
/// class="text-xs"
/// data-fg-ddf325="1.17:17.7516:/src/app/components/Analytics.tsx:87:15:3336:43:e:span:t"
/// data-fgid-ddf325=":r8q:">Avg Energy</span></div><div class="text-3xl"
/// data-fg-ddf327="1.17:17.7516:/src/app/components/Analytics.tsx:89:13:3411:35:e:div:t"
/// data-fgid-ddf327=":r8r:">77%</div><p class="text-xs text-green-500 mt-1"
/// data-fg-ddf329="1.17:17.7516:/src/app/components/Analytics.tsx:90:13:3459:65:e:p:t"
/// data-fgid-ddf329=":r8s:">+5% from last week</p></div><div class="bg-card
/// border border-border rounded-2xl p-4"
/// data-fg-ddf331="1.17:17.7516:/src/app/components/Analytics.tsx:93:11:3560:581:e:motion.div:etete"
/// data-fgid-ddf331=":r8t:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2 text-muted-foreground"
/// data-fg-ddf332="1.17:17.7516:/src/app/components/Analytics.tsx:99:13:3801:193:e:div:ete"
/// data-fgid-ddf332=":r8u:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-calendar w-4 h-4"
/// data-fg-ddf333="1.17:17.7516:node_modules/lucide-react:100:15:3884:32:e:Calendar::::::Bbz4"
/// data-fgid-ddf333=":r8v:"><path d="M8 2v4"></path><path d="M16
/// 2v4"></path><rect width="18" height="18" x="3" y="4" rx="2"></rect><path
/// d="M3 10h18"></path></svg><span class="text-xs"
/// data-fg-ddf334="1.17:17.7516:/src/app/components/Analytics.tsx:101:15:3931:44:e:span:t"
/// data-fgid-ddf334=":r90:">Focus Hours</span></div><div class="text-3xl"
/// data-fg-ddf336="1.17:17.7516:/src/app/components/Analytics.tsx:103:13:4007:34:e:div:t"
/// data-fgid-ddf336=":r91:">28</div><p class="text-xs text-muted-foreground
/// mt-1"
/// data-fg-ddf338="1.17:17.7516:/src/app/components/Analytics.tsx:104:13:4054:63:e:p:t"
/// data-fgid-ddf338=":r92:">This week</p></div><div class="bg-card border
/// border-border rounded-2xl p-4"
/// data-fg-ddf340="1.17:17.7516:/src/app/components/Analytics.tsx:107:11:4153:578:e:motion.div:etete"
/// data-fgid-ddf340=":r93:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-2 text-muted-foreground"
/// data-fg-ddf341="1.17:17.7516:/src/app/components/Analytics.tsx:113:13:4394:195:e:div:ete"
/// data-fgid-ddf341=":r94:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-trending-up w-4 h-4"
/// data-fg-ddf342="1.17:17.7516:node_modules/lucide-react:114:15:4477:34:e:TrendingUp::::::tM8"
/// data-fgid-ddf342=":r95:"><polyline points="22 7 13.5 15.5 8.5 10.5 2
/// 17"></polyline><polyline points="16 7 22 7 22 13"></polyline></svg><span
/// class="text-xs"
/// data-fg-ddf343="1.17:17.7516:/src/app/components/Analytics.tsx:115:15:4526:44:e:span:t"
/// data-fgid-ddf343=":r96:">Best Streak</span></div><div class="text-3xl"
/// data-fg-ddf345="1.17:17.7516:/src/app/components/Analytics.tsx:117:13:4602:34:e:div:t"
/// data-fgid-ddf345=":r97:">12</div><p class="text-xs text-muted-foreground
/// mt-1"
/// data-fg-ddf347="1.17:17.7516:/src/app/components/Analytics.tsx:118:13:4649:58:e:p:t"
/// data-fgid-ddf347=":r98:">days</p></div></div><div class="bg-card border
/// border-border rounded-3xl p-6"
/// data-fg-ddf349="1.17:17.7516:/src/app/components/Analytics.tsx:122:9:4756:865:e:motion.div:ete"
/// data-fgid-ddf349=":r99:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-ddf350="1.17:17.7516:/src/app/components/Analytics.tsx:128:11:4976:52:e:h2:t"
/// data-fgid-ddf350=":r9a:">Productivity Trend</h2><div
/// class="recharts-responsive-container" style="width: 100%; height: 200px;
/// min-width: 0px;"><div class="recharts-wrapper" style="position: relative;
/// cursor: default; width: 330px; height: 200px;"><svg
/// data-fg-ddf353="1.17:17.7516:node_modules/recharts:130:13:5099:467:e:LineChart:etetetete:::::hwU"
/// class="recharts-surface" width="330" height="200" viewBox="0 0 330 200"
/// style="width: 100%; height:
/// 100%;"><title></title><desc></desc><defs><clipPath
/// id="recharts1-clip"><rect x="65" y="5" height="160"
/// width="260"></rect></clipPath></defs><g class="recharts-cartesian-grid"><g
/// class="recharts-cartesian-grid-horizontal"><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="165"
/// x2="325" y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="125"
/// x2="325" y2="125"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="85" x2="325"
/// y2="85"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="45" x2="325"
/// y2="45"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="5" x2="325"
/// y2="5"></line></g><g class="recharts-cartesian-grid-vertical"><line
/// stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="65" y1="5" x2="65"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="108.33333333333334"
/// y1="5" x2="108.33333333333334" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="151.66666666666669"
/// y1="5" x2="151.66666666666669" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="195" y1="5" x2="195"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="238.33333333333334"
/// y1="5" x2="238.33333333333334" y2="165"></line><line stroke-dasharray="3
/// 3" stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="281.6666666666667"
/// y1="5" x2="281.6666666666667" y2="165"></line><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-ddf354="1.17:17.7516:node_modules/recharts:131:15:5149:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="65" y="5" width="260" height="160" x1="325" y1="5" x2="325"
/// y2="165"></line></g></g><g class="recharts-layer recharts-cartesian-axis
/// recharts-xAxis xAxis"><line orientation="bottom" width="260" height="30"
/// stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-line" fill="none" x1="65"
/// y1="165" x2="325" y2="165"></line><g
/// class="recharts-cartesian-axis-ticks"><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="65" y1="171" x2="65" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="65"
/// dy="0.71em">Mon</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="108.33333333333334" y1="171" x2="108.33333333333334"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="108.33333333333334" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="108.33333333333334"
/// dy="0.71em">Tue</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="151.66666666666669" y1="171" x2="151.66666666666669"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="151.66666666666669" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="151.66666666666669"
/// dy="0.71em">Wed</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="195" y1="171" x2="195" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="195" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="195"
/// dy="0.71em">Thu</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="238.33333333333334" y1="171" x2="238.33333333333334"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="238.33333333333334" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="238.33333333333334"
/// dy="0.71em">Fri</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="281.6666666666667" y1="171" x2="281.6666666666667"
/// y2="165"></line><text orientation="bottom" width="260" height="30"
/// stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="281.6666666666667" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="281.6666666666667"
/// dy="0.71em">Sat</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="260"
/// height="30" stroke="#64748b"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="65" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="325" y1="171" x2="325" y2="165"></line><text orientation="bottom"
/// width="260" height="30" stroke="none"
/// data-fg-ddf355="1.17:17.7516:node_modules/recharts:132:15:5220:40:e:XAxis::::::BN8z"
/// x="316.69166564941406" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="316.69166564941406"
/// dy="0.71em">Sun</tspan></text></g></g></g><g class="recharts-layer
/// recharts-cartesian-axis recharts-yAxis yAxis"><line orientation="left"
/// width="60" height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-line" fill="none" x1="65"
/// y1="5" x2="65" y2="165"></line><g class="recharts-cartesian-axis-ticks"><g
/// class="recharts-layer recharts-cartesian-axis-tick"><line
/// orientation="left" width="60" height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="165" x2="65" y2="165"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="57" y="165" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">0</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="125" x2="65" y2="125"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="57" y="125" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">4</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="85" x2="65" y2="85"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="57" y="85" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">8</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="45" x2="65" y2="45"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="57" y="45" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="57"
/// dy="0.355em">12</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="60"
/// height="160" stroke="#64748b"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="59"
/// y1="5" x2="65" y2="5"></line><text orientation="left" width="60"
/// height="160" stroke="none"
/// data-fg-ddf356="1.17:17.7516:node_modules/recharts:133:15:5275:26:e:YAxis::::::4FS"
/// x="57" y="12.000000953674316" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="end"
/// fill="#64748b"><tspan x="57" dy="0.355em">16</tspan></text></g></g></g><g
/// class="recharts-layer recharts-line"><path stroke="#6366f1"
/// stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="none" width="260" height="160" class="recharts-curve
/// recharts-line-curve" stroke-dasharray="352.04925537109375px 0px"
/// d="M65,85C79.444,65,93.889,45,108.333,45C122.778,45,137.222,65,151.667,65C166.111,65,180.556,15,195,15C209.444,15,223.889,40,238.333,55C252.778,70,267.222,93.333,281.667,105C296.111,116.667,310.556,120.833,325,125"></path><g
/// class="recharts-layer"></g><g class="recharts-layer
/// recharts-line-dots"><circle r="5" stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="65" cy="85"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="108.33333333333334" cy="45"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="151.66666666666669" cy="65"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="195" cy="15"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="238.33333333333334" cy="55"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="281.6666666666667" cy="105"
/// class="recharts-dot recharts-line-dot"></circle><circle r="5"
/// stroke="#6366f1" stroke-width="3"
/// data-fg-ddf358="1.17:17.7516:node_modules/recharts:135:15:5342:199:e:Line::::::DB4K"
/// fill="#6366f1" width="260" height="160" cx="325" cy="125"
/// class="recharts-dot recharts-line-dot"></circle></g></g></svg><div
/// tabindex="-1" class="recharts-tooltip-wrapper
/// recharts-tooltip-wrapper-right recharts-tooltip-wrapper-bottom"
/// style="visibility: hidden; pointer-events: none; position: absolute; top:
/// 0px; left: 0px; transform: translate(65px, 10px);"><div
/// class="recharts-default-tooltip" style="margin: 0px; padding: 10px;
/// background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204,
/// 204); white-space: nowrap;"><p class="recharts-tooltip-label"
/// style="margin: 0px;"></p></div></div></div></div></div><div class="bg-card
/// border border-border rounded-3xl p-6"
/// data-fg-ddf359="1.17:17.7516:/src/app/components/Analytics.tsx:146:9:5631:782:e:motion.div:ete"
/// data-fgid-ddf359=":r9c:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-ddf360="1.17:17.7516:/src/app/components/Analytics.tsx:152:11:5851:51:e:h2:t"
/// data-fgid-ddf360=":r9d:">Habit Consistency</h2><div
/// class="recharts-responsive-container" style="width: 100%; height: 200px;
/// min-width: 0px;"><div class="recharts-wrapper" style="position: relative;
/// cursor: default; width: 330px; height: 200px;"><svg
/// data-fg-ddf363="1.17:17.7516:node_modules/recharts:154:13:5973:385:e:BarChart:etetetete:::::CewV"
/// class="recharts-surface" width="330" height="200" viewBox="0 0 330 200"
/// style="width: 100%; height:
/// 100%;"><title></title><desc></desc><defs><clipPath
/// id="recharts4-clip"><rect x="85" y="5" height="160"
/// width="240"></rect></clipPath></defs><g class="recharts-cartesian-grid"><g
/// class="recharts-cartesian-grid-horizontal"><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="25" x2="325"
/// y2="25"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="65" x2="325"
/// y2="65"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="105"
/// x2="325" y2="105"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="145"
/// x2="325" y2="145"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="5" x2="325"
/// y2="5"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="165"
/// x2="325" y2="165"></line></g><g
/// class="recharts-cartesian-grid-vertical"><line stroke-dasharray="3 3"
/// stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="85" y1="5" x2="85"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="145" y1="5" x2="145"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="205" y1="5" x2="205"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="265" y1="5" x2="265"
/// y2="165"></line><line stroke-dasharray="3 3" stroke="#e2e8f0"
/// data-fg-ddf364="1.17:17.7516:node_modules/recharts:155:15:6033:56:e:CartesianGrid::::::CTO8"
/// fill="none" x="85" y="5" width="240" height="160" x1="325" y1="5" x2="325"
/// y2="165"></line></g></g><g class="recharts-layer recharts-cartesian-axis
/// recharts-xAxis xAxis"><line orientation="bottom" width="240" height="30"
/// stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-line" fill="none" x1="85"
/// y1="165" x2="325" y2="165"></line><g
/// class="recharts-cartesian-axis-ticks"><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="240"
/// height="30" stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="85" y1="171" x2="85" y2="165"></line><text orientation="bottom"
/// width="240" height="30" stroke="none"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="85"
/// dy="0.71em">0</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="240"
/// height="30" stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="145" y1="171" x2="145" y2="165"></line><text orientation="bottom"
/// width="240" height="30" stroke="none"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="145" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="145"
/// dy="0.71em">25</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="240"
/// height="30" stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="205" y1="171" x2="205" y2="165"></line><text orientation="bottom"
/// width="240" height="30" stroke="none"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="205" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="205"
/// dy="0.71em">50</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="240"
/// height="30" stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="265" y1="171" x2="265" y2="165"></line><text orientation="bottom"
/// width="240" height="30" stroke="none"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="265" y="173" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="middle" fill="#64748b"><tspan x="265"
/// dy="0.71em">75</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="bottom" width="240"
/// height="30" stroke="#64748b"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="85" y="165" class="recharts-cartesian-axis-tick-line" fill="none"
/// x1="325" y1="171" x2="325" y2="165"></line><text orientation="bottom"
/// width="240" height="30" stroke="none"
/// data-fg-ddf365="1.17:17.7516:node_modules/recharts:156:15:6104:40:e:XAxis::::::BN8z"
/// x="317.0583324432373" y="173" class="recharts-text
/// recharts-cartesian-axis-tick-value" text-anchor="middle"
/// fill="#64748b"><tspan x="317.0583324432373"
/// dy="0.71em">100</tspan></text></g></g></g><g class="recharts-layer
/// recharts-cartesian-axis recharts-yAxis yAxis"><line orientation="left"
/// width="80" height="160" stroke="#64748b"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-line" fill="none" x1="85"
/// y1="5" x2="85" y2="165"></line><g class="recharts-cartesian-axis-ticks"><g
/// class="recharts-layer recharts-cartesian-axis-tick"><line
/// orientation="left" width="80" height="160" stroke="#64748b"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="79"
/// y1="25" x2="85" y2="25"></line><text orientation="left" width="80"
/// height="160" stroke="none"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="77" y="25" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="77"
/// dy="0.355em">Exercise</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="80"
/// height="160" stroke="#64748b"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="79"
/// y1="65" x2="85" y2="65"></line><text orientation="left" width="80"
/// height="160" stroke="none"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="77" y="65" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="77" dy="0.355em">Deep
/// Work</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="80"
/// height="160" stroke="#64748b"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="79"
/// y1="105" x2="85" y2="105"></line><text orientation="left" width="80"
/// height="160" stroke="none"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="77" y="105" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="77"
/// dy="0.355em">Reading</tspan></text></g><g class="recharts-layer
/// recharts-cartesian-axis-tick"><line orientation="left" width="80"
/// height="160" stroke="#64748b"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="5" y="5" class="recharts-cartesian-axis-tick-line" fill="none" x1="79"
/// y1="145" x2="85" y2="145"></line><text orientation="left" width="80"
/// height="160" stroke="none"
/// data-fg-ddf366="1.17:17.7516:node_modules/recharts:157:15:6159:69:e:YAxis::::::4FS"
/// x="77" y="145" class="recharts-text recharts-cartesian-axis-tick-value"
/// text-anchor="end" fill="#64748b"><tspan x="77"
/// dy="0.355em">Meditation</tspan></text></g></g></g><g class="recharts-layer
/// recharts-bar"><g class="recharts-layer recharts-bar-rectangles"><g
/// class="recharts-layer"><g class="recharts-layer
/// recharts-bar-rectangle"><path x="85" y="9" width="204" height="32"
/// radius="0,8,8,0" fill="#6366f1"
/// data-fg-ddf368="1.17:17.7516:node_modules/recharts:159:15:6269:65:e:Bar::::::EHPj"
/// class="recharts-rectangle" d="M85,9L 281,9A 8,8,0,0,1,
///         289,17L 289,33A 8,8,0,0,1,
///         281,41L 85,41Z"></path></g><g class="recharts-layer
/// recharts-bar-rectangle"><path x="85" y="49" width="228" height="32"
/// radius="0,8,8,0" fill="#6366f1"
/// data-fg-ddf368="1.17:17.7516:node_modules/recharts:159:15:6269:65:e:Bar::::::EHPj"
/// class="recharts-rectangle" d="M85,49L 305,49A 8,8,0,0,1,
///         313,57L 313,73A 8,8,0,0,1,
///         305,81L 85,81Z"></path></g><g class="recharts-layer
/// recharts-bar-rectangle"><path x="85" y="89" width="167.99999999999997"
/// height="32" radius="0,8,8,0" fill="#6366f1"
/// data-fg-ddf368="1.17:17.7516:node_modules/recharts:159:15:6269:65:e:Bar::::::EHPj"
/// class="recharts-rectangle" d="M85,89L 244.99999999999997,89A 8,8,0,0,1,
///         252.99999999999997,97L 252.99999999999997,113A 8,8,0,0,1,
///         244.99999999999997,121L 85,121Z"></path></g><g
/// class="recharts-layer recharts-bar-rectangle"><path x="85" y="129"
/// width="144" height="32" radius="0,8,8,0" fill="#6366f1"
/// data-fg-ddf368="1.17:17.7516:node_modules/recharts:159:15:6269:65:e:Bar::::::EHPj"
/// class="recharts-rectangle" d="M85,129L 221,129A 8,8,0,0,1,
///         229,137L 229,153A 8,8,0,0,1,
///         221,161L 85,161Z"></path></g></g></g><g
/// class="recharts-layer"></g></g></svg><div tabindex="-1"
/// class="recharts-tooltip-wrapper recharts-tooltip-wrapper-right
/// recharts-tooltip-wrapper-bottom" style="visibility: hidden;
/// pointer-events: none; position: absolute; top: 0px; left: 0px; transform:
/// translate(85px, 10px);"><div class="recharts-default-tooltip"
/// style="margin: 0px; padding: 10px; background-color: rgb(255, 255, 255);
/// border: 1px solid rgb(204, 204, 204); white-space: nowrap;"><p
/// class="recharts-tooltip-label" style="margin:
/// 0px;"></p></div></div></div></div></div><div class="bg-gradient-to-br
/// from-primary to-purple-600 rounded-3xl p-6 text-white"
/// data-fg-ddf369="1.17:17.7516:/src/app/components/Analytics.tsx:164:9:6423:623:e:motion.div:etete"
/// data-fgid-ddf369=":r9f:" style="opacity: 1; transform: none;"><h3
/// class="text-lg mb-2"
/// data-fg-ddf370="1.17:17.7516:/src/app/components/Analytics.tsx:170:11:6670:50:e:h3:t"
/// data-fgid-ddf370=":r9g:">✨ Weekly Insight</h3><p class="text-sm opacity-90
/// mb-3"
/// data-fg-ddf372="1.17:17.7516:/src/app/components/Analytics.tsx:171:11:6731:155:e:p:t"
/// data-fgid-ddf372=":r9h:">You're most productive on Thursdays!
///
/// Your energy and task completion both peak mid-week.</p><p class="text-sm
/// opacity-90"
/// data-fg-ddf374="1.17:17.7516:/src/app/components/Analytics.tsx:174:11:6897:127:e:p:t"
/// data-fgid-ddf374=":r9i:">💡 Tip: Schedule your most important tasks for
/// Thursday mornings.</p></div></div></div>
class AnalyticsStaticsWidget extends StatefulWidget {
  const AnalyticsStaticsWidget({super.key});

  static String routeName = 'AnalyticsStatics';
  static String routePath = '/analyticsStatics';

  @override
  State<AnalyticsStaticsWidget> createState() => _AnalyticsStaticsWidgetState();
}

class _AnalyticsStaticsWidgetState extends State<AnalyticsStaticsWidget> {
  late AnalyticsStaticsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalyticsStaticsModel());
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Analytics',
                                textAlign: TextAlign.start,
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
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.center).flutterValue,
                      crossAxisAlignment:
                          (FFCrossAxisAlignment.center).flutterValue,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Statistics',
                            options: FFButtonOptions(
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 30.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Monthly Report',
                              options: FFButtonOptions(
                                height: 30.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFDCDCDC),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF8B8B8B),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                            ),
                          ),
                        ),
                      ],
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
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 1.0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        wrapWithModel(
                          model: _model.statCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            icon: Icon(
                              Icons.help,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            label: 'Tasks Done',
                            value: '66',
                            trend: '+12% this week',
                            positive: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.statCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            icon: Icon(
                              Icons.help,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            label: 'Avg Energy',
                            value: '77%',
                            trend: '+5% from last week',
                            positive: true,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.statCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            icon: Icon(
                              Icons.calendar_today,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            label: 'Focus Hours',
                            value: '28',
                            trend: 'This week',
                            positive: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.statCardModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            icon: Icon(
                              Icons.trending_up,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            label: 'Best Streak',
                            value: '12',
                            trend: 'days',
                            positive: false,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Productivity Trend',
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
                                height: 200.0,
                                child: Container(
                                  height: 200.0,
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
                                          8.0,
                                          12.0,
                                          10.0,
                                          16.0,
                                          13.0,
                                          9.0,
                                          8.0
                                        ]),
                                        settings: LineChartBarData(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          barWidth: 2.0,
                                          isCurved: true,
                                        ),
                                      )
                                    ],
                                    chartStylingInfo: ChartStylingInfo(
                                      backgroundColor: Colors.transparent,
                                      showBorder: false,
                                    ),
                                    axisBounds: AxisBounds(
                                      minX: 0.0,
                                      minY: 0.0,
                                      maxX: 6.0,
                                      maxY: 19.2,
                                    ),
                                    xLabels: ([
                                      'Mon',
                                      'Tue',
                                      'Wed',
                                      'Thu',
                                      'Fri',
                                      'Sat',
                                      'Sun'
                                    ]),
                                    xAxisLabelInfo: AxisLabelInfo(
                                      showLabels: true,
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
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
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Habit Consistency',
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
                                height: 200.0,
                                child: Container(
                                  height: 200.0,
                                  child: FlutterFlowBarChart(
                                    barData: [
                                      FFBarChartData(
                                        yData: ([85.0, 95.0, 70.0, 60.0]),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      )
                                    ],
                                    xLabels: ([
                                      'Exercise',
                                      'Deep Work',
                                      'Reading',
                                      'Meditation'
                                    ]),
                                    barWidth: 20.0,
                                    barBorderRadius: BorderRadius.circular(8.0),
                                    groupSpace: 12.0,
                                    alignment: BarChartAlignment.spaceEvenly,
                                    chartStylingInfo: ChartStylingInfo(
                                      backgroundColor: Colors.transparent,
                                      showBorder: false,
                                    ),
                                    axisBounds: AxisBounds(
                                      minY: 0.0,
                                      maxX: 3.0,
                                      maxY: 114.0,
                                    ),
                                    xAxisLabelInfo: AxisLabelInfo(
                                      showLabels: true,
                                      labelTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                            lineHeight: 1.0,
                                          ),
                                      reservedSize: 20.0,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '✨ Weekly Insight',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Text(
                                'You\'re most productive on Thursdays! Your energy and task completion both peak mid-week.',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xE6FFFFFF),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              Text(
                                '💡 Tip: Schedule your most important tasks for Thursday mornings.',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xE6FFFFFF),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
              Container(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
