import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/achievement_item_widget.dart';
import '/components/insight_li_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'analytics_monthly_report_model.dart';
export 'analytics_monthly_report_model.dart';

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
/// transition-colors bg-muted text-muted-foreground"
/// data-fg-ddf35="1.17:17.7516:/src/app/components/Analytics.tsx:39:11:1526:350:e:button:x"
/// data-fgid-ddf35=":r8d:">Statistics</button><button class="flex-1 py-2 px-4
/// rounded-xl text-sm transition-colors bg-primary text-white"
/// data-fg-ddf37="1.17:17.7516:/src/app/components/Analytics.tsx:49:11:1887:360:e:button:x"
/// data-fgid-ddf37=":r8e:">Monthly Report</button></div></div><div class="p-6
/// space-y-6"
/// data-fg-ddf39="1.17:17.7516:/src/app/components/Analytics.tsx:62:7:2283:10245:e:div:x"
/// data-fgid-ddf39=":r8f:"><div class="bg-gradient-to-br from-primary
/// to-purple-600 rounded-3xl p-6 text-white"
/// data-fg-ddf377="1.17:17.7516:/src/app/components/Analytics.tsx:181:13:7098:613:e:motion.div:etete"
/// data-fgid-ddf377=":r8g:" style="opacity: 1; transform: none;"><div
/// class="flex items-center gap-2 mb-3"
/// data-fg-ddf378="1.17:17.7516:/src/app/components/Analytics.tsx:186:15:7336:208:e:div:ete"
/// data-fgid-ddf378=":r9k:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-award w-6 h-6"
/// data-fg-ddf379="1.17:17.7516:node_modules/lucide-react:187:17:7399:29:e:Award::::::B1kh"
/// data-fgid-ddf379=":r9l:"><path d="m15.477 12.89 1.515 8.526a.5.5 0 0
/// 1-.81.47l-3.58-2.687a1 1 0 0 0-1.197 0l-3.586 2.686a.5.5 0 0
/// 1-.81-.469l1.514-8.526"></path><circle cx="12" cy="8"
/// r="6"></circle></svg><span class="text-sm opacity-90"
/// data-fg-ddf380="1.17:17.7516:/src/app/components/Analytics.tsx:188:17:7445:78:e:span:x"
/// data-fgid-ddf380=":r9m:">Productivity Score</span></div><div
/// class="text-6xl mb-2"
/// data-fg-ddf382="1.17:17.7516:/src/app/components/Analytics.tsx:190:15:7559:39:e:div:t"
/// data-fgid-ddf382=":r9n:">87</div><p class="text-sm opacity-90"
/// data-fg-ddf384="1.17:17.7516:/src/app/components/Analytics.tsx:191:15:7613:72:e:p:tx"
/// data-fgid-ddf384=":r9o:">+12 more than last month</p></div><div
/// class="bg-card border border-border rounded-3xl p-6"
/// data-fg-ddf387="1.17:17.7516:/src/app/components/Analytics.tsx:194:13:7725:2264:e:motion.div:ete"
/// data-fgid-ddf387=":r99:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-ddf388="1.17:17.7516:/src/app/components/Analytics.tsx:200:15:7969:88:e:h2:xtx"
/// data-fgid-ddf388=":r9a:">Key Achievements - September 2026</h2><div
/// class="space-y-4"
/// data-fg-ddf392="1.17:17.7516:/src/app/components/Analytics.tsx:201:15:8072:1891:e:div:etete"
/// data-fgid-ddf392=":r9b:"><div class="flex items-start gap-3"
/// data-fg-ddf393="1.17:17.7516:/src/app/components/Analytics.tsx:202:17:8116:598:e:div:ete"
/// data-fgid-ddf393=":r9p:"><div class="w-10 h-10 bg-green-100
/// dark:bg-green-900/30 rounded-full flex items-center justify-center"
/// data-fg-ddf394="1.17:17.7516:/src/app/components/Analytics.tsx:203:19:8175:218:e:div:e"
/// data-fgid-ddf394=":r9q:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-target w-5 h-5 text-green-600
/// dark:text-green-400"
/// data-fg-ddf395="1.17:17.7516:node_modules/lucide-react:204:21:8303:65:e:Target::::::DxzD"
/// data-fgid-ddf395=":r9r:"><circle cx="12" cy="12" r="10"></circle><circle
/// cx="12" cy="12" r="6"></circle><circle cx="12" cy="12"
/// r="2"></circle></svg></div><div class="flex-1"
/// data-fg-ddf396="1.17:17.7516:/src/app/components/Analytics.tsx:206:19:8412:279:e:div:ete"
/// data-fgid-ddf396=":r9s:"><h3 class="mb-1"
/// data-fg-ddf397="1.17:17.7516:/src/app/components/Analytics.tsx:207:21:8457:61:e:h3:tx"
/// data-fgid-ddf397=":r9t:">268 Tasks Completed</h3><p class="text-sm
/// text-muted-foreground"
/// data-fg-ddf3100="1.17:17.7516:/src/app/components/Analytics.tsx:208:21:8539:127:e:p:tx"
/// data-fgid-ddf3100=":r9u:">+45 more than last month</p></div></div><div
/// class="flex items-start gap-3"
/// data-fg-ddf3103="1.17:17.7516:/src/app/components/Analytics.tsx:214:17:8732:603:e:div:ete"
/// data-fgid-ddf3103=":r9v:"><div class="w-10 h-10 bg-orange-100
/// dark:bg-orange-900/30 rounded-full flex items-center justify-center"
/// data-fg-ddf3104="1.17:17.7516:/src/app/components/Analytics.tsx:215:19:8791:226:e:div:e"
/// data-fgid-ddf3104=":ra0:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-trending-up w-5 h-5
/// text-orange-600 dark:text-orange-400"
/// data-fg-ddf3105="1.17:17.7516:node_modules/lucide-react:216:21:8921:71:e:TrendingUp::::::tM8"
/// data-fgid-ddf3105=":ra1:"><polyline points="22 7 13.5 15.5 8.5 10.5 2
/// 17"></polyline><polyline points="16 7 22 7 22
/// 13"></polyline></svg></div><div class="flex-1"
/// data-fg-ddf3106="1.17:17.7516:/src/app/components/Analytics.tsx:218:19:9036:276:e:div:ete"
/// data-fgid-ddf3106=":ra2:"><h3 class="mb-1"
/// data-fg-ddf3107="1.17:17.7516:/src/app/components/Analytics.tsx:219:21:9081:61:e:h3:tx"
/// data-fgid-ddf3107=":ra3:">12-Best Streak</h3><p class="text-sm
/// text-muted-foreground"
/// data-fg-ddf3110="1.17:17.7516:/src/app/components/Analytics.tsx:220:21:9163:124:e:p:x"
/// data-fgid-ddf3110=":ra4:">Your best streak yet!</p></div></div><div
/// class="flex items-start gap-3"
/// data-fg-ddf3112="1.17:17.7516:/src/app/components/Analytics.tsx:226:17:9353:589:e:div:ete"
/// data-fgid-ddf3112=":ra5:"><div class="w-10 h-10 bg-blue-100
/// dark:bg-blue-900/30 rounded-full flex items-center justify-center"
/// data-fg-ddf3113="1.17:17.7516:/src/app/components/Analytics.tsx:227:19:9412:216:e:div:e"
/// data-fgid-ddf3113=":ra6:"><svg xmlns="http://www.w3.org/2000/svg"
/// width="24" height="24" viewBox="0 0 24 24" fill="none"
/// stroke="currentColor" stroke-width="2" stroke-linecap="round"
/// stroke-linejoin="round" class="lucide lucide-sparkles w-5 h-5
/// text-blue-600 dark:text-blue-400"
/// data-fg-ddf3114="1.17:17.7516:node_modules/lucide-react:228:21:9538:65:e:Sparkles::::::DD2N"
/// data-fgid-ddf3114=":ra7:"><path d="M9.937 15.5A2 2 0 0 0 8.5
/// 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937
/// 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135
/// 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582
/// 6.135a.5.5 0 0 1-.963 0z"></path><path d="M20 3v4"></path><path d="M22
/// 5h-4"></path><path d="M4 17v2"></path><path d="M5
/// 18H3"></path></svg></div><div class="flex-1"
/// data-fg-ddf3115="1.17:17.7516:/src/app/components/Analytics.tsx:230:19:9647:272:e:div:ete"
/// data-fgid-ddf3115=":ra8:"><h3 class="mb-1"
/// data-fg-ddf3116="1.17:17.7516:/src/app/components/Analytics.tsx:231:21:9692:54:e:h3:tx"
/// data-fgid-ddf3116=":ra9:">4 New Habits</h3><p class="text-sm
/// text-muted-foreground"
/// data-fg-ddf3119="1.17:17.7516:/src/app/components/Analytics.tsx:232:21:9767:127:e:p:x"
/// data-fgid-ddf3119=":raa:">Successfully
/// built</p></div></div></div></div><div class="bg-card border border-border
/// rounded-3xl p-6"
/// data-fg-ddf3121="1.17:17.7516:/src/app/components/Analytics.tsx:240:13:10003:2014:e:motion.div:etete"
/// data-fgid-ddf3121=":r9c:" style="opacity: 1; transform: none;"><h2
/// class="text-lg mb-4"
/// data-fg-ddf3122="1.17:17.7516:/src/app/components/Analytics.tsx:246:15:10247:63:e:h2:tx"
/// data-fgid-ddf3122=":r9d:">✨ AI Insights</h2><div class="mb-6"
/// data-fg-ddf3125="1.17:17.7516:/src/app/components/Analytics.tsx:248:15:10326:830:e:div:ete"
/// data-fgid-ddf3125=":r9e:"><h3 class="text-sm mb-2"
/// data-fg-ddf3126="1.17:17.7516:/src/app/components/Analytics.tsx:249:17:10365:63:e:h3:tx"
/// data-fgid-ddf3126=":rab:">💪 Strengths</h3><ul class="space-y-2 text-sm
/// text-muted-foreground"
/// data-fg-ddf3129="1.17:17.7516:/src/app/components/Analytics.tsx:250:17:10445:690:e:ul:etete"
/// data-fgid-ddf3129=":rac:"><li class="flex items-start gap-2"
/// data-fg-ddf3130="1.17:17.7516:/src/app/components/Analytics.tsx:251:19:10520:185:e:li:ete"
/// data-fgid-ddf3130=":rad:"><span class="text-green-500"
/// data-fg-ddf3131="1.17:17.7516:/src/app/components/Analytics.tsx:252:21:10580:41:e:span:t"
/// data-fgid-ddf3131=":rae:">•</span><span
/// data-fg-ddf3133="1.17:17.7516:/src/app/components/Analytics.tsx:253:21:10642:39:e:span:x"
/// data-fgid-ddf3133=":raf:">Consistent morning routine with 95% completion
/// rate</span></li><li class="flex items-start gap-2"
/// data-fg-ddf3135="1.17:17.7516:/src/app/components/Analytics.tsx:255:19:10724:185:e:li:ete"
/// data-fgid-ddf3135=":rag:"><span class="text-green-500"
/// data-fg-ddf3136="1.17:17.7516:/src/app/components/Analytics.tsx:256:21:10784:41:e:span:t"
/// data-fgid-ddf3136=":rah:">•</span><span
/// data-fg-ddf3138="1.17:17.7516:/src/app/components/Analytics.tsx:257:21:10846:39:e:span:x"
/// data-fgid-ddf3138=":rai:">Peak productivity between 10 AM - 2
/// PM</span></li><li class="flex items-start gap-2"
/// data-fg-ddf3140="1.17:17.7516:/src/app/components/Analytics.tsx:259:19:10928:185:e:li:ete"
/// data-fgid-ddf3140=":raj:"><span class="text-green-500"
/// data-fg-ddf3141="1.17:17.7516:/src/app/components/Analytics.tsx:260:21:10988:41:e:span:t"
/// data-fgid-ddf3141=":rak:">•</span><span
/// data-fg-ddf3143="1.17:17.7516:/src/app/components/Analytics.tsx:261:21:11050:39:e:span:x"
/// data-fgid-ddf3143=":ral:">High energy levels maintained throughout the
/// week</span></li></ul></div><div
/// data-fg-ddf3145="1.17:17.7516:/src/app/components/Analytics.tsx:266:15:11172:819:e:div:ete"
/// data-fgid-ddf3145=":ram:"><h3 class="text-sm mb-2"
/// data-fg-ddf3146="1.17:17.7516:/src/app/components/Analytics.tsx:267:17:11194:66:e:h3:tx"
/// data-fgid-ddf3146=":ran:">🎯 Improvement Suggestions</h3><ul
/// class="space-y-2 text-sm text-muted-foreground"
/// data-fg-ddf3149="1.17:17.7516:/src/app/components/Analytics.tsx:268:17:11277:693:e:ul:etete"
/// data-fgid-ddf3149=":rao:"><li class="flex items-start gap-2"
/// data-fg-ddf3150="1.17:17.7516:/src/app/components/Analytics.tsx:269:19:11352:186:e:li:ete"
/// data-fgid-ddf3150=":rap:"><span class="text-primary"
/// data-fg-ddf3151="1.17:17.7516:/src/app/components/Analytics.tsx:270:21:11412:39:e:span:t"
/// data-fgid-ddf3151=":raq:">•</span><span
/// data-fg-ddf3153="1.17:17.7516:/src/app/components/Analytics.tsx:271:21:11472:42:e:span:x"
/// data-fgid-ddf3153=":rar:">Try scheduling deep work earlier in the
/// day</span></li><li class="flex items-start gap-2"
/// data-fg-ddf3155="1.17:17.7516:/src/app/components/Analytics.tsx:273:19:11557:186:e:li:ete"
/// data-fgid-ddf3155=":ras:"><span class="text-primary"
/// data-fg-ddf3156="1.17:17.7516:/src/app/components/Analytics.tsx:274:21:11617:39:e:span:t"
/// data-fgid-ddf3156=":rat:">•</span><span
/// data-fg-ddf3158="1.17:17.7516:/src/app/components/Analytics.tsx:275:21:11677:42:e:span:x"
/// data-fgid-ddf3158=":rau:">Add more breaks between focus
/// sessions</span></li><li class="flex items-start gap-2"
/// data-fg-ddf3160="1.17:17.7516:/src/app/components/Analytics.tsx:277:19:11762:186:e:li:ete"
/// data-fgid-ddf3160=":rav:"><span class="text-primary"
/// data-fg-ddf3161="1.17:17.7516:/src/app/components/Analytics.tsx:278:21:11822:39:e:span:t"
/// data-fgid-ddf3161=":rb0:">•</span><span
/// data-fg-ddf3163="1.17:17.7516:/src/app/components/Analytics.tsx:279:21:11882:42:e:span:x"
/// data-fgid-ddf3163=":rb1:">Consider adding a wind-down routine for
/// evenings</span></li></ul></div></div><div class="bg-accent/30 border
/// border-accent rounded-2xl p-6"
/// data-fg-ddf3165="1.17:17.7516:/src/app/components/Analytics.tsx:285:13:12031:459:e:motion.div:ete"
/// data-fgid-ddf3165=":r9f:" style="opacity: 1; transform: none;"><h3
/// class="text-sm mb-2"
/// data-fg-ddf3166="1.17:17.7516:/src/app/components/Analytics.tsx:291:15:12280:64:e:h3:tx"
/// data-fgid-ddf3166=":r9g:">🎉 You're doing great!</h3><p class="text-sm
/// text-muted-foreground"
/// data-fg-ddf3169="1.17:17.7516:/src/app/components/Analytics.tsx:292:15:12359:105:e:p:x"
/// data-fgid-ddf3169=":r9h:">Your productivity has improved significantly
/// this month.
///
/// Keep up the excellent work and maintain your energy
/// levels!</p></div></div></div>
class AnalyticsMonthlyReportWidget extends StatefulWidget {
  const AnalyticsMonthlyReportWidget({super.key});

