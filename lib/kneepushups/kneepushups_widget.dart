import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KneepushupsWidget extends StatefulWidget {
  const KneepushupsWidget({Key key}) : super(key: key);

  @override
  _KneepushupsWidgetState createState() => _KneepushupsWidgetState();
}

class _KneepushupsWidgetState extends State<KneepushupsWidget>
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
                  'KNEE PUSH UPS ',
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
                      'For knee push-ups, begin by performing 2–3 sets of 12–20 repetitions. Choose your sets and repetitions based on your ability to maintain good technique throughout.\n\nSTEP-1\nGet into an all-fours position with your knees and toes flexed and in contact with the floor. Your hips should be over your knees. Your hands should be slightly wider than your shoulders. Grip the ground with your hands and rotate your shoulders outward to engage your lats.\n\nSTEP 2\nBring your hips down so your body forms a straight line from your shoulders to your knees. Pre-tension your shoulders and hips while engaging your core. Your ribs should be down and your pelvis should be slightly tucked. Your chin should remain tucked throughout the movement, as if you were holding an egg under your chin. All repetitions should begin from this starting position.\n\nSTEP 3\nPull your chest toward your hands by bending your elbows. Your shoulder blades should retract as you lower toward the elevated surface.\nLower your body until your upper arms are even with your back. Your elbows should be 45 degrees away from your body, and your wrists should be under your elbows. Pause at the bottom of the movement.\nWhile maintaining your alignment, initiate the upward movement by squeezing your chest and straightening your elbows. Your shoulder blades should protract as you push to the top of the movement. Finish the movement by squeezing your chest and triceps.\n',
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
