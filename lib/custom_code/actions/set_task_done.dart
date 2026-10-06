// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future setTaskDone(DocumentReference taskRef, bool done) async {
  final batch = FirebaseFirestore.instance.batch();
  final subs = await taskRef.collection('subtasks').get();
  for (final d in subs.docs) {
    batch.update(d.reference, {'is_done': done});
  }
  batch.update(taskRef, {
    'status': done ? 'completed' : 'pending',
    'completed_at': done ? FieldValue.serverTimestamp() : FieldValue.delete(),
  });
  await batch.commit();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
