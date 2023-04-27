import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_comp_model.dart';
export 'review_comp_model.dart';

class ReviewCompWidget extends StatefulWidget {
  const ReviewCompWidget({Key? key}) : super(key: key);

  @override
  _ReviewCompWidgetState createState() => _ReviewCompWidgetState();
}

class _ReviewCompWidgetState extends State<ReviewCompWidget> {
  late ReviewCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
