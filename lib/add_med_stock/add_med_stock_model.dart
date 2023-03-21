import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddMedStockModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for batch widget.
  TextEditingController? batchController;
  String? Function(BuildContext, String?)? batchControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Create Document] action in saveButtonMed widget.
  MedicineRecord? res;
  // State field(s) for e_name widget.
  TextEditingController? eNameController;
  String? Function(BuildContext, String?)? eNameControllerValidator;
  // State field(s) for e_desc widget.
  TextEditingController? eDescController;
  String? Function(BuildContext, String?)? eDescControllerValidator;
  // State field(s) for e_quantity widget.
  TextEditingController? eQuantityController;
  String? Function(BuildContext, String?)? eQuantityControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    batchController?.dispose();
    quantityController?.dispose();
    eNameController?.dispose();
    eDescController?.dispose();
    eQuantityController?.dispose();
  }

  /// Additional helper methods are added here.

}
