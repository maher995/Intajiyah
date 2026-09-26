import '/components/timer_display_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'focus_session_model.dart';
export 'focus_session_model.dart';

/// <div dir="ltr"
/// data-fg-m4g1="17.13:17.13022:/src/app/components/LanguageContext.tsx:207:7:12710:65:e:div:c"
/// data-fgid-m4g1=":r2:"><div class="h-screen max-w-md mx-auto bg-background
/// relative"
/// data-fg-d3bl19="0.8:17.234:/src/app/App.tsx:73:7:2320:187:e:div:xte"
/// data-fgid-d3bl19=":r3:"><div class="flex flex-col h-full bg-gradient-to-b
/// from-primary/5 to-purple-100/20 dark:from-primary/10
/// dark:to-purple-900/20"
/// data-fg-c28f0="1.21:1.5298:/src/app/components/FocusSession.tsx:41:5:1221:4070:e:div:etete:1"
/// data-fgid-c28f0=":r5g:" data-fg-callsite-d3bl4=""><div class="p-6 flex
/// items-center justify-between"
/// data-fg-c28f1="1.21:1.5298:/src/app/components/FocusSession.tsx:42:7:1358:316:e:div:ete"
/// data-fgid-c28f1=":r5h:"><h1 class="text-xl"
/// data-fg-c28f2="1.21:1.5298:/src/app/components/FocusSession.tsx:43:9:1422:42:e:h1:t"
/// data-fgid-c28f2=":r5i:">Focus Session</h1><button class="w-10 h-10
/// rounded-full bg-card border border-border flex items-center
/// justify-center"
/// data-fg-c28f4="1.21:1.5298:/src/app/components/FocusSession.tsx:44:9:1473:188:e:button:e"
/// data-fgid-c28f4=":r5j:"><svg xmlns="http://www.w3.org/2000/svg" width="24"
/// height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
/// stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
/// class="lucide lucide-settings w-5 h-5 text-muted-foreground"
/// data-fg-c28f5="1.21:1.5298:node_modules/lucide-react:45:11:1589:54:e:Settings::::::D4nh"
/// data-fgid-c28f5=":r5k:"><path d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0
/// 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0
/// 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0
/// 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1
/// 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2
/// 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0
/// 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0
/// 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2
/// 0 0 1-1-1.73V4a2 2 0 0 0-2-2z"></path><circle cx="12" cy="12"
/// r="3"></circle></svg></button></div><div class="flex-1 flex flex-col
/// items-center justify-center px-8"
/// data-fg-c28f6="1.21:1.5298:/src/app/components/FocusSession.tsx:49:7:1682:3315:e:div:etete"
/// data-fgid-c28f6=":r5l:"><div class="mb-8"
/// data-fg-c28f7="1.21:1.5298:/src/app/components/FocusSession.tsx:50:9:1762:1515:e:motion.div:e"
/// data-fgid-c28f7=":r5m:" style="transform: none;"><div class="relative w-72
/// h-72"
/// data-fg-c28f8="1.21:1.5298:/src/app/components/FocusSession.tsx:55:11:1952:1303:e:div:ete"
/// data-fgid-c28f8=":r5n:"><svg class="w-full h-full -rotate-90"
/// data-fg-c28f9="1.21:1.5298:/src/app/components/FocusSession.tsx:56:13:2001:825:e:svg:ete"
/// data-fgid-c28f9=":r5o:"><circle cx="144" cy="144" r="136" fill="none"
/// stroke="currentColor" stroke-width="8" class="text-border"
/// data-fg-c28f10="1.21:1.5298:/src/app/components/FocusSession.tsx:57:15:2058:236:e:circle"></circle><circle
/// cx="144" cy="144" r="136" fill="none" stroke="currentColor"
/// stroke-width="8" stroke-linecap="round" class="text-primary"
/// data-fg-c28f11="1.21:1.5298:/src/app/components/FocusSession.tsx:66:15:2309:498:e:motion.circle"
/// data-fgid-c28f11=":r5p:" stroke-dasharray="0 854"></circle></svg><div
/// class="absolute inset-0 flex flex-col items-center justify-center"
/// data-fg-c28f12="1.21:1.5298:/src/app/components/FocusSession.tsx:82:13:2839:399:e:div:ete"
/// data-fgid-c28f12=":r5q:"><div class="text-6xl mb-2"
/// data-fg-c28f13="1.21:1.5298:/src/app/components/FocusSession.tsx:83:15:2930:138:e:div:xtx"
/// data-fgid-c28f13=":r5r:">25:00</div><p class="text-sm
/// text-muted-foreground"
/// data-fg-c28f17="1.21:1.5298:/src/app/components/FocusSession.tsx:86:15:3083:136:e:p:x"
/// data-fgid-c28f17=":r5s:">Focus Time</p></div></div></div><div class="flex
/// gap-4 mb-8"
/// data-fg-c28f19="1.21:1.5298:/src/app/components/FocusSession.tsx:93:9:3287:760:e:div:ete"
/// data-fgid-c28f19=":r5t:"><button class="w-16 h-16 bg-primary rounded-full
/// flex items-center justify-center shadow-lg"
/// data-fg-c28f20="1.21:1.5298:/src/app/components/FocusSession.tsx:94:11:3331:416:e:motion.button:x"
/// data-fgid-c28f20=":r5u:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-play
/// w-7 h-7 text-white ml-1"
/// data-fg-c28f23="1.21:1.5298:node_modules/lucide-react:102:15:3661:44:e:Play::::::IIc"
/// data-fgid-c28f23=":r5v:"><polygon points="6 3 20 12 6 21 6
/// 3"></polygon></svg></button><button class="w-16 h-16 bg-card border
/// border-border rounded-full flex items-center justify-center"
/// data-fg-c28f24="1.21:1.5298:/src/app/components/FocusSession.tsx:105:11:3758:274:e:motion.button:e"
/// data-fgid-c28f24=":r60:" tabindex="0"><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-rotate-ccw w-6 h-6"
/// data-fg-c28f25="1.21:1.5298:node_modules/lucide-react:110:13:3972:33:e:RotateCcw::::::D1GU"
/// data-fgid-c28f25=":r61:"><path d="M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74
/// 2.74L3 8"></path><path d="M3 3v5h5"></path></svg></button></div><div
/// class="flex gap-2"
/// data-fg-c28f26="1.21:1.5298:/src/app/components/FocusSession.tsx:114:9:4057:927:e:div:ete"
/// data-fgid-c28f26=":r62:"><button class="px-6 py-2 rounded-full text-sm
/// transition-colors bg-primary text-white"
/// data-fg-c28f27="1.21:1.5298:/src/app/components/FocusSession.tsx:115:11:4096:432:e:button:t"
/// data-fgid-c28f27=":r63:">25 min</button><button class="px-6 py-2
/// rounded-full text-sm transition-colors bg-card border border-border"
/// data-fg-c28f29="1.21:1.5298:/src/app/components/FocusSession.tsx:129:11:4539:430:e:button:t"
/// data-fgid-c28f29=":r64:">5 min</button></div></div><div class="p-6"
/// data-fg-c28f31="1.21:1.5298:/src/app/components/FocusSession.tsx:146:7:5005:275:e:div:e"
/// data-fgid-c28f31=":r65:"><div class="bg-card border border-border
/// rounded-2xl p-4"
/// data-fg-c28f32="1.21:1.5298:/src/app/components/FocusSession.tsx:147:9:5035:232:e:div:e"
/// data-fgid-c28f32=":r66:"><p class="text-sm text-center
/// text-muted-foreground"
/// data-fg-c28f33="1.21:1.5298:/src/app/components/FocusSession.tsx:148:11:5108:144:e:p:t"
/// data-fgid-c28f33=":r67:">Stay focused and avoid distractions.
///
/// You're doing great! 🎯</p></div></div></div><div class="fixed bottom-0
/// left-0 right-0 bg-card border-t border-border"
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
class FocusSessionWidget extends StatefulWidget {
  const FocusSessionWidget({super.key});

  static String routeName = 'FocusSession';
  static String routePath = '/focusSession';

  @override
  State<FocusSessionWidget> createState() => _FocusSessionWidgetState();
}

class _FocusSessionWidgetState extends State<FocusSessionWidget> {
  late FocusSessionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FocusSessionModel());
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
                color: Colors.transparent,
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 24.0, 32.0, 24.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Focus Session',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 9999.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ),
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
                        padding: EdgeInsets.all(32.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.timerDisplayModel,
                                updateCallback: () => safeSetState(() {}),
                                child: TimerDisplayWidget(
                                  progress: 0.0,
                                  time: '25:00',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                  ),
                                  Container(
                                    width: 64.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.rotate_left_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 24.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 25.0, 0.0, 0.0),
                                      child: Text(
                                        '25 min',
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
                                              color: Colors.white,
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
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 25.0, 0.0, 0.0),
                                      child: Text(
                                        '5 min',
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
                                              color: Colors.black,
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
                                            ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
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
                                    child: Text(
                                      'Stay focused and avoid distractions. You\'re doing great! 🎯',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
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
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 32.0)),
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
