import '../cobra/cobra_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pushups/pushups_widget.dart';
import '../tricepsdips/tricepsdips_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChestWidget extends StatefulWidget {
  const ChestWidget({Key key}) : super(key: key);

  @override
  _ChestWidgetState createState() => _ChestWidgetState();
}

class _ChestWidgetState extends State<ChestWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE55A5A),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Color(0xFFE55A5A),
                border: Border.all(
                  color: Color(0xFFE55A5A),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 27, 0, 3),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.chevron_left_sharp,
                      color: Colors.black,
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                      child: Text(
                        'CHEST BEGINNER',
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF010101),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 1,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF040F0A),
                      unselectedLabelColor: Color(0xFF130707),
                      labelStyle: FlutterFlowTheme.of(context).bodyText1,
                      indicatorColor: Color(0xFFC62828),
                      tabs: [
                        Tab(),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CobraWidget(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 20, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(40, 20, 0, 0),
                                                  child: Text(
                                                    'COBRA STRETCH',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            140, 0, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 20, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 20, 0, 0),
                                                child: Text(
                                                  'KNEE PUSH UPS ',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          149, 0, 0, 0),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PushupsWidget(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 20, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(40, 20, 0, 0),
                                                  child: Text(
                                                    'PUSH -UPS',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            188, 0, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TricepsdipsWidget(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 20, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(40, 20, 0, 0),
                                                  child: Text(
                                                    'TRICES DIPS',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            180, 0, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
