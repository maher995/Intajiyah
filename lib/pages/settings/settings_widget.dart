import '/auth/firebase_auth/auth_util.dart';
import '/components/setting_row_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_model.dart';
export 'settings_model.dart';

/// <div class="flex flex-col h-full bg-background overflow-y-auto pb-24"
/// data-fg-bjgw0="1.28:17.670:/src/app/components/Settings.tsx:17:5:541:5390:e:div:ete:1"
/// data-fgid-bjgw0=":r7p:" data-fg-callsite-d3bl10=""><div class="p-6
/// border-b border-border"
/// data-fg-bjgw1="1.28:17.670:/src/app/components/Settings.tsx:18:7:622:117:e:div:e"
/// data-fgid-bjgw1=":r7q:"><h1 class="text-2xl"
/// data-fg-bjgw2="1.28:17.670:/src/app/components/Settings.tsx:19:9:675:51:e:h1:x"
/// data-fgid-bjgw2=":r7r:">Settings</h1></div><div class="p-6 space-y-6"
/// data-fg-bjgw4="1.28:17.670:/src/app/components/Settings.tsx:22:7:747:5173:e:div:etetetete"
/// data-fgid-bjgw4=":r7s:"><div class="bg-card border border-border
/// rounded-3xl p-6 flex items-center gap-4"
/// data-fg-bjgw5="1.28:17.670:/src/app/components/Settings.tsx:23:9:787:699:e:motion.div:etete"
/// data-fgid-bjgw5=":r7t:" style="opacity: 1; transform: none;"><div
/// class="w-16 h-16 bg-gradient-to-br from-primary to-purple-600 rounded-full
/// flex items-center justify-center text-white text-2xl"
/// data-fg-bjgw6="1.28:17.670:/src/app/components/Settings.tsx:28:11:993:170:e:div:t"
/// data-fgid-bjgw6=":r7u:">AS</div><div class="flex-1"
/// data-fg-bjgw8="1.28:17.670:/src/app/components/Settings.tsx:31:11:1174:180:e:div:ete"
/// data-fgid-bjgw8=":r7v:"><h2 class="text-lg mb-1"
/// data-fg-bjgw9="1.28:17.670:/src/app/components/Settings.tsx:32:13:1211:44:e:h2:t"
/// data-fgid-bjgw9=":r80:">Alex Smith</h2><p class="text-sm
/// text-muted-foreground"
/// data-fg-bjgw11="1.28:17.670:/src/app/components/Settings.tsx:33:13:1268:69:e:p:t"
/// data-fgid-bjgw11=":r81:">alex.smith@email.com</p></div><button
/// data-fg-bjgw13="1.28:17.670:/src/app/components/Settings.tsx:35:11:1365:99:e:button:e"
/// data-fgid-bjgw13=":r82:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-chevron-right w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw14="1.28:17.670:node_modules/lucide-react:36:13:1386:58:e:ChevronRight::::::ByYJ"
/// data-fgid-bjgw14=":r83:"><path d="m9 18
/// 6-6-6-6"></path></svg></button></div><div
/// data-fg-bjgw15="1.28:17.670:/src/app/components/Settings.tsx:40:9:1496:2474:e:div:ete"
/// data-fgid-bjgw15=":r84:"><h2 class="text-sm text-muted-foreground mb-3
/// px-2"
/// data-fg-bjgw16="1.28:17.670:/src/app/components/Settings.tsx:41:11:1512:88:e:h2:x"
/// data-fgid-bjgw16=":r85:">Preferences</h2><div class="bg-card border
/// border-border rounded-2xl divide-y divide-border"
/// data-fg-bjgw18="1.28:17.670:/src/app/components/Settings.tsx:42:11:1611:2344:e:motion.div:etete"
/// data-fgid-bjgw18=":r86:" style="opacity: 1; transform: none;"><button
/// class="w-full p-4 flex items-center gap-3 hover:bg-accent/10
/// transition-colors"
/// data-fg-bjgw19="1.28:17.670:/src/app/components/Settings.tsx:48:13:1862:763:e:button:etete"
/// data-fgid-bjgw19=":r87:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-moon w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw20="1.28:17.670:node_modules/lucide-react:52:15:2035:50:e:Moon::::::D73T"
/// data-fgid-bjgw20=":r88:"><path d="M12 3a6 6 0 0 0 9 9 9 9 0 1
/// 1-9-9Z"></path></svg><span class="flex-1 text-left"
/// data-fg-bjgw21="1.28:17.670:/src/app/components/Settings.tsx:53:15:2100:66:e:span:x"
/// data-fgid-bjgw21=":r89:">Dark Mode</span><div class="w-12 h-7 rounded-full
/// transition-colors relative bg-muted"
/// data-fg-bjgw23="1.28:17.670:/src/app/components/Settings.tsx:54:15:2181:422:e:div:e"
/// data-fgid-bjgw23=":r8a:"><div class="absolute top-1 w-5 h-5 rounded-full
/// bg-white transition-transform translate-x-1"
/// data-fg-bjgw24="1.28:17.670:/src/app/components/Settings.tsx:59:17:2373:209:e:div"
/// data-fgid-bjgw24=":r8b:"></div></div></button><button class="w-full p-4
/// flex items-center gap-3 hover:bg-accent/10 transition-colors"
/// data-fg-bjgw25="1.28:17.670:/src/app/components/Settings.tsx:67:13:2639:802:e:button:etete"
/// data-fgid-bjgw25=":r8c:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-bell w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw26="1.28:17.670:node_modules/lucide-react:71:15:2836:50:e:Bell::::::CiHR"
/// data-fgid-bjgw26=":r8d:"><path d="M10.268 21a2 2 0 0 0 3.464
/// 0"></path><path d="M3.262 15.326A1 1 0 0 0 4 17h16a1 1 0 0 0
/// .74-1.673C19.41 13.956 18 12.499 18 8A6 6 0 0 0 6 8c0 4.499-1.411
/// 5.956-2.738 7.326"></path></svg><span class="flex-1 text-left"
/// data-fg-bjgw27="1.28:17.670:/src/app/components/Settings.tsx:72:15:2901:71:e:span:x"
/// data-fgid-bjgw27=":r8e:">Notifications</span><div class="w-12 h-7
/// rounded-full transition-colors relative bg-primary"
/// data-fg-bjgw29="1.28:17.670:/src/app/components/Settings.tsx:73:15:2987:432:e:div:e"
/// data-fgid-bjgw29=":r8f:"><div class="absolute top-1 w-5 h-5 rounded-full
/// bg-white transition-transform translate-x-6"
/// data-fg-bjgw30="1.28:17.670:/src/app/components/Settings.tsx:78:17:3184:214:e:div"
/// data-fgid-bjgw30=":r8g:"></div></div></button><button class="w-full p-4
/// flex items-center gap-3 hover:bg-accent/10 transition-colors"
/// data-fg-bjgw31="1.28:17.670:/src/app/components/Settings.tsx:86:13:3455:476:e:button:etete"
/// data-fgid-bjgw31=":r8h:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-globe w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw32="1.28:17.670:node_modules/lucide-react:90:15:3664:51:e:Globe::::::Cyd3"
/// data-fgid-bjgw32=":r8i:"><circle cx="12" cy="12" r="10"></circle><path
/// d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"></path><path d="M2
/// 12h20"></path></svg><span class="flex-1 text-left"
/// data-fg-bjgw33="1.28:17.670:/src/app/components/Settings.tsx:91:15:3730:66:e:span:x"
/// data-fgid-bjgw33=":r8j:">Language</span><span class="text-sm
/// text-muted-foreground"
/// data-fg-bjgw35="1.28:17.670:/src/app/components/Settings.tsx:92:15:3811:98:e:span:x"
/// data-fgid-bjgw35=":r8k:">English</span></button></div></div><div
/// data-fg-bjgw37="1.28:17.670:/src/app/components/Settings.tsx:97:9:3980:768:e:div:ete"
/// data-fgid-bjgw37=":r8l:"><h2 class="text-sm text-muted-foreground mb-3
/// px-2"
/// data-fg-bjgw38="1.28:17.670:/src/app/components/Settings.tsx:98:11:3996:66:e:h2:t"
/// data-fgid-bjgw38=":r8m:">Goals</h2><div class="bg-card border
/// border-border rounded-2xl"
/// data-fg-bjgw40="1.28:17.670:/src/app/components/Settings.tsx:99:11:4073:660:e:motion.div:e"
/// data-fgid-bjgw40=":r8n:" style="opacity: 1; transform: none;"><button
/// class="w-full p-4 flex items-center gap-3 hover:bg-accent/10
/// transition-colors rounded-2xl"
/// data-fg-bjgw41="1.28:17.670:/src/app/components/Settings.tsx:105:13:4301:408:e:button:etetete"
/// data-fgid-bjgw41=":r8o:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-target w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw42="1.28:17.670:node_modules/lucide-react:106:15:4420:52:e:Target::::::DxzD"
/// data-fgid-bjgw42=":r8p:"><circle cx="12" cy="12" r="10"></circle><circle
/// cx="12" cy="12" r="6"></circle><circle cx="12" cy="12"
/// r="2"></circle></svg><span class="flex-1 text-left"
/// data-fg-bjgw43="1.28:17.670:/src/app/components/Settings.tsx:107:15:4487:57:e:span:t"
/// data-fgid-bjgw43=":r8q:">Daily Task Goal</span><span
/// class="text-muted-foreground"
/// data-fg-bjgw45="1.28:17.670:/src/app/components/Settings.tsx:108:15:4559:55:e:span:t"
/// data-fgid-bjgw45=":r8r:">10 tasks</span><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-chevron-right w-5 h-5 text-muted-foreground"
/// data-fg-bjgw47="1.28:17.670:node_modules/lucide-react:109:15:4629:58:e:ChevronRight::::::ByYJ"
/// data-fgid-bjgw47=":r8s:"><path d="m9 18
/// 6-6-6-6"></path></svg></button></div></div><div
/// data-fg-bjgw48="1.28:17.670:/src/app/components/Settings.tsx:114:9:4758:966:e:div:ete"
/// data-fgid-bjgw48=":r8t:"><h2 class="text-sm text-muted-foreground mb-3
/// px-2"
/// data-fg-bjgw49="1.28:17.670:/src/app/components/Settings.tsx:115:11:4774:68:e:h2:t"
/// data-fgid-bjgw49=":r8u:">Account</h2><div class="bg-card border
/// border-border rounded-2xl divide-y divide-border"
/// data-fg-bjgw51="1.28:17.670:/src/app/components/Settings.tsx:116:11:4853:856:e:motion.div:ete"
/// data-fgid-bjgw51=":r8v:" style="opacity: 1; transform: none;"><button
/// class="w-full p-4 flex items-center gap-3 hover:bg-accent/10
/// transition-colors"
/// data-fg-bjgw52="1.28:17.670:/src/app/components/Settings.tsx:122:13:5104:321:e:button:etete"
/// data-fgid-bjgw52=":r90:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-user w-5 h-5
/// text-muted-foreground"
/// data-fg-bjgw53="1.28:17.670:node_modules/lucide-react:123:15:5211:50:e:User::::::wpV"
/// data-fgid-bjgw53=":r91:"><path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4
/// 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg><span
/// class="flex-1 text-left"
/// data-fg-bjgw54="1.28:17.670:/src/app/components/Settings.tsx:124:15:5276:54:e:span:t"
/// data-fgid-bjgw54=":r92:">Edit Profile</span><svg
/// xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24
/// 24" fill="none" stroke="currentColor" stroke-width="2"
/// stroke-linecap="round" stroke-linejoin="round" class="lucide
/// lucide-chevron-right w-5 h-5 text-muted-foreground"
/// data-fg-bjgw56="1.28:17.670:node_modules/lucide-react:125:15:5345:58:e:ChevronRight::::::ByYJ"
/// data-fgid-bjgw56=":r93:"><path d="m9 18
/// 6-6-6-6"></path></svg></button><button class="w-full p-4 flex items-center
/// gap-3 hover:bg-destructive/10 transition-colors text-destructive"
/// data-fg-bjgw57="1.28:17.670:/src/app/components/Settings.tsx:128:13:5439:246:e:button:ete"
/// data-fgid-bjgw57=":r94:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-log-out w-5 h-5"
/// data-fg-bjgw58="1.28:17.670:node_modules/lucide-react:129:15:5568:30:e:LogOut::::::B3pg"
/// data-fgid-bjgw58=":r95:"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1
/// 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21"
/// x2="9" y1="12" y2="12"></line></svg><span class="flex-1 text-left"
/// data-fg-bjgw59="1.28:17.670:/src/app/components/Settings.tsx:130:15:5613:50:e:span:t"
/// data-fgid-bjgw59=":r96:">Sign Out</span></button></div></div><div
/// class="pt-6 text-center text-sm text-muted-foreground"
/// data-fg-bjgw61="1.28:17.670:/src/app/components/Settings.tsx:135:9:5734:173:e:div:ete"
/// data-fgid-bjgw61=":r97:"><p
/// data-fg-bjgw62="1.28:17.670:/src/app/components/Settings.tsx:136:11:5809:23:e:p:t"
/// data-fgid-bjgw62=":r98:">Intajiyah v1.0.0</p><p class="mt-1"
/// data-fg-bjgw64="1.28:17.670:/src/app/components/Settings.tsx:137:11:5843:49:e:p:t"
/// data-fgid-bjgw64=":r99:">Energy-Based Productivity</p></div></div></div>
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  static String routeName = 'Settings';
  static String routePath = '/settings';

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());
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
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 25.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: (FFCrossAxisAlignment.start).flutterValue,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Settings',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 64.0,
                                height: 64.0,
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
                                  borderRadius: BorderRadius.circular(9999.0),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'AS',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        currentUserDisplayName,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      currentUserEmail,
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
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            child: Text(
                              'Preferences',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.settingRowModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SettingRowWidget(
                                    icon: Icon(
                                      Icons.dark_mode_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22.0,
                                    ),
                                    color: Color(0x00000000),
                                    label: 'Dark Mode',
                                    isToggle: true,
                                    value: '',
                                    active: false,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.settingRowModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SettingRowWidget(
                                    icon: Icon(
                                      Icons.notifications_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22.0,
                                    ),
                                    color: Color(0x00000000),
                                    label: 'Notifications',
                                    isToggle: true,
                                    value: '',
                                    active: true,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.settingRowModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SettingRowWidget(
                                    icon: Icon(
                                      Icons.help,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22.0,
                                    ),
                                    color: Color(0x00000000),
                                    label: 'Language',
                                    isToggle: false,
                                    value: 'English',
                                    active: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            child: Text(
                              'Goals',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: wrapWithModel(
                              model: _model.settingRowModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: SettingRowWidget(
                                icon: Icon(
                                  Icons.help,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 22.0,
                                ),
                                color: Color(0x00000000),
                                label: 'Daily Task Goal',
                                isToggle: false,
                                value: '10 tasks',
                                active: false,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            child: Text(
                              'Account',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        MobileNamedEditprofilePageWidget
                                            .routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.settingRowModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingRowWidget(
                                      icon: Icon(
                                        Icons.person_outline_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      color: Color(0x00000000),
                                      label: 'Edit Profile',
                                      isToggle: false,
                                      value: '',
                                      active: false,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(Intro1Widget.routeName,
                                        context.mounted);
                                  },
                                  child: wrapWithModel(
                                    model: _model.settingRowModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingRowWidget(
                                      icon: Icon(
                                        Icons.logout_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22.0,
                                      ),
                                      color: FlutterFlowTheme.of(context).error,
                                      label: 'Sign Out',
                                      isToggle: false,
                                      value: '',
                                      active: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Intajiyah v1.0.0',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                            'Energy-Based Productivity',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
