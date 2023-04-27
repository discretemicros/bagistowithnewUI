import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_description_model.dart';
export 'product_description_model.dart';

class ProductDescriptionWidget extends StatefulWidget {
  const ProductDescriptionWidget({
    Key? key,
    this.productData,
  }) : super(key: key);

  final dynamic productData;

  @override
  _ProductDescriptionWidgetState createState() =>
      _ProductDescriptionWidgetState();
}

class _ProductDescriptionWidgetState extends State<ProductDescriptionWidget>
    with TickerProviderStateMixin {
  late ProductDescriptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDescriptionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed(
                  'cart',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 200),
                    ),
                  },
                );
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Container(
                      width: double.infinity,
                      height: 430.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 1.0),
                          )
                        ],
                      ),
                      child: Image.network(
                        getJsonField(
                          widget.productData,
                          r'''$.images[:].original_image_url''',
                        ),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          getJsonField(
                            widget.productData,
                            r'''$.name''',
                          ).toString(),
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                        Expanded(
                          child: Text(
                            getJsonField(
                              widget.productData,
                              r'''$.formated_price''',
                            ).toString(),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context).titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                widget.productData,
                                r'''$.description''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 40.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(null),
                              options: ['Small', 'Medium', 'Large'],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue = val),
                              width: 130.0,
                              height: 50.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Select a Size',
                              icon: Icon(
                                Icons.arrow_drop_down_rounded,
                                color: Color(0xFF95A1AC),
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderWidth: 2.0,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 4.0, 8.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            ),
                          ),
                        ),
                        Container(
                          width: 130.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => Icon(
                              Icons.remove_rounded,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            incrementIconBuilder: (enabled) => Icon(
                              Icons.add_rounded,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: GoogleFonts.getFont(
                                'Libre Caslon Display',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                              ),
                            ),
                            count: _model.countControllerValue ??= 1,
                            updateCount: (count) async {
                              setState(
                                  () => _model.countControllerValue = count);
                              setState(() {
                                FFAppState().countcontroller =
                                    _model.countControllerValue!;
                              });
                            },
                            stepSize: 1,
                            minimum: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 350.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 40.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: MainSiteGroup.addToCartCall.call(
                    id: getJsonField(
                      widget.productData,
                      r'''$.images[:].id''',
                    ).toString(),
                    quantity: _model.countControllerValue,
                    token: FFAppState().TokenLocal,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitSquareCircle(
                            color: Color(0xFF73B175),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    final buttonAddToCartResponse = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        await MainSiteGroup.addToCartCall.call(
                          id: getJsonField(
                            widget.productData,
                            r'''$.id''',
                          ).toString(),
                          quantity: _model.countControllerValue,
                          token: FFAppState().TokenLocal,
                        );
                        if (buttonAddToCartResponse.succeeded) {
                          context.pushNamed('Cart1');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Server Error - Problem adding to cart',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      },
                      text: 'Add to Cart',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
