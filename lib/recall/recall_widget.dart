import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../workoutschedule/workoutschedule_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecallWidget extends StatefulWidget {
  const RecallWidget({
    Key key,
    this.calorie,
  }) : super(key: key);

  final DocumentReference calorie;

  @override
  _RecallWidgetState createState() => _RecallWidgetState();
}

class _RecallWidgetState extends State<RecallWidget> {
  String breakfastValue;
  String lunchValue;
  String dinnerValue;
  int tCalorie;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CalorietableRecord>>(
      stream: queryCalorietableRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<CalorietableRecord> recallCalorietableRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final recallCalorietableRecord = recallCalorietableRecordList.isNotEmpty
            ? recallCalorietableRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
            child: AppBar(
              backgroundColor: Color(0xFFC4FCA3),
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 25, 0, 0),
                child: Text(
                  'LET\'S RECALL THE DAY',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Noto Serif',
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
                              'oats milk',
                              'yogurt',
                              'egg&milk',
                              'cereals'
                            ].toList(),
                            onChanged: (val) =>
                                setState(() => breakfastValue = val),
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
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
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
                          child: StreamBuilder<List<UserstableRecord>>(
                            stream: queryUserstableRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<UserstableRecord> lunchUserstableRecordList =
                                  snapshot.data;
                              return FlutterFlowDropDown(
                                options: [
                                  'chicken biriyani',
                                  'mutton biriyani',
                                  'veg biriyani',
                                  'egg biriyani'
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => lunchValue = val),
                                width: 180,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: 'your lunch',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              );
                            },
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
                          child: StreamBuilder<List<UserstableRecord>>(
                            stream: queryUserstableRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<UserstableRecord>
                                  dinnerUserstableRecordList = snapshot.data;
                              return FlutterFlowDropDown(
                                options: [
                                  'chicken biriyani',
                                  'mutton biriyani',
                                  'veg biriyani',
                                  'egg biriyani'
                                ].toList(),
                                onChanged: (val) =>
                                    setState(() => dinnerValue = val),
                                width: 180,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                hintText: 'your dinner',
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      tCalorie = await actions.calcCalories(
                        breakfastValue,
                        lunchValue,
                        dinnerValue,
                      );

                      final calorietableCreateData =
                          createCalorietableRecordData(
                        calorie: tCalorie,
                        username: currentUserDocument?.username,
                        timestamp: getCurrentTimestamp,
                      );
                      await CalorietableRecord.collection
                          .doc()
                          .set(calorietableCreateData);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WorkoutscheduleWidget(),
                        ),
                      );

                      setState(() {});
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFC4FCA3),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
