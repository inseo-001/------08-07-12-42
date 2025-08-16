import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage2_model.dart';
export 'homepage2_model.dart';

/// 아직 입사 신청 수락 안되었을때
class Homepage2Widget extends StatefulWidget {
  const Homepage2Widget({super.key});

  static String routeName = 'Homepage2';
  static String routePath = '/homepage2';

  @override
  State<Homepage2Widget> createState() => _Homepage2WidgetState();
}

class _Homepage2WidgetState extends State<Homepage2Widget> {
  late Homepage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Homepage2Model());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: theme.info,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // 상단 로고 + 학교명
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/shinhan.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      '신한대학교',
                      style: theme.titleLarge.copyWith(
                        fontFamily: GoogleFonts.interTight().fontFamily,
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: theme.titleLarge.fontWeight,
                        fontStyle: theme.titleLarge.fontStyle,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(thickness: 2),

              // 첫 줄 카드 2개
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(23, 10, 0, 0),
                    child: Container(
                      width: 168.9,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFB3B8BD)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.76, -0.47),
                            child: Text(
                              '기숙사',
                              style: theme.bodyMedium.copyWith(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.67, 0.57),
                            child: Text(
                              '입사신청',
                              style: theme.headlineLarge.copyWith(
                                fontFamily: GoogleFonts.interTight().fontFamily,
                                fontSize: 23,
                                letterSpacing: 0,
                                fontWeight: theme.headlineLarge.fontWeight,
                                fontStyle: theme.headlineLarge.fontStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
                    child: Container(
                      width: 168.9,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFB3B8BD)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.87, -0.44),
                            child: Text(
                              '기숙사',
                              style: theme.bodyMedium.copyWith(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.79, 0.59),
                            child: Text(
                              '룸메 매칭',
                              style: theme.headlineLarge.copyWith(
                                fontFamily: GoogleFonts.interTight().fontFamily,
                                fontSize: 23,
                                letterSpacing: 0,
                                fontWeight: theme.headlineLarge.fontWeight,
                                fontStyle: theme.headlineLarge.fontStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // 두 번째 줄 카드 2개
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(23, 10, 0, 0),
                    child: Container(
                      width: 168.9,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFB3B8BD)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.64, -0.47),
                            child: Text(
                              '이번 달 출석률',
                              style: theme.bodyMedium.copyWith(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.67, 0.57),
                            child: Text(
                              '100%',
                              style: theme.headlineLarge.copyWith(
                                fontFamily: GoogleFonts.interTight().fontFamily,
                                fontSize: 23,
                                letterSpacing: 0,
                                fontWeight: theme.headlineLarge.fontWeight,
                                fontStyle: theme.headlineLarge.fontStyle,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0.74, 0.08),
                            child: Icon(
                              Icons.check_circle_outline_sharp,
                              color: Color(0xFF429F74),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
                    child: Container(
                      width: 168.9,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFB3B8BD)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.64, -0.47),
                            child: Text(
                              '읽지 않은 공지',
                              style: theme.bodyMedium.copyWith(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                letterSpacing: 0,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.79, 0.59),
                            child: Text(
                              '3',
                              style: theme.headlineLarge.copyWith(
                                fontFamily: GoogleFonts.interTight().fontFamily,
                                fontSize: 23,
                                letterSpacing: 0,
                                fontWeight: theme.headlineLarge.fontWeight,
                                fontStyle: theme.headlineLarge.fontStyle,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0.74, 0.08),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Color(0xFF3C63B7),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // 공지사항 헤더
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                      child: Text(
                        '공지사항',
                        style: theme.headlineLarge.copyWith(
                          fontFamily: GoogleFonts.interTight().fontFamily,
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: theme.headlineLarge.fontWeight,
                          fontStyle: theme.headlineLarge.fontStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(230, 0, 0, 0),
                      child: SizedBox(
                        width: 63.48,
                        height: 29.8,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () => context.pushNamed(NoticeMainWidget.routeName),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Text(
                                  '더보기',
                                  style: theme.bodyMedium.copyWith(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    fontWeight: theme.bodyMedium.fontWeight,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(5, 8, 0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  color: theme.primaryText,
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 공지사항 카드 (간단 예시)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                      child: Container(
                        width: 346.6,
                        height: 197.9,
                        decoration: BoxDecoration(
                          color: theme.secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFB3B8BD)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 0),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 0, 0),
                                      child: Text(
                                        '겨울 방학 기간 출입 안내',
                                        style: theme.headlineSmall.copyWith(
                                          fontFamily:
                                          GoogleFonts.interTight().fontFamily,
                                          fontSize: 14,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          theme.headlineSmall.fontStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ... 필요시 내용 추가
                          ],
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
