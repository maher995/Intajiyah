// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatMessage {
  final String id;
  final String text;
  final bool isUser;
  final DateTime timestamp;
  final String? category;

  ChatMessage({
    required this.id,
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.category,
  });
}

class UserProductivityContext {
  int energyLevel = 75;
  double energyPercent = 0.75;
  String timeOfDay = 'morning';
  String mood = 'great';
  int moodScore = 5;
  int totalTasks = 0;
  int pendingTasks = 0;
  int completedTasks = 0;
  int highPriorityTasks = 0;
  int mediumPriorityTasks = 0;
  List<String> topPendingTasks = [];
  int totalHabits = 0;
  int completedHabitsToday = 0;
  List<String> habitNames = [];
  int currentStreak = 7;
  int longestStreak = 14;
  bool isLoading = true;
}

/// Intajiyah AI Personal Assistant chat interface with personalized insights
/// and productivity guidance.
class AiAssistantChat extends StatefulWidget {
  const AiAssistantChat({
    super.key,
    this.width,
    this.height,
    this.initialMessage,
  });

  final double? width;
  final double? height;
  final String? initialMessage;

  @override
  State<AiAssistantChat> createState() => _AiAssistantChatState();
}

class _AiAssistantChatState extends State<AiAssistantChat> {
  final List<ChatMessage> _messages = [];
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final UserProductivityContext _context = UserProductivityContext();
  bool _isThinking = false;
  bool _hasText = false;

