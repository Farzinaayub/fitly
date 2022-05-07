import '../begi/begi_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../intermediate/intermediate_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TargetpageWidget extends StatefulWidget {
  const TargetpageWidget({Key key}) : super(key: key);

  @override
  _TargetpageWidgetState createState() => _TargetpageWidgetState();
}

class _TargetpageWidgetState extends State<TargetpageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Select Your Option',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
              child: Container(
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0x8A4B39EF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 69, 0, 0),
                  child: Text(
                    'BODY BUILDING',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'BEGGINER',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BegiWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.double_arrow,
                color: Colors.black,
                size: 50,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'INTERMEDIATE',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntermediateWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.double_arrow,
                color: Colors.black,
                size: 50,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 30, 0, 0),
              child: Container(
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                  color: Color(0x8A4B39EF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 70, 0, 0),
                  child: Text(
                    'FITNESS MAINTENANCE',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Roboto',
                        ),
                  ),
                ),
              ),
            ),
            Text(
              'BEGINNER',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            Icon(
              Icons.double_arrow,
              color: Colors.black,
              size: 50,
            ),
            Text(
              'Hello World',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            Icon(
              Icons.double_arrow,
              color: Colors.black,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
