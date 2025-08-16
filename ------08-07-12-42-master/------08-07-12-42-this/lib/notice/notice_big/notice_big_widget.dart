import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notice_big_model.dart';
export 'notice_big_model.dart';

class NoticeBigWidget extends StatefulWidget {
  const NoticeBigWidget({super.key});

  static String routeName = 'NoticeBig';
  static String routePath = '/noticeBig';

  @override
  State<NoticeBigWidget> createState() => _NoticeBigWidgetState();
}

class _NoticeBigWidgetState extends State<NoticeBigWidget> {
  late NoticeBigModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticeBigModel());
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxContentWidth =
              constraints.maxWidth < 600 ? constraints.maxWidth : 600.0;

              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContentWidth),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    children: [
                      // 헤더 (뒤로가기 + 제목)
                      Row(
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8,
                            buttonSize: 40,
                            icon: Icon(Icons.arrow_back,
                                color: theme.primaryText, size: 24),
                            onPressed: () {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              } else {
                                context.pushNamed(NoticeMainWidget.routeName);
                              }
                            },
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '공지 사항',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.titleLarge.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: theme.titleLarge.fontWeight,
                                  fontStyle: theme.titleLarge.fontStyle,
                                ),
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      // 공지 카드
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFABA5A5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 상단 라인: 핀 아이콘 + "중요" 칩
                              Row(
                                children: [
                                  const Icon(Icons.push_pin_outlined,
                                      color: Color(0xFFD96D35), size: 16),
                                  const SizedBox(width: 6),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFBC9C9),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      '중요',
                                      style: theme.displayLarge.override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                          theme.displayLarge.fontWeight,
                                          fontStyle:
                                          theme.displayLarge.fontStyle,
                                        ),
                                        color: const Color(0xFFF80808),
                                        fontSize: 10,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              // 제목
                              Text(
                                '겨울 방학 기간 출입 안내',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.headlineSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: theme.headlineSmall.fontStyle,
                                  ),
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              const SizedBox(height: 10),

                              // 날짜/시간 + 조회/좋아요
                              Row(
                                children: [
                                  const Icon(Icons.calendar_today_outlined,
                                      color: Color(0xFF57636C), size: 12),
                                  const SizedBox(width: 6),
                                  Text(
                                    '2024-12-15',
                                    style: theme.labelSmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: theme.labelSmall.fontWeight,
                                        fontStyle: theme.labelSmall.fontStyle,
                                      ),
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    '14:30',
                                    style: theme.labelSmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: theme.labelSmall.fontWeight,
                                        fontStyle: theme.labelSmall.fontStyle,
                                      ),
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.remove_red_eye,
                                      color: Color(0xFFA5A5A5), size: 16),
                                  const SizedBox(width: 4),
                                  Text(
                                    '30',
                                    style: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: theme.bodyMedium.fontWeight,
                                        fontStyle: theme.bodyMedium.fontStyle,
                                      ),
                                      fontSize: 11,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Icon(Icons.favorite_border,
                                      color: Color(0xFFA5A5A5), size: 16),
                                  const SizedBox(width: 4),
                                  Text(
                                    '156',
                                    style: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: theme.bodyMedium.fontWeight,
                                        fontStyle: theme.bodyMedium.fontStyle,
                                      ),
                                      fontSize: 11,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 14),

                              // 본문 요약
                              Text(
                                '12월 20일부터 1월 말까지 겨울 방학 기간 동안 출입시간이 변경됩니다',
                                style: theme.bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.bodyMedium.fontWeight,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                  fontSize: 13,
                                  letterSpacing: 0,
                                ),
                              ),

                              const SizedBox(height: 14),

                              // 상세 항목
                              _BulletText(text: '평일: 06:00 ~ 23:00'),
                              const SizedBox(height: 6),
                              _BulletText(text: '주말: 07:00 ~ 22:00'),

                              const SizedBox(height: 14),

                              Text(
                                '출입 시간을 준수해주시기 바랍니다.',
                                style: theme.bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: theme.bodyMedium.fontWeight,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                  fontSize: 13,
                                  letterSpacing: 0,
                                ),
                              ),

                              const SizedBox(height: 16),

                              Divider(
                                thickness: 1.5,
                                color: theme.alternate,
                              ),

                              const SizedBox(height: 8),

                              // 좋아요 버튼(단일 라인)
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: theme.primaryText,
                                    side: const BorderSide(color: Color(0xFFDFDEDE)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 10),
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    // TODO: 좋아요 액션 연결
                                  },
                                  icon: const Icon(Icons.favorite_border_sharp, size: 20),
                                  label: Text(
                                    '좋아요(23)',
                                    style: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: theme.bodyMedium.fontWeight,
                                        fontStyle: theme.bodyMedium.fontStyle,
                                      ),
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
                    ],
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

class _BulletText extends StatelessWidget {
  final String text;
  const _BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 4),
        const Text('•', style: TextStyle(fontSize: 14, color: Color(0xFF444444))),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: theme.bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: theme.bodyMedium.fontWeight,
                fontStyle: theme.bodyMedium.fontStyle,
              ),
              fontSize: 13,
              letterSpacing: 0,
            ),
          ),
        ),
      ],
    );
  }
}
