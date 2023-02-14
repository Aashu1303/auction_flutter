import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for inputBid widget.
  TextEditingController? inputBidController;
  String? Function(BuildContext, String?)? inputBidControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    inputBidController?.dispose();
  }

  /// Additional helper methods are added here.

}
