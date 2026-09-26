import '/components/section_header_widget.dart';
import '/components/task_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tasks_model.dart';
export 'tasks_model.dart';

/// <div dir="ltr"
/// data-fg-m4g1="17.13:17.13022:/src/app/components/LanguageContext.tsx:207:7:12710:65:e:div:c"
/// data-fgid-m4g1=":r2:" class="h2d-dbedb710"><div class="h-screen max-w-md
/// mx-auto bg-background relative h2d-d5376646"
/// data-fg-d3bl19="0.8:17.234:/src/app/App.tsx:73:7:2320:187:e:div:xte"
/// data-fgid-d3bl19=":r3:"><div class="flex flex-col h-full bg-background
/// h2d-c419290c"
/// data-fg-b6sh0="1.29:17.4358:/src/app/components/Tasks.tsx:87:5:2583:6444:e:div:etetete:1"
/// data-fgid-b6sh0=":r5g:" data-fg-callsite-d3bl1=""><div class="p-6 border-b
/// border-border h2d-c19ae7eb"
/// data-fg-b6sh1="1.29:17.4358:/src/app/components/Tasks.tsx:88:7:2642:463:e:div:ete"
/// data-fgid-b6sh1=":r5h:"><h1 class="text-2xl mb-4 h2d-1198f699"
/// data-fg-b6sh2="1.29:17.4358:/src/app/components/Tasks.tsx:89:9:2695:53:e:h1:x"
/// data-fgid-b6sh2=":r5i:">Tasks</h1><div class="relative h2d-2985b96"
/// data-fg-b6sh4="1.29:17.4358:/src/app/components/Tasks.tsx:90:9:2757:335:e:div:ete"
/// data-fgid-b6sh4=":r5j:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-search absolute left-3 top-1/2 -translate-y-1/2 w-5
/// h-5 text-muted-foreground h2d-5c13963a"
/// data-fg-b6sh5="1.29:17.4358:node_modules/lucide-react:91:11:2794:93:e:Search::::::B9rK"
/// data-fgid-b6sh5=":r5k:"><circle cx="11" cy="11" r="8"></circle><path
/// d="m21 21-4.3-4.3"></path></svg><input type="text" placeholder="Search
/// tasks..." class="w-full bg-input-background rounded-2xl pl-10 pr-4 py-3
/// outline-none h2d-af55580c"
/// data-fg-b6sh6="1.29:17.4358:/src/app/components/Tasks.tsx:92:11:2898:179:e:input"
/// data-fgid-b6sh6=":r5l:" __h2d_shadowroot="30"></div></div><div
/// class="flex-1 overflow-y-auto pb-24 h2d-f80dc3bb"
/// data-fg-b6sh7="1.29:17.4358:/src/app/components/Tasks.tsx:100:7:3113:5390:e:div:etx"
/// data-fgid-b6sh7=":r5m:"><div class="p-6 pb-0 h2d-471820f3"
/// data-fg-b6sh8="1.29:17.4358:/src/app/components/Tasks.tsx:101:9:3168:503:e:div:e"
/// data-fgid-b6sh8=":r5n:"><button class="w-full bg-card border-2
/// border-dashed border-primary/30 rounded-2xl p-4 flex items-center
/// justify-center gap-2 text-primary hover:bg-primary/5 transition-colors
/// h2d-58a527ef"
/// data-fg-b6sh9="1.29:17.4358:/src/app/components/Tasks.tsx:102:11:3205:451:e:motion.button:ete"
/// data-fgid-b6sh9=":r5o:" tabindex="0" style="opacity: 1; transform:
/// none;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
/// viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-plus
/// w-5 h-5 h2d-ac57a49e"
/// data-fg-b6sh10="1.29:17.4358:node_modules/lucide-react:108:13:3556:28:e:Plus::::::ISW"
/// data-fgid-b6sh10=":r5p:"><path d="M5 12h14"></path><path d="M12
/// 5v14"></path></svg><span
/// data-fg-b6sh11="1.29:17.4358:/src/app/components/Tasks.tsx:109:13:3597:32:e:span:x"
/// data-fgid-b6sh11=":r5q:" class="h2d-57c2dd11">Add New
/// Task</span></button></div><div class="p-6 h2d-df86e679"
/// data-fg-b6sh14="1.29:17.4358:/src/app/components/Tasks.tsx:118:13:3883:4582:e:div:ete"
/// data-fgid-b6sh14=":r5r:"><div class="flex items-center gap-2 mb-3
/// h2d-82bc2737"
/// data-fg-b6sh15="1.29:17.4358:/src/app/components/Tasks.tsx:119:15:3941:330:e:div:etete"
/// data-fgid-b6sh15=":r5s:"><div class="w-3 h-3 rounded-full bg-red-500
/// h2d-5fa7ac38"
/// data-fg-b6sh16="1.29:17.4358:/src/app/components/Tasks.tsx:120:17:4004:67:e:div"
/// data-fgid-b6sh16=":r5t:"></div><h2 class="text-sm text-muted-foreground
/// h2d-d5eaaec9"
/// data-fg-b6sh17="1.29:17.4358:/src/app/components/Tasks.tsx:121:17:4088:66:e:h2:x"
/// data-fgid-b6sh17=":r5u:">High Focus</h2><span class="text-xs
/// text-muted-foreground h2d-213ddb64"
/// data-fg-b6sh19="1.29:17.4358:/src/app/components/Tasks.tsx:122:17:4171:79:e:span:txt"
/// data-fgid-b6sh19=":r5v:">(2)</span></div><div class="space-y-2
/// h2d-9d0e5cd6"
/// data-fg-b6sh23="1.29:17.4358:/src/app/components/Tasks.tsx:124:15:4286:4160:e:div:x"
/// data-fgid-b6sh23=":r60:"><div class="bg-card border border-border
/// rounded-2xl overflow-hidden h2d-854fb577"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r61:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-8eb3c36f"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r62:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0
/// border-muted-foreground h2d-565947b"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r63:"></button><div class="flex-1 min-w-0 h2d-80b9dfec"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r64:"><p class="text-sm h2d-28dd7d16"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r65:">Complete project proposal</p><p class="text-xs
/// text-muted-foreground mt-1 h2d-a4bf205c"
/// data-fg-b6sh34="1.29:17.4358:/src/app/components/Tasks.tsx:149:27:5641:204:e:p:xtxtx"
/// data-fgid-b6sh34=":r66:">2/4 subtasks</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-42e9314"
/// data-fg-b6sh40="1.29:17.4358:/src/app/components/Tasks.tsx:155:25:5996:442:e:button:x"
/// data-fgid-b6sh40=":r67:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-chevron-right w-4 h-4
/// h2d-e4b0c0fd"
/// data-fg-b6sh43="1.29:17.4358:node_modules/lucide-react:162:29:6339:36:e:ChevronRight::::::ByYJ"
/// data-fgid-b6sh43=":r68:"><path d="m9 18
/// 6-6-6-6"></path></svg></button><button class="text-muted-foreground
/// flex-shrink-0 h2d-efbc6fd8"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r69:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-516c4feb"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r6a:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div><div class="bg-card border
/// border-border rounded-2xl overflow-hidden h2d-66d73e9e"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r6c:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-276a2b24"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r6d:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0
/// border-muted-foreground h2d-eb485145"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r6e:"></button><div class="flex-1 min-w-0 h2d-38704e71"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r6f:"><p class="text-sm h2d-b9620358"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r6g:">Prepare presentation slides</p><p class="text-xs
/// text-muted-foreground mt-1 h2d-1bce6967"
/// data-fg-b6sh34="1.29:17.4358:/src/app/components/Tasks.tsx:149:27:5641:204:e:p:xtxtx"
/// data-fgid-b6sh34=":r6h:">1/3 subtasks</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-4c2c9afb"
/// data-fg-b6sh40="1.29:17.4358:/src/app/components/Tasks.tsx:155:25:5996:442:e:button:x"
/// data-fgid-b6sh40=":r6i:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-chevron-right w-4 h-4
/// h2d-2f63ffd1"
/// data-fg-b6sh43="1.29:17.4358:node_modules/lucide-react:162:29:6339:36:e:ChevronRight::::::ByYJ"
/// data-fgid-b6sh43=":r6j:"><path d="m9 18
/// 6-6-6-6"></path></svg></button><button class="text-muted-foreground
/// flex-shrink-0 h2d-77c7232a"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r6k:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-3b79cb26"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r6l:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div></div></div><div class="p-6
/// h2d-d85c27b2"
/// data-fg-b6sh14="1.29:17.4358:/src/app/components/Tasks.tsx:118:13:3883:4582:e:div:ete"
/// data-fgid-b6sh14=":r6n:"><div class="flex items-center gap-2 mb-3
/// h2d-5cfd653c"
/// data-fg-b6sh15="1.29:17.4358:/src/app/components/Tasks.tsx:119:15:3941:330:e:div:etete"
/// data-fgid-b6sh15=":r6o:"><div class="w-3 h-3 rounded-full bg-yellow-500
/// h2d-d7004b49"
/// data-fg-b6sh16="1.29:17.4358:/src/app/components/Tasks.tsx:120:17:4004:67:e:div"
/// data-fgid-b6sh16=":r6p:"></div><h2 class="text-sm text-muted-foreground
/// h2d-c54c5b7a"
/// data-fg-b6sh17="1.29:17.4358:/src/app/components/Tasks.tsx:121:17:4088:66:e:h2:x"
/// data-fgid-b6sh17=":r6q:">Medium Effort</h2><span class="text-xs
/// text-muted-foreground h2d-d053572a"
/// data-fg-b6sh19="1.29:17.4358:/src/app/components/Tasks.tsx:122:17:4171:79:e:span:txt"
/// data-fgid-b6sh19=":r6r:">(2)</span></div><div class="space-y-2
/// h2d-1a815afb"
/// data-fg-b6sh23="1.29:17.4358:/src/app/components/Tasks.tsx:124:15:4286:4160:e:div:x"
/// data-fgid-b6sh23=":r6s:"><div class="bg-card border border-border
/// rounded-2xl overflow-hidden h2d-f0ea14f1"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r6t:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-b18f7b06"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r6u:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0
/// border-muted-foreground h2d-4c7fbb6a"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r6v:"></button><div class="flex-1 min-w-0 h2d-17b4795f"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r70:"><p class="text-sm h2d-2696c64"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r71:">Review code changes</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-f4b146b9"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r72:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-4308e273"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r73:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div><div class="bg-card border
/// border-border rounded-2xl overflow-hidden h2d-ac0716ed"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r75:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-81b5d47a"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r76:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0
/// border-muted-foreground h2d-5e73324b"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r77:"></button><div class="flex-1 min-w-0 h2d-7d8d8112"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r78:"><p class="text-sm h2d-ce11cd72"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r79:">Team meeting notes</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-4ab8bacc"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r7a:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-13ebc55d"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r7b:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div></div></div><div class="p-6
/// h2d-ad8a3966"
/// data-fg-b6sh14="1.29:17.4358:/src/app/components/Tasks.tsx:118:13:3883:4582:e:div:ete"
/// data-fgid-b6sh14=":r7d:"><div class="flex items-center gap-2 mb-3
/// h2d-776b6bdc"
/// data-fg-b6sh15="1.29:17.4358:/src/app/components/Tasks.tsx:119:15:3941:330:e:div:etete"
/// data-fgid-b6sh15=":r7e:"><div class="w-3 h-3 rounded-full bg-green-500
/// h2d-a11bcad0"
/// data-fg-b6sh16="1.29:17.4358:/src/app/components/Tasks.tsx:120:17:4004:67:e:div"
/// data-fgid-b6sh16=":r7f:"></div><h2 class="text-sm text-muted-foreground
/// h2d-f5c7fcf2"
/// data-fg-b6sh17="1.29:17.4358:/src/app/components/Tasks.tsx:121:17:4088:66:e:h2:x"
/// data-fgid-b6sh17=":r7g:">Low Effort</h2><span class="text-xs
/// text-muted-foreground h2d-2a69b773"
/// data-fg-b6sh19="1.29:17.4358:/src/app/components/Tasks.tsx:122:17:4171:79:e:span:txt"
/// data-fgid-b6sh19=":r7h:">(2)</span></div><div class="space-y-2
/// h2d-b9d1ce1"
/// data-fg-b6sh23="1.29:17.4358:/src/app/components/Tasks.tsx:124:15:4286:4160:e:div:x"
/// data-fgid-b6sh23=":r7i:"><div class="bg-card border border-border
/// rounded-2xl overflow-hidden h2d-6858ad0f"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r7j:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-87bb82e3"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r7k:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0 bg-primary
/// border-primary h2d-49ec1d37"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r7l:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-check w-4 h-4 text-white
/// h2d-8fa74fe2"
/// data-fg-b6sh29="1.29:17.4358:node_modules/lucide-react:142:44:5234:40:e:Check::::::Dijm"
/// data-fgid-b6sh29=":r7m:"><path d="M20 6 9
/// 17l-5-5"></path></svg></button><div class="flex-1 min-w-0 h2d-7d2fa8ac"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r7n:"><p class="text-sm line-through
/// text-muted-foreground h2d-f1a58bf"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r7o:">Reply to emails</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-510c8ef"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r7p:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-551ffff8"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r7q:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div><div class="bg-card border
/// border-border rounded-2xl overflow-hidden h2d-bd8dc19c"
/// data-fg-b6sh25="1.29:17.4358:/src/app/components/Tasks.tsx:126:19:4382:4023:e:motion.div:ete"
/// data-fgid-b6sh25=":r7s:" style="opacity: 1; transform: none;"><div
/// class="p-4 flex items-center gap-3 h2d-fd2363e5"
/// data-fg-b6sh26="1.29:17.4358:/src/app/components/Tasks.tsx:133:21:4714:1948:e:div:etetxte"
/// data-fgid-b6sh26=":r7t:"><button class="w-6 h-6 rounded-full border-2 flex
/// items-center justify-center transition-colors flex-shrink-0
/// border-muted-foreground h2d-9dba7751"
/// data-fg-b6sh27="1.29:17.4358:/src/app/components/Tasks.tsx:134:23:4782:525:e:button:x"
/// data-fgid-b6sh27=":r7u:"></button><div class="flex-1 min-w-0 h2d-1570e37"
/// data-fg-b6sh30="1.29:17.4358:/src/app/components/Tasks.tsx:144:23:5330:571:e:div:etx"
/// data-fgid-b6sh30=":r7v:"><p class="text-sm h2d-b49df64d"
/// data-fg-b6sh31="1.29:17.4358:/src/app/components/Tasks.tsx:145:25:5387:155:e:p:x"
/// data-fgid-b6sh31=":r80:">Update documentation</p></div><button
/// class="text-muted-foreground flex-shrink-0 h2d-7e61e507"
/// data-fg-b6sh44="1.29:17.4358:/src/app/components/Tasks.tsx:166:23:6486:149:e:button:e"
/// data-fgid-b6sh44=":r81:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-ellipsis-vertical w-4 h-4
/// h2d-c6f354de"
/// data-fg-b6sh45="1.29:17.4358:node_modules/lucide-react:167:25:6567:36:e:MoreVertical::::::CAdt"
/// data-fgid-b6sh45=":r82:"><circle cx="12" cy="12" r="1"></circle><circle
/// cx="12" cy="5" r="1"></circle><circle cx="12" cy="19"
/// r="1"></circle></svg></button></div></div></div></div></div><button
/// class="fixed bottom-24 right-6 w-14 h-14 bg-primary rounded-full flex
/// items-center justify-center shadow-lg h2d-b666b718"
/// data-fg-b6sh57="1.29:17.4358:/src/app/components/Tasks.tsx:209:7:8511:248:e:motion.button:e"
/// data-fgid-b6sh57=":r84:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-plus
/// w-6 h-6 text-white h2d-e92baacc"
/// data-fg-b6sh58="1.29:17.4358:node_modules/lucide-react:213:9:8697:39:e:Plus::::::ISW"
/// data-fgid-b6sh58=":r85:"><path d="M5 12h14"></path><path d="M12
/// 5v14"></path></svg></button><button class="fixed bottom-24 left-6 w-14
/// h-14 bg-purple-600 rounded-full flex items-center justify-center shadow-lg
/// h2d-a3e2161b"
/// data-fg-b6sh59="1.29:17.4358:/src/app/components/Tasks.tsx:216:7:8767:249:e:motion.button:e"
/// data-fgid-b6sh59=":r86:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-mic
/// w-6 h-6 text-white h2d-69d9d578"
/// data-fg-b6sh60="1.29:17.4358:node_modules/lucide-react:220:9:8955:38:e:Mic::::::ELnR"
/// data-fgid-b6sh60=":r87:"><path d="M12 2a3 3 0 0 0-3 3v7a3 3 0 0 0 6 0V5a3
/// 3 0 0 0-3-3Z"></path><path d="M19 10v2a7 7 0 0 1-14 0v-2"></path><line
/// x1="12" x2="12" y1="19" y2="22"></line></svg></button></div><div
/// class="fixed bottom-0 left-0 right-0 bg-card border-t border-border
/// h2d-caeea3b5"
/// data-fg-h9b0="1.25:17.134:/src/app/components/Navigation.tsx:22:5:733:1417:e:div:e:1"
/// data-fgid-h9b0=":r4t:" data-fg-callsite-d3bl21=""><div class="max-w-md
/// mx-auto px-2 py-2 h2d-2a172747"
/// data-fg-h9b1="1.25:17.134:/src/app/components/Navigation.tsx:23:7:818:1321:e:div:e"
/// data-fgid-h9b1=":r4u:"><div class="flex items-center justify-around
/// h2d-87732fb9"
/// data-fg-h9b2="1.25:17.134:/src/app/components/Navigation.tsx:24:9:871:1255:e:div:x"
/// data-fgid-h9b2=":r4v:"><button class="relative flex flex-col items-center
/// gap-1 px-4 py-2 rounded-2xl transition-colors h2d-ae493383"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r50:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-house w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground h2d-8703a4f7"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r52:"><path d="M15 21v-8a1 1 0 0 0-1-1h-4a1 1 0 0 0-1
/// 1v8"></path><path d="M3 10a2 2 0 0 1 .709-1.528l7-5.999a2 2 0 0 1 2.582
/// 0l7 5.999A2 2 0 0 1 21 10v9a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2z"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground h2d-c1f23f1"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r53:">Home</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors
/// h2d-4e368d53"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r54:"><div class="absolute inset-0 bg-primary/10
/// rounded-2xl h2d-eb6577ca"
/// data-fg-h9b6="1.25:17.134:/src/app/components/Navigation.tsx:36:19:1342:228:e:motion.div"
/// data-fgid-h9b6=":r88:" style="transform: none; transform-origin: 50% 50%
/// 0px;"></div><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
/// viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-square-check-big w-5 h-5 relative z-10 transition-colors
/// text-primary h2d-c44133bb"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r55:"><path d="M21 10.5V19a2 2 0 0 1-2 2H5a2 2 0 0
/// 1-2-2V5a2 2 0 0 1 2-2h12.5"></path><path d="m9 11 3 3L22
/// 4"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-primary h2d-1c355a08"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r56:">Tasks</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors
/// h2d-a59c9028"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r57:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-chart-column w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground h2d-918b82c1"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r58:"><path d="M3 3v16a2 2 0 0 0 2 2h16"></path><path
/// d="M18 17V9"></path><path d="M13 17V5"></path><path d="M8
/// 17v-3"></path></svg><span class="text-xs relative z-10 transition-colors
/// text-muted-foreground h2d-3f8cc530"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r59:">Analytics</span></button><button class="relative
/// flex flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors
/// h2d-ac07e1fb"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r5a:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-book-open w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground h2d-5b87935e"
/// data-fg-h9b7="1.25:17.134:/src/app/components/Navigation.tsx:42:17:1606:191:e:Icon"
/// data-fgid-h9b7=":r5b:"><path d="M12 7v14"></path><path d="M3 18a1 1 0 0
/// 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1
/// 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"></path></svg><span
/// class="text-xs relative z-10 transition-colors text-muted-foreground
/// h2d-3129d373"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r5c:">Journal</span></button><button class="relative flex
/// flex-col items-center gap-1 px-4 py-2 rounded-2xl transition-colors
/// h2d-fc7fb657"
/// data-fg-h9b4="1.25:17.134:/src/app/components/Navigation.tsx:30:15:1079:1003:e:button:xtete"
/// data-fgid-h9b4=":r5d:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-settings w-5 h-5 relative z-10 transition-colors
/// text-muted-foreground h2d-f526f82e"
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
/// text-muted-foreground h2d-34462754"
/// data-fg-h9b8="1.25:17.134:/src/app/components/Navigation.tsx:47:17:1814:244:e:span:x"
/// data-fgid-h9b8=":r5f:">Settings</span></button></div></div></div></div></div>
class TasksWidget extends StatefulWidget {
  const TasksWidget({super.key});

