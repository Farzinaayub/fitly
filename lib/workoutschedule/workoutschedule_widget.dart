import '../feeds/feeds_widget.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
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
            Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        child: AppBar(
          backgroundColor: Color(0xFF1F3428),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 45, 20, 0),
            child: Text(
              'Your workout schedule for tomorrow..',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFF3F6F8),
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
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 200, 0),
                            child: Text(
                              'Knee Push ups',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 23,
                                      ),
                            ),
                          ),
                          FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/tunetank.com_1884_energy-sport_by_rocknstock.mp3',
                              metas: Metas(
                                id: 'tunetank.com_1884_energy-sport_by_rocknstock.mp3-rmktbrjm',
                                title: 'Freedom',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor: Color(0xFF033704),
                            activeTrackColor: Color(0xFF09E20E),
                            elevation: 7,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 270, 0),
                            child: Text(
                              'Burpees',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 23,
                                      ),
                            ),
                          ),
                          FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/tunetank.com_1884_energy-sport_by_rocknstock.mp3',
                              metas: Metas(
                                id: 'tunetank.com_1884_energy-sport_by_rocknstock.mp3-bav1xolj',
                                title: 'Freedom',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor: Color(0xFF033704),
                            activeTrackColor: Color(0xFF09E20E),
                            elevation: 7,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 50, 0),
                            child: Text(
                              'Mountain Climber PushUps',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        fontSize: 23,
                                      ),
                            ),
                          ),
                          FlutterFlowAudioPlayer(
                            audio: Audio(
                              'assets/audios/tunetank.com_1884_energy-sport_by_rocknstock.mp3',
                              metas: Metas(
                                id: 'tunetank.com_1884_energy-sport_by_rocknstock.mp3-ms3xvw0f',
                                title: 'Freedom',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor: Color(0xFF033704),
                            activeTrackColor: Color(0xFF09E20E),
                            elevation: 7,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FeedsWidget(),
                            ),
                          );
                        },
                        text: 'Challenges you have',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF1F3428),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
