import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAddressModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for customerPhone widget.
  TextEditingController? customerPhoneController;
  String? Function(BuildContext, String?)? customerPhoneControllerValidator;
  // State field(s) for Firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for customerBuilding widget.
  TextEditingController? customerBuildingController;
  String? Function(BuildContext, String?)? customerBuildingControllerValidator;
  // State field(s) for customerAddress widget.
  TextEditingController? customerAddressController;
  String? Function(BuildContext, String?)? customerAddressControllerValidator;
  // State field(s) for customrPinCode widget.
  TextEditingController? customrPinCodeController;
  String? Function(BuildContext, String?)? customrPinCodeControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (DeleteCustAddress)] action in Button widget.
  ApiCallResponse? apiResultkyu;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    customerPhoneController?.dispose();
    firstnameController?.dispose();
    customerBuildingController?.dispose();
    customerAddressController?.dispose();
    customrPinCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