  final List<Map<String, dynamic>> _quickActions = const [
    {'label': 'Analyze My Habits', 'icon': Icons.trending_up},
    {'label': "Review Today's Tasks", 'icon': Icons.checklist},
    {'label': 'Create a Study Plan', 'icon': Icons.menu_book},
    {'label': 'Improve Productivity', 'icon': Icons.rocket_launch},
    {'label': 'Focus Recommendations', 'icon': Icons.bolt},
  ];

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged);
    _loadUserContext();
    if (widget.initialMessage != null &&
        widget.initialMessage!.trim().isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _sendMessage(widget.initialMessage);
        }
      });
    }
  }

  void _onTextChanged() {
    final has = _textController.text.trim().isNotEmpty;
    if (has != _hasText) {
      setState(() {
        _hasText = has;
      });
    }
  }

  @override
  void dispose() {
    _textController.removeListener(_onTextChanged);
    _textController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _loadUserContext() async {
    try {
      final uid = FirebaseAuth.instance.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        _applyDefaultGreeting();
        return;
      }

      // 1. Energy logs
      try {
        final energyQuery = await FirebaseFirestore.instance
            .collection('energy_logs')
            .where('user_id', isEqualTo: uid)
            .orderBy('log_date', descending: true)
            .limit(1)
            .get();
        if (energyQuery.docs.isNotEmpty) {
          final data = energyQuery.docs.first.data();
          final rawVal = data['energy_level_value'];
          final rawLvl = data['energy_level'];
          if (rawVal is num) {
            _context.energyPercent = rawVal.toDouble();
            _context.energyLevel = (rawVal * 100).round();
          } else if (rawLvl is num) {
            _context.energyLevel =
                rawLvl <= 5 ? (rawLvl * 20).toInt() : rawLvl.toInt();
            _context.energyPercent = _context.energyLevel / 100.0;
          }
          if (data['time_of_day'] != null) {
            _context.timeOfDay = data['time_of_day'].toString();
          }
        }
      } catch (_) {}

      // 2. Mood logs
      try {
        final moodQuery = await FirebaseFirestore.instance
            .collection('mood_logs')
            .where('user_id', isEqualTo: uid)
            .orderBy('log_date', descending: true)
            .limit(1)
            .get();
        if (moodQuery.docs.isNotEmpty) {
          final data = moodQuery.docs.first.data();
          if (data['mood'] != null) {
            _context.mood = data['mood'].toString();
          }
          if (data['mood_score'] is num) {
            _context.moodScore = (data['mood_score'] as num).toInt();
          }
        }
      } catch (_) {}

      // 3. Tasks
      try {
        final tasksQuery = await FirebaseFirestore.instance
            .collection('tasks')
            .where('user_id', isEqualTo: uid)
            .get();
        _context.totalTasks = tasksQuery.docs.length;
        int pending = 0;
        int completed = 0;
        int highFocus = 0;
        int mediumEffort = 0;
        final List<String> topTasks = [];

        for (final doc in tasksQuery.docs) {
          final data = doc.data();
          if (data['is_deleted'] == true) continue;
          final status = data['status']?.toString().toLowerCase() ?? 'pending';
          final priority = data['priority']?.toString() ?? '';
          final title = data['title']?.toString() ?? 'Task';

          if (status == 'completed') {
            completed++;
          } else {
            pending++;
            if (priority.contains('highFocus')) {
              highFocus++;
              topTasks.insert(0, title);
            } else if (priority.contains('mediumEffort')) {
              mediumEffort++;
              topTasks.add(title);
            } else {
              topTasks.add(title);
            }
          }
        }
        _context.pendingTasks = pending;
        _context.completedTasks = completed;
        _context.highPriorityTasks = highFocus;
        _context.mediumPriorityTasks = mediumEffort;
        _context.topPendingTasks = topTasks;
      } catch (_) {}

      // 4. Habits
      try {
        final habitsQuery = await FirebaseFirestore.instance
            .collection('habits')
            .where('user_id', isEqualTo: uid)
            .get();
        _context.totalHabits = habitsQuery.docs.length;
        final List<String> hNames = [];
        int completedToday = 0;
        final now = DateTime.now();

        for (final doc in habitsQuery.docs) {
          final data = doc.data();
          final name = data['name']?.toString() ?? 'Habit';
          hNames.add(name);
          final compDate = data['completion_date'];
          if (compDate is Timestamp) {
            final dt = compDate.toDate();
            if (dt.year == now.year &&
                dt.month == now.month &&
                dt.day == now.day) {
              completedToday++;
            }
          }
        }
        _context.habitNames = hNames;
        _context.completedHabitsToday = completedToday;
      } catch (_) {}

      // 5. Streaks
      try {
        final streaksQuery = await FirebaseFirestore.instance
            .collection('streaks')
            .where('user_id', isEqualTo: uid)
            .get();
        int maxCurrent = 0;
        int maxLongest = 0;
        for (final doc in streaksQuery.docs) {
          final data = doc.data();
          final c = data['current_count'];
          final l = data['longest_count'];
          if (c is num && c > maxCurrent) maxCurrent = c.toInt();
          if (l is num && l > maxLongest) maxLongest = l.toInt();
        }
        if (maxCurrent > 0) _context.currentStreak = maxCurrent;
        if (maxLongest > 0) _context.longestStreak = maxLongest;
      } catch (_) {}
    } catch (_) {}

    _applyDefaultGreeting();
  }

  void _applyDefaultGreeting() {
    _context.isLoading = false;
    final energyState = _context.energyLevel >= 70
        ? 'Peak Energy ⚡'
        : _context.energyLevel >= 40
            ? 'Moderate Energy 🔋'
            : 'Restorative Energy 🌙';
    final moodEmoji = _getMoodEmoji(_context.mood);
    final taskSummary = _context.highPriorityTasks > 0
        ? '${_context.highPriorityTasks} high-priority tasks remaining'
        : _context.pendingTasks > 0
            ? '${_context.pendingTasks} tasks remaining'
            : 'all tasks completed!';
    final topTask = _context.topPendingTasks.isNotEmpty
        ? _context.topPendingTasks.first
        : 'your top priority task';

    final greeting = '👋 **Welcome to Intajiyah AI Assistant!**\n\n'
        'Here is your real-time personalized productivity briefing:\n\n'
        '⚡ **Energy Level:** ${_context.energyLevel}% ($energyState)\n'
        '$moodEmoji **Current Mood:** ${_formatMood(_context.mood)}\n'
        '🎯 **Task Progress:** $taskSummary\n'
        '🔥 **Habit Streak:** ${_context.currentStreak}-day active streak\n\n'
        '💡 **Smart Recommendation:**\n'
        '${_context.energyLevel >= 60 ? "You're currently at **peak energy**! This is the optimal window to start a **high-focus session** on **\'$topTask\'**." : "Your energy is moderate. I suggest tackling 1-2 lighter items or taking a brisk 10-minute walk before deep work."}\n\n'
        'How can I help you excel today? You can choose a quick action below or type any question!';

    setState(() {
      _messages.add(ChatMessage(
        id: 'greeting_${DateTime.now().millisecondsSinceEpoch}',
        text: greeting,
        isUser: false,
        timestamp: DateTime.now(),
        category: 'greeting',
      ));
    });
    _scrollToBottom();
  }

  String _getMoodEmoji(String mood) {
    switch (mood.toLowerCase()) {
      case 'great':
        return '😊';
      case 'good':
        return '😄';
      case 'neutral':
        return '😐';
      case 'low':
        return '😔';
      case 'very_low':
        return '😣';
      default:
        return '😊';
    }
  }

  String _formatMood(String mood) {
    if (mood.isEmpty) return 'Great';
    return '${mood[0].toUpperCase()}${mood.substring(1).replaceAll('_', ' ')}';
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _sendMessage([String? presetText]) {
    final text = presetText ?? _textController.text.trim();
    if (text.isEmpty) return;

    if (presetText == null) {
      _textController.clear();
    }

    setState(() {
      _messages.add(ChatMessage(
        id: 'user_${DateTime.now().millisecondsSinceEpoch}',
        text: text,
        isUser: true,
        timestamp: DateTime.now(),
      ));
      _isThinking = true;
    });
    _scrollToBottom();

    // AI Generation with realistic intelligence & user context
    Future.delayed(const Duration(milliseconds: 650), () {
      if (!mounted) return;
      final aiResponse = _generateAiResponse(text);
      setState(() {
        _isThinking = false;
        _messages.add(ChatMessage(
          id: 'ai_${DateTime.now().millisecondsSinceEpoch}',
          text: aiResponse,
          isUser: false,
          timestamp: DateTime.now(),
        ));
      });
      _scrollToBottom();
    });
  }

  String _generateAiResponse(String query) {
    final q = query.toLowerCase().trim();
    final topTask1 = _context.topPendingTasks.isNotEmpty
        ? _context.topPendingTasks[0]
        : 'Complete primary project milestone';
    final topTask2 = _context.topPendingTasks.length > 1
        ? _context.topPendingTasks[1]
        : 'Organize daily study schedule';
    final habitName = _context.habitNames.isNotEmpty
        ? _context.habitNames.first
        : 'Morning deep work routine';

    // 1. Productivity improvements
    if (q.contains('productivity') ||
        q.contains('improve my productivity') ||
        q.contains('productivity improvements')) {
      return '🚀 **Personalized Productivity Optimization Plan:**\n\n'
          'Based on your current profile (${_context.energyLevel}% energy, ${_context.pendingTasks} tasks pending), here are 5 actionable strategies to maximize output:\n\n'
          '🎯 **1. Energy-Aligned Scheduling**\n'
          'Your energy is currently at **${_context.energyLevel}%**. Match high-cognitive tasks like problem-solving and coding to your peak hours. Schedule shallow work (emails, file organizing) for energy dips.\n\n'
          '⏱️ **2. The 25/5 Pomodoro Cadence**\n'
          'Work in **25-minute deep focus sprints** followed by 5-minute cognitive rests. After 4 cycles, take an extended 20-minute break. This eliminates mental fatigue.\n\n'
          '⚡ **3. The 2-Minute Rule**\n'
          'If a task takes less than 2 minutes (e.g. logging a habit, replying to a quick note), complete it immediately to keep your task queue lean.\n\n'
          '🛡️ **4. Single-Tasking & Friction Reduction**\n'
          'Context switching costs up to 40% of cognitive performance. Close inactive browser tabs, silence notifications, and focus on one task: **\'$topTask1\'**.\n\n'
          '🌙 **5. Evening Review in Journal**\n'
          'Spend 3 minutes each evening reviewing your habit streak (${_context.currentStreak} days) and selecting your top 3 priorities for tomorrow.';
    }

    // 2. What should I focus on today? / Review Today's Tasks
    if (q.contains('focus on today') ||
        q.contains('what should i focus') ||
        q.contains("review today's tasks") ||
        q.contains('task')) {
      final completionRate = _context.totalTasks > 0
          ? ((_context.completedTasks / _context.totalTasks) * 100).round()
          : 0;

      return '🎯 **Today\'s Strategic Focus & Task Review:**\n\n'
          '📊 **Current Task Status:**\n'
          '• **Pending Tasks:** ${_context.pendingTasks}\n'
          '• **Completed:** ${_context.completedTasks} (${completionRate}% completed)\n'
          '• **High-Focus Items:** ${_context.highPriorityTasks} remaining\n\n'
          '🚀 **Recommended Action Sequence:**\n'
          '1. **Primary Focus (Start Now):** **\'$topTask1\'**\n'
          '   • *Why:* Your energy is at **${_context.energyLevel}%**. This high-focus task delivers the highest leverage today.\n'
          '2. **Secondary Focus:** **\'$topTask2\'**\n'
          '   • *Why:* Tackle this after your first break while mental clarity remains high.\n'
          '3. **Habit Maintenance:** Complete **\'$habitName\'** to keep your **${_context.currentStreak}-day streak** intact!\n\n'
          '💡 **Pro-Tip:** Open the **Focus Session** tab and run a 25-minute timer for \'$topTask1\' right now!';
    }

    // 3. How can I improve my habits? / Analyze My Habits
    if (q.contains('habit') ||
        q.contains('analyze my habits') ||
        q.contains('streak')) {
      return '📊 **Habit & Streak Intelligence Report:**\n\n'
          '🔥 **Current Streak:** **${_context.currentStreak} consecutive days**\n'
          '🏆 **Personal Best:** **${_context.longestStreak} days**\n'
          '📋 **Habits Tracked:** ${_context.totalHabits} total (${_context.completedHabitsToday} completed today)\n\n'
          '🔑 **Actionable Habit Mastery Framework:**\n'
          '• **Habit Stacking:** Anchor your habits: *\"After I finish my morning coffee, I will complete \'$habitName\'.\"*\n'
          '• **Never Miss Twice:** Missing once is an accident; missing twice starts a new habit. Guard your ${_context.currentStreak}-day streak today!\n'
          '• **Environmental Design:** Reduce starting friction by preparing your tools, notebook, and workspace the night before.\n'
          '• **Micro-Commitment:** If you feel resistance, commit to doing just 2 minutes of the habit today. Consistency builds identity!';
    }

    // 4. How can I manage my time better?
    if (q.contains('manage my time') ||
        q.contains('time better') ||
        q.contains('time management')) {
      return '⏳ **Executive Time Management System:**\n\n'
          'Here is how to structure your daily workflow for peak efficiency:\n\n'
          '📊 **1. The Eisenhower Matrix**\n'
          '• **High-Focus & Urgent:** Execute immediately during morning peak energy.\n'
          '• **High-Focus & Non-Urgent:** Schedule protected calendar blocks (e.g. Study, Research).\n'
          '• **Low-Effort Tasks:** Batch into a 30-minute block at 4:00 PM.\n\n'
          '🧱 **2. Time-Blocking**\n'
          'Instead of working off an open to-do list, assign specific 30-to-60 minute blocks to tasks. Treat your focus sessions like non-negotiable appointments.\n\n'
          '🧘 **3. 10-Minute Transition Buffers**\n'
          'Always insert 10 minutes between major activities. This absorbs unexpected delays and resets your mental state.\n\n'
          '🎯 **4. Daily Big 3 (MITs)**\n'
          'Pick only 3 essential outcomes for each day. Completing 3 meaningful goals creates compounding long-term progress!';
    }

    // 5. What should I do when my energy is low?
    if (q.contains('energy is low') ||
        q.contains('low energy') ||
        q.contains('tired') ||
        q.contains('exhausted')) {
      return '🔋 **Low-Energy Recovery & Reset Protocol:**\n\n'
          'When your energy dips below 40%, fighting it often results in frustration. Follow this restorative protocol:\n\n'
          '🔻 **1. Downshift to Low-Effort Tasks**\n'
          'Set aside heavy high-focus tasks for now. Switch to administrative or maintenance work:\n'
          '• Tidy your workspace.\n'
          '• Organize your task tags or check off subtasks.\n'
          '• Read an article in your Library.\n\n'
          '💧 **2. The 10-Minute Physical Reset**\n'
          '• Drink **500ml of cold water** (dehydration is the #1 silent energy drain).\n'
          '• Step outside or open a window for natural sunlight exposure.\n'
          '• Do 2 minutes of gentle shoulder and neck stretching.\n\n'
          '🧠 **3. 5-Minute Brain Dump**\n'
          'Head to the **Journal tab** and write down whatever is occupying your thoughts. Clearing mental clutter frees up cognitive energy.\n\n'
          '⏱️ **4. The 10-Minute Momentum Rule**\n'
          'Commit to working on an easy task for just 10 minutes. Often, physical momentum reignites mental energy!';
    }

    // 6. Create a Study Plan
    if (q.contains('study plan') ||
        q.contains('study') ||
        q.contains('learning')) {
      return '📚 **Personalized Deep Study Plan:**\n\n'
          'Customized for your current energy (${_context.energyLevel}%) and active goals:\n\n'
          '⏱️ **Phase 1: Active Recall & Core Learning (30 Mins)**\n'
          '• **Subject/Topic:** Primary focus from \'$topTask1\'\n'
          '• **Method:** Close notes and write down key concepts from memory, then self-correct.\n\n'
          '☕ **Phase 2: Hydration & Cognitive Reset (5 Mins)**\n'
          '• Walk around, drink water, avoid social media.\n\n'
          '⏱️ **Phase 3: Problem Solving & Practice (25 Mins)**\n'
          '• **Subject/Topic:** Secondary focus from \'$topTask2\'\n'
          '• **Method:** Solve practical exercises or test scenarios.\n\n'
          '📝 **Phase 4: Synthesis & Habit Integration (10 Mins)**\n'
          '• Summarize the 3 core takeaways in your Journal.\n'
          '• Mark your study habit as completed for today!\n\n'
          '💡 **Ready to begin?** Head over to the **Focus Session** tab and launch your study timer!';
    }

    // 7. Focus Recommendations
    if (q.contains('focus recommendation') ||
        q.contains('focus session') ||
        q.contains('pomodoro')) {
      final recommendedMins = _context.energyLevel >= 70 ? 50 : 25;
      final breakMins = _context.energyLevel >= 70 ? 10 : 5;

      return '⚡ **Focus Session Recommendations:**\n\n'
          '• **Current Energy:** ${_context.energyLevel}% (${_context.energyLevel >= 70 ? 'Peak' : 'Moderate'})\n'
          '• **Recommended Focus Block:** **$recommendedMins minutes**\n'
          '• **Recommended Rest Block:** **$breakMins minutes**\n'
          '• **Target Task:** **\'$topTask1\'**\n\n'
          '🎧 **Optimal Focus Protocol:**\n'
          '1. Turn on \"Do Not Disturb\" on your mobile device.\n'
          '2. Put on headphones with ambient or instrumental music.\n'
          '3. Open Intajiyah\'s **Focus Session** tab to start the timer.\n'
          '4. Keep only your target task visible on screen.\n\n'
          'Crush this session! You\'ve got this!';
    }

    // Generic / Open question response
    return '💡 **AI Productivity Insight on \"$query\":**\n\n'
        'Based on your Intajiyah productivity analytics:\n'
        '• **Energy Status:** ${_context.energyLevel}% (${_context.timeOfDay})\n'
        '• **Mood Alignment:** ${_formatMood(_context.mood)}\n'
        '• **Habit Momentum:** ${_context.currentStreak} active days\n'
        '• **Pending Tasks:** ${_context.pendingTasks} remaining (${_context.highPriorityTasks} high focus)\n\n'
        '🎯 **Actionable Guidance:**\n'
        '1. **Prioritize Single-Tasking:** Give complete focus to your immediate priority (**\'$topTask1\'**).\n'
        '2. **Protect Your Streak:** Ensure you log your daily habits before end-of-day.\n'
        '3. **Structured Focus:** Use 25-minute Pomodoro sessions in the Focus Session tab to avoid mental fatigue.\n\n'
        'Would you like me to create a customized study plan, analyze your habits, or review your top tasks in detail?';
  }

  void _resetConversation() {
    setState(() {
      _messages.clear();
      _isThinking = false;
    });
    _applyDefaultGreeting();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: theme.secondaryBackground,
        automaticallyImplyLeading: false,
        elevation: 1,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded,
                    color: theme.primaryText, size: 20),
                onPressed: () => Navigator.of(context).maybePop(),
              ),
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5B21B6), Color(0xFF7C3AED)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(19),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7C3AED).withOpacity(0.35),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(Icons.auto_awesome,
                    color: Colors.white, size: 18),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Intajiyah AI Assistant',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: theme.primaryText,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xFF10B981),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Online • Productivity Coach',
                          style: GoogleFonts.inter(
                            fontSize: 11,
                            color: theme.secondaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.refresh_rounded,
                    color: theme.secondaryText, size: 22),
                tooltip: 'Reset Conversation',
                onPressed: _resetConversation,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Chat message list
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                itemCount: _messages.length + (_isThinking ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _messages.length) {
                    return _buildThinkingBubble(theme);
                  }
                  final msg = _messages[index];
                  return _buildMessageBubble(msg, theme);
                },
              ),
            ),

            // Quick actions bar
            _buildQuickActionsRow(theme),

            // Input bar
            _buildInputBar(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionsRow(FlutterFlowTheme theme) {
    return Container(
      height: 44,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _quickActions.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final action = _quickActions[index];
          return InkWell(
            onTap: () => _sendMessage(action['label'] as String),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: theme.secondaryBackground,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF7C3AED).withOpacity(0.3),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    action['icon'] as IconData,
                    size: 15,
                    color: const Color(0xFF7C3AED),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    action['label'] as String,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: theme.primaryText,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMessageBubble(ChatMessage msg, FlutterFlowTheme theme) {
    final isUser = msg.isUser;
    final timeStr = DateFormat.jm().format(msg.timestamp);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment:
            isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isUser) ...[
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(right: 8, top: 4),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF5B21B6), Color(0xFF7C3AED)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF7C3AED).withOpacity(0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child:
                  const Icon(Icons.auto_awesome, color: Colors.white, size: 16),
            ),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                gradient: isUser
                    ? const LinearGradient(
                        colors: [Color(0xFF5B21B6), Color(0xFF7C3AED)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )
                    : null,
                color: isUser ? null : theme.secondaryBackground,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(18),
                  topRight: const Radius.circular(18),
                  bottomLeft: Radius.circular(isUser ? 18 : 4),
                  bottomRight: Radius.circular(isUser ? 4 : 18),
                ),
                border: isUser
                    ? null
                    : Border.all(
                        color: const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment:
                    isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _FormattedMessageText(
                    text: msg.text,
                    isUser: isUser,
                    theme: theme,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    timeStr,
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      color: isUser ? Colors.white70 : theme.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isUser) ...[
            Container(
              width: 32,
              height: 32,
              margin: const EdgeInsets.only(left: 8, top: 4),
              decoration: BoxDecoration(
                color: theme.primaryText.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: theme.primaryText, size: 18),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildThinkingBubble(FlutterFlowTheme theme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            margin: const EdgeInsets.only(right: 8, top: 4),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5B21B6), Color(0xFF7C3AED)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              shape: BoxShape.circle,
            ),
            child:
                const Icon(Icons.auto_awesome, color: Colors.white, size: 16),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: theme.secondaryBackground,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(18),
              ),
              border: Border.all(color: const Color(0xFFE2E8F0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xFF7C3AED)),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Analyzing productivity data...',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: theme.secondaryText,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputBar(FlutterFlowTheme theme) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      decoration: BoxDecoration(
        color: theme.secondaryBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: theme.primaryBackground,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: const Color(0xFFE2E8F0),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 14),
                  Icon(Icons.chat_bubble_outline_rounded,
                      size: 18, color: theme.secondaryText),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      focusNode: _focusNode,
                      minLines: 1,
                      maxLines: 4,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _sendMessage(),
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: theme.primaryText,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Ask about tasks, habits, focus...',
                        hintStyle: GoogleFonts.inter(
                          fontSize: 14,
                          color: theme.secondaryText,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  if (_hasText)
                    IconButton(
                      icon: const Icon(Icons.close_rounded, size: 18),
                      color: theme.secondaryText,
                      onPressed: () => _textController.clear(),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              gradient: _hasText
                  ? const LinearGradient(
                      colors: [Color(0xFF5B21B6), Color(0xFF7C3AED)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              color: _hasText ? null : const Color(0xFFE2E8F0),
              shape: BoxShape.circle,
              boxShadow: _hasText
                  ? [
                      BoxShadow(
                        color: const Color(0xFF7C3AED).withOpacity(0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: _hasText ? Colors.white : theme.secondaryText,
                size: 22,
              ),
              onPressed: _hasText ? () => _sendMessage() : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _FormattedMessageText extends StatelessWidget {
  const _FormattedMessageText({
    required this.text,
    required this.isUser,
    required this.theme,
  });

  final String text;
  final bool isUser;
  final FlutterFlowTheme theme;

  @override
  Widget build(BuildContext context) {
    if (isUser) {
      return Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 14,
          height: 1.45,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      );
    }

    final lines = text.split('\n');
    final List<Widget> widgets = [];

    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 6));
        continue;
      }

      // Bullet points
      if (line.trim().startsWith('•') || line.trim().startsWith('* ')) {
        final content =
            line.trim().substring(line.trim().startsWith('•') ? 1 : 2).trim();
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6.0, right: 8.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Color(0xFF7C3AED),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                  child: _buildRichSpan(content, theme),
                ),
              ],
            ),
          ),
        );
      } else {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: _buildRichSpan(line, theme),
          ),
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  Widget _buildRichSpan(String line, FlutterFlowTheme theme) {
    final spans = <TextSpan>[];
    final parts = line.split('**');

    for (var i = 0; i < parts.length; i++) {
      final part = parts[i];
      if (part.isEmpty) continue;
      final isBold = i % 2 == 1;

      spans.add(
        TextSpan(
          text: part,
          style: GoogleFonts.inter(
            fontSize: 14,
            height: 1.45,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isBold ? theme.primaryText : theme.primaryText,
          ),
        ),
      );
    }

    return RichText(
      text: TextSpan(children: spans),
    );
  }
}
