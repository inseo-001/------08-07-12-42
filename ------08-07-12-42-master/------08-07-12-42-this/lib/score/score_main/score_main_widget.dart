import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'score_main_model.dart';
export 'score_main_model.dart';

class ScoreMainWidget extends StatefulWidget {
  const ScoreMainWidget({super.key});

  static String routeName = 'ScoreMain';
  static String routePath = '/scoreMain';

  @override
  State<ScoreMainWidget> createState() => _ScoreMainWidgetState();
}

class _ScoreMainWidgetState extends State<ScoreMainWidget> {
  late ScoreMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScoreMainModel());
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              final h = constraints.maxHeight;
              return SingleChildScrollView(
                padding: EdgeInsets.zero,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: h),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // 상단바
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Row(
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 9.0,
                                buttonSize: 40.0,
                                icon: const Icon(
                                  Icons.keyboard_backspace,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  Navigator.maybePop(context);
                                },
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '상점 & 벌점',
                                      style: theme.bodyMedium.override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                          theme.bodyMedium.fontStyle,
                                        ),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '상점 확인 및 상점 신청',
                                      style: theme.labelMedium.override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          theme.labelMedium.fontWeight,
                                          fontStyle:
                                          theme.labelMedium.fontStyle,
                                        ),
                                        fontSize: 10,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // 구분선
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          height: 0.5,
                          width: double.infinity,
                          color: const Color(0xFFC1BDBD),
                        ),

                        // 현재 점수 카드
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '현재 점수',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Center(
                                  child: Text(
                                    '0점',
                                    style: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        theme.bodyMedium.fontStyle,
                                      ),
                                      color: const Color(0xFF0075E9),
                                      fontSize: 30,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Center(
                                  child: Text(
                                    '현재 상벌점 점수입니다.',
                                    style: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight:
                                        theme.bodyMedium.fontWeight,
                                        fontStyle:
                                        theme.bodyMedium.fontStyle,
                                      ),
                                      color: const Color(0xFF6E7072),
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 상벌점 신청 카드
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '상벌점 신청',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  '상점 또는 벌점을 신청하세요.',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight:
                                      theme.bodyMedium.fontWeight,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    color: const Color(0xFF6E7072),
                                    letterSpacing: 0,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                SizedBox(
                                  width: double.infinity,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF3169E5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '상벌점 신청하기',
                                      style: theme.titleMedium.override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w300,
                                          fontStyle:
                                          theme.titleMedium.fontStyle,
                                        ),
                                        color: const Color(0xFFDADEE9),
                                        fontSize: 15,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 점수 기록 카드
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '점수 기록',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  '상벌점 기록이 없습니다.',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight:
                                      theme.bodyMedium.fontWeight,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    color: const Color(0xFF6E7072),
                                    letterSpacing: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 이용 안내
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                          child: Text(
                            '이용 안내',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 22,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        _BulletLine(
                          text: '매주 1회 조교가 제시하는 QR 코드를 스캔해야 합니다.',
                        ),
                        _BulletLine(
                          text: 'QR 점호는 지정된 시간과 장소에서만 진행됩니다.',
                        ),
                        _BulletLine(
                          text: '카메라 권한을 허용해야 스캔이 가능합니다.',
                        ),
                        _BulletLine(
                          text: 'QR 점호 미참석 시 벌점이 부과됩니다.',
                        ),

                        const SizedBox(height: 24),
                        const Spacer(), // 남는 공간 채워서 하단 여백 안정화
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/// 공통 카드 위젯: 고정 높이 없이 내용에 맞게 늘어남
class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 14, 15, 16),
      decoration: BoxDecoration(
        color: theme.secondaryBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFC3BFBF)),
      ),
      child: child,
    );
  }
}

/// 불릿 라인
class _BulletLine extends StatelessWidget {
  final String text;
  const _BulletLine({required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 6, 24, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 점
          Container(
            margin: const EdgeInsets.only(top: 8, right: 8),
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xFF898585),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          // 텍스트 (줄바꿈 가능)
          Expanded(
            child: Text(
              text,
              style: theme.bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: theme.bodyMedium.fontWeight,
                  fontStyle: theme.bodyMedium.fontStyle,
                ),
                color: const Color(0xFF6E7072),
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