  static String routeName = 'AnalyticsMonthlyReport';
  static String routePath = '/analyticsMonthlyReport';

  @override
  State<AnalyticsMonthlyReportWidget> createState() =>
      _AnalyticsMonthlyReportWidgetState();
}

class _AnalyticsMonthlyReportWidgetState
    extends State<AnalyticsMonthlyReportWidget> {
  late AnalyticsMonthlyReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalyticsMonthlyReportModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.insights = functions.emptyInsights();
      safeSetState(() {});
      _model.selectedMonth = getCurrentTimestamp;
      safeSetState(() {});
      _model.thisMonthResult = await queryTasksRecordOnce(
        queryBuilder: (tasksRecord) => tasksRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'completed_at',
              isGreaterThanOrEqualTo:
                  functions.monthStart(_model.selectedMonth),
            )
            .where(
              'completed_at',
              isLessThanOrEqualTo: functions.monthEnd(_model.selectedMonth),
            ),
      );
      _model.thisMonthTasks =
          _model.thisMonthResult!.toList().cast<TasksRecord>();
      safeSetState(() {});
      _model.lastMonthResult = await queryTasksRecordOnce(
        queryBuilder: (tasksRecord) => tasksRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'completed_at',
              isGreaterThanOrEqualTo: functions
                  .monthStart(functions.previousMonth(_model.selectedMonth)),
            )
            .where(
              'completed_at',
              isLessThanOrEqualTo: functions
                  .monthEnd(functions.previousMonth(_model.selectedMonth)),
            ),
      );
      _model.lastMonthTasks =
          _model.lastMonthResult!.toList().cast<TasksRecord>();
      safeSetState(() {});
      _model.dueThisMonthResult = await queryTasksRecordOnce(
        queryBuilder: (tasksRecord) => tasksRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'due_date',
              isGreaterThanOrEqualTo:
                  functions.monthStart(_model.selectedMonth),
            )
            .where(
              'due_date',
              isLessThanOrEqualTo: functions.monthEnd(_model.selectedMonth),
            ),
      );
      _model.dueThisMonthTasks =
          _model.dueThisMonthResult!.toList().cast<TasksRecord>();
      safeSetState(() {});
      _model.dueLastMonthResult = await queryTasksRecordOnce(
        queryBuilder: (tasksRecord) => tasksRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'due_date',
              isGreaterThanOrEqualTo: functions
                  .monthStart(functions.previousMonth(_model.selectedMonth)),
            )
            .where(
              'due_date',
              isLessThanOrEqualTo: functions
                  .monthEnd(functions.previousMonth(_model.selectedMonth)),
            ),
      );
      _model.dueLastMonthTasks =
          _model.dueLastMonthResult!.toList().cast<TasksRecord>();
      safeSetState(() {});
      _model.thisMonthHabitsResult = await queryHabitsRecordOnce(
        queryBuilder: (habitsRecord) => habitsRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'created_at',
              isGreaterThanOrEqualTo:
                  functions.monthStart(_model.selectedMonth),
            )
            .where(
              'created_at',
              isLessThanOrEqualTo: functions.monthEnd(_model.selectedMonth),
            ),
      );
      _model.thisMonthJournalsResult = await queryJournalEntriesRecordOnce(
        queryBuilder: (journalEntriesRecord) => journalEntriesRecord.where(
          'user_id',
          isEqualTo: currentUserUid,
        ),
      );
      _model.thisMonthJournals =
          _model.thisMonthJournalsResult!.toList().cast<JournalEntriesRecord>();
      safeSetState(() {});
      _model.thisMonthHabits =
          _model.thisMonthHabitsResult!.toList().cast<HabitsRecord>();
      safeSetState(() {});
      _model.insightsResponse = await GenerateInsightsCall.call(
        stats: functions.buildStatsText(
            _model.dueThisMonthTasks.toList(),
            _model.dueLastMonthTasks.toList(),
            _model.thisMonthTasks.toList(),
            _model.lastMonthTasks.toList(),
            _model.thisMonthHabits.toList(),
            _model.thisMonthJournals.toList(),
            _model.selectedMonth),
      );

      if ((_model.insightsResponse?.succeeded ?? true)) {
        _model.insights = functions.parseInsights(getJsonField(
          (_model.insightsResponse?.jsonBody ?? ''),
          r'''$.candidates[0].content.parts[0].text''',
        ).toString());
        safeSetState(() {});
        _model.isLoading = false;
        safeSetState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Gemini failed: ${(_model.insightsResponse?.statusCode ?? 200).toString()}${(_model.insightsResponse?.exceptionMessage ?? '')}',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 10000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
        _model.isLoading = false;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Analytics',
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
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
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
                                  onPressed: () async {
                                    context.pushNamed(
                                        AnalyticsStaticsWidget.routeName);
                                  },
                                  text: 'Statistics',
                                  options: FFButtonOptions(
                                    height: 30.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 30.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFCFCFCF),
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
                                          color: Color(0xFF8B8A8A),
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
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                            Icons.grade,
                                            color: Colors.white,
                                            size: 24.0,
                                          ),
                                          Text(
                                            'Productivity Score',
                                            style: FlutterFlowTheme.of(context)
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
                                                  color: Color(0xE6FFFFFF),
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
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          functions.scoreText(
                                              functions.productivityScore(_model
                                                  .dueThisMonthTasks
                                                  .toList())!),
                                          '87',
                                        ),
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
                                              fontSize: 64.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          functions.scoreChangeText(
                                              functions.scoreDifference(
                                                  _model.dueThisMonthTasks
                                                      .toList(),
                                                  _model.dueLastMonthTasks
                                                      .toList())!),
                                          '+12 more than last month',
                                        ),
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
                                              color: Color(0xE6FFFFFF),
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
                                    ].divide(SizedBox(height: 8.0)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          functions.achievementsTitle(
                                              _model.selectedMonth),
                                          'Key Achievements - October 2026',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.achievementItemModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AchievementItemWidget(
                                              iconBg: Color(0xFFDCFCE7),
                                              icon: Icon(
                                                Icons.help,
                                                color: Color(0xFF16A34A),
                                                size: 20.0,
                                              ),
                                              iconColor: Color(0xFF16A34A),
                                              title: valueOrDefault<String>(
                                                functions.tasksCompletedText(
                                                    _model.thisMonthTasks
                                                        .toList()),
                                                '268 Tasks Completed',
                                              ),
                                              subtitle: functions.tasksDiffText(
                                                  _model.thisMonthTasks
                                                      .toList(),
                                                  _model.lastMonthTasks
                                                      .toList()),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.achievementItemModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AchievementItemWidget(
                                              iconBg: Color(0xFFFFEDD5),
                                              icon: Icon(
                                                Icons.trending_up_rounded,
                                                color: Color(0xFFEA580C),
                                                size: 20.0,
                                              ),
                                              iconColor: Color(0xFFEA580C),
                                              title: valueOrDefault<String>(
                                                functions.bestStreakText(_model
                                                    .thisMonthTasks
                                                    .toList()),
                                                '12-Best Streak',
                                              ),
                                              subtitle: 'Your best streak yet!',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.achievementItemModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AchievementItemWidget(
                                              iconBg: Color(0xFFDBEAFE),
                                              icon: Icon(
                                                Icons.auto_awesome_rounded,
                                                color: Color(0xFF2563EB),
                                                size: 20.0,
                                              ),
                                              iconColor: Color(0xFF2563EB),
                                              title: valueOrDefault<String>(
                                                functions.newHabitsText(_model
                                                    .thisMonthHabits
                                                    .toList()),
                                                '4 habits established',
                                              ),
                                              subtitle: 'Successfully built',
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        '✨ AI Insights',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 180.0, 0.0),
                                        child: Text(
                                          '💪 Strengths',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final strengthItem = functions
                                              .getInsightList(
                                                  _model.insights, 'strengths')
                                              .toList();

                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: List.generate(
                                                strengthItem.length,
                                                (strengthItemIndex) {
                                              final strengthItemItem =
                                                  strengthItem[
                                                      strengthItemIndex];
                                              return InsightLiWidget(
                                                key: Key(
                                                    'Keyfs3_${strengthItemIndex}_of_${strengthItem.length}'),
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                content: strengthItemItem,
                                              );
                                            }).divide(SizedBox(height: 8.0)),
                                          );
                                        },
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 70.0, 0.0),
                                            child: Text(
                                              '🎯 Improvement Suggestions',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final improvementItem = functions
                                                  .getInsightList(
                                                      _model.insights,
                                                      'improvements')
                                                  .toList();

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    improvementItem.length,
                                                    (improvementItemIndex) {
                                                  final improvementItemItem =
                                                      improvementItem[
                                                          improvementItemIndex];
                                                  return InsightLiWidget(
                                                    key: Key(
                                                        'Keymzh_${improvementItemIndex}_of_${improvementItem.length}'),
                                                    dotColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    content:
                                                        improvementItemItem,
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 50.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: functions.isGreatTone(_model.insights)!
                                      ? Color(0x4DEE8B60)
                                      : Color(0xFFFFF4E5),
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x4DEE8B60),
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
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          functions
                                                  .isGreatTone(_model.insights)!
                                              ? '🎉 You\'re doing great!'
                                              : '💪 Let\'s get back on track',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            functions.getInsightText(
                                                _model.insights, 'message'),
                                            'message',
                                          ),
                                          style: FlutterFlowTheme.of(context)
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
                                                    FlutterFlowTheme.of(context)
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
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
