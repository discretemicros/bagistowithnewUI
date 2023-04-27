import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'check_comp_model.dart';
export 'check_comp_model.dart';

class CheckCompWidget extends StatefulWidget {
  const CheckCompWidget({Key? key}) : super(key: key);

  @override
  _CheckCompWidgetState createState() => _CheckCompWidgetState();
}

class _CheckCompWidgetState extends State<CheckCompWidget> {
  late CheckCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Hello World.........',
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
        ToggleIcon(
          onPressed: () async {
            setState(() => FFAppState().checkBox = !FFAppState().checkBox);
          },
          value: FFAppState().checkBox,
          onIcon: Icon(
            Icons.check_box,
            color: FlutterFlowTheme.of(context).accent2,
            size: 25.0,
          ),
          offIcon: Icon(
            Icons.check_box_outline_blank,
            color: FlutterFlowTheme.of(context).accent2,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
