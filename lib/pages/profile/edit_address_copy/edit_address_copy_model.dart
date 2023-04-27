import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAddressCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for Phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter Mobile';
    }

    if (val.length < 9) {
      return 'Min 10 numbers are required';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  String? _firstnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Name is required';
    }

    return null;
  }

  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Address is required';
    }

    return null;
  }

  // State field(s) for country widget.
  TextEditingController? countryController;
  String? Function(BuildContext, String?)? countryControllerValidator;
  String? _countryControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Country is required';
    }

    return null;
  }

  // State field(s) for state widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'State is required';
    }

    return null;
  }

  // State field(s) for pincode widget.
  TextEditingController? pincodeController;
  String? Function(BuildContext, String?)? pincodeControllerValidator;
  String? _pincodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Pincode is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (DeleteCustAddress)] action in Button widget.
  ApiCallResponse? apiResultkyu;
  // Stores action output result for [Backend Call - API (EditCustAddress)] action in Button widget.
  ApiCallResponse? apiResultelt;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    phoneControllerValidator = _phoneControllerValidator;
    firstnameControllerValidator = _firstnameControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    countryControllerValidator = _countryControllerValidator;
    stateControllerValidator = _stateControllerValidator;
    pincodeControllerValidator = _pincodeControllerValidator;
  }

  void dispose() {
    phoneController?.dispose();
    firstnameController?.dispose();
    addressController?.dispose();
    countryController?.dispose();
    stateController?.dispose();
    pincodeController?.dispose();
  }

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