  static String routeName = 'Tasks';
  static String routePath = '/tasks';

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  late TasksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TasksModel());
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Tasks',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ],
                        ),
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
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: Color(0x0D4B39EF),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x4D4B39EF),
                                    width: 2.0,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    Text(
                                      'Add New Task',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      dotColor:
                                          FlutterFlowTheme.of(context).error,
                                      label: 'High Focus',
                                      count: '2',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.taskCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TaskCardWidget(
                                      isDone: false,
                                      title: 'Complete project proposal',
                                      subtitle: '2/4 subtasks',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.taskCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TaskCardWidget(
                                      isDone: false,
                                      title: 'Prepare presentation slides',
                                      subtitle: '1/3 subtasks',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      dotColor:
                                          FlutterFlowTheme.of(context).warning,
                                      label: 'Medium Effort',
                                      count: '2',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.taskCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TaskCardWidget(
                                      isDone: false,
                                      title: 'Review code changes',
                                      subtitle: '',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.taskCardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TaskCardWidget(
                                      isDone: false,
                                      title: 'Team meeting notes',
                                      subtitle: '',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  wrapWithModel(
                                    model: _model.sectionHeaderModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SectionHeaderWidget(
                                      dotColor:
                                          FlutterFlowTheme.of(context).success,
                                      label: 'Low Effort',
                                      count: '2',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9333EA),
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.mic_rounded,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                210.0, 0.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.add_rounded,
                                      color: Colors.white,
                                      size: 28.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        child: Container(
                          decoration: BoxDecoration(),
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
