import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TricepsdipsWidget extends StatefulWidget {
  const TricepsdipsWidget({Key key}) : super(key: key);

  @override
  _TricepsdipsWidgetState createState() => _TricepsdipsWidgetState();
}

class _TricepsdipsWidgetState extends State<TricepsdipsWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF0F1113),
                          size: 24,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'Back',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF0F1113),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'TRICEPS DIPS',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      '\nFor the  start position , sit on the chair . Then move your hip off the chair with your hands holding the edge of the chair .\nslwoly bend and strech your arms to make your body up and down . This is a great exercise for the triceps \n\nSTEP- 1\n\nPress into your palms to lift your body and slide forward just far enough that your behind clears the edge of the chair.\n\nSTEP- 2\n\nLower yourself until your elbows are bent between 45 and 90 degrees. Control the movement throughout the range of motion.\n\nSTEP -3\n\nPush yourself back up slowly until your arms are almost straight and repeat.\n\n\n\n',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button-Login pressed ...');
            },
            text: 'START',
            options: FFButtonOptions(
              width: 270,
              height: 50,
              color: Color(0xFF0F1113),
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
              elevation: 3,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 8,
            ),
          ).animated([animationsMap['buttonOnActionTriggerAnimation']]),
        ],
      ),
    );
  }
}
