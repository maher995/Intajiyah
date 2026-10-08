// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future toggleSubtask(DocumentReference subtaskRef, bool done) async {
  await subtaskRef.update({'is_done': done});
  final taskRef = subtaskRef.parent.parent;
  if (taskRef == null) return;
  final subs = await taskRef
      .collection('subtasks')
      .get(const GetOptions(source: Source.server));
  final allDone = subs.docs
      .every((d) => (d.data() as Map<String, dynamic>)['is_done'] == true);
  final task = await taskRef.get();
  final current = (task.data() as Map<String, dynamic>?)?['status'];
  if (allDone && current != 'completed') {
    await taskRef.update({
      'status': 'completed',
      'completed_at': FieldValue.serverTimestamp(),
    });
  } else if (!allDone && current == 'completed') {
    await taskRef.update({
      'status': 'pending',
      'completed_at': FieldValue.delete(),
    });
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
