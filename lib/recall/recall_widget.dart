import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecallWidget extends StatefulWidget {
  const RecallWidget({Key key}) : super(key: key);

  @override
  _RecallWidgetState createState() => _RecallWidgetState();
}

class _RecallWidgetState extends State<RecallWidget> {
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          backgroundColor: Color(0xFF087B46),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 50, 0, 0),
            child: Text(
              'LET\'S RECALL THE DAY',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                  ),
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                      child: FlutterFlowDropDown(
                        options: [
                          'chicken biriyani',
                          'mutton biriyani',
                          'veg biriyani',
                          'egg biriyani'
                        ].toList(),
                        onChanged: (val) =>
                            setState(() => dropDownValue1 = val),
                        width: 180,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        hintText: 'your breakfast',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: FlutterFlowDropDown(
                        options: [
                          'chicken biriyani',
                          'mutton biriyani',
                          'veg biriyani',
                          'egg biriyani'
                        ].toList(),
                        onChanged: (val) =>
                            setState(() => dropDownValue2 = val),
                        width: 180,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        hintText: 'your breakfast',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: FlutterFlowDropDown(
                        options: [
                          'chicken biriyani',
                          'mutton biriyani',
                          'veg biriyani',
                          'egg biriyani'
                        ].toList(),
                        onChanged: (val) =>
                            setState(() => dropDownValue3 = val),
                        width: 180,
                        height: 50,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                        hintText: 'your breakfast',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
