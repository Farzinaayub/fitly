import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutscheduleWidget extends StatefulWidget {
  const WorkoutscheduleWidget({Key key}) : super(key: key);

  @override
  _WorkoutscheduleWidgetState createState() => _WorkoutscheduleWidgetState();
}

class _WorkoutscheduleWidgetState extends State<WorkoutscheduleWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.25),
        child: AppBar(
          backgroundColor: Color(0xFF1F3428),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 25, 20, 0),
            child: Text(
              'Your workout schedule for tommorrow..',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lato',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
