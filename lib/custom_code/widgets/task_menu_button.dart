// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TaskMenuButton extends StatefulWidget {
  const TaskMenuButton({
    super.key,
    this.width,
    this.height,
    this.onDelete,
    this.onAddSubtask,
  });

  final double? width;
  final double? height;
  final Future Function()? onDelete;
  final Future Function()? onAddSubtask;

  @override
  State<TaskMenuButton> createState() => _TaskMenuButtonState();
}

class _TaskMenuButtonState extends State<TaskMenuButton> {
  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return SizedBox(
      width: widget.width ?? 32,
      height: widget.height ?? 32,
      child: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        icon: Icon(Icons.more_vert, size: 20, color: theme.secondaryText),
        color: theme.secondaryBackground,
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onSelected: (value) async {
          if (value == 'delete') {
            await widget.onDelete?.call();
          } else if (value == 'subtask') {
            await widget.onAddSubtask?.call();
          }
        },
        itemBuilder: (context) => [
          PopupMenuItem<String>(
            value: 'subtask',
            child: Row(children: [
              Icon(Icons.add, size: 18, color: theme.primaryText),
              const SizedBox(width: 8),
              Text('Add subtask', style: TextStyle(color: theme.primaryText)),
            ]),
          ),
          PopupMenuItem<String>(
            value: 'delete',
            child: Row(children: [
              const Icon(Icons.delete_outline, size: 18, color: Colors.red),
              const SizedBox(width: 8),
              const Text('Delete task', style: TextStyle(color: Colors.red)),
            ]),
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
