import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

// 👉 프로젝트 구조에 맞게 경로 확인/수정
// (index.dart 에서 NoticeMainWidget을 export 했다면, 아래 import는 생략 가능)
//import '/notice/notice_main_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // ===== 헤더 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: theme.info),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/images/shinhan.png',
                          width: 28,
                          height: 28,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '신한대학교',
                      style: theme.titleLarge.override(
                        font: GoogleFonts.interTight(
                          fontWeight: theme.titleLarge.fontWeight,
                          fontStyle: theme.titleLarge.fontStyle,
                        ),
                        fontSize: 14,
                        letterSpacing: 0,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Divider(thickness: 2, color: theme.alternate),

              // ===== 상단 그라데이션 카드 (방/이름/입주일) =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                child: Card(
                  color: theme.secondaryBackground,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.zero,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF254B8F), Color(0xFF8890DD), Color(0xFF673AB7)],
                        stops: [0.0, 1.0, 1.0],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // A동 301호 / 이민구
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'A동 301호',
                                style: theme.titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: theme.titleMedium.fontWeight,
                                    fontStyle: theme.titleMedium.fontStyle,
                                  ),
                                  color: theme.info,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '이민구',
                                  style: theme.titleMedium.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: theme.titleMedium.fontWeight,
                                      fontStyle: theme.titleMedium.fontStyle,
                                    ),
                                    color: theme.info,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '입주일: 2025년 8월 17일',
                          style: theme.bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyMedium.fontWeight,
                              fontStyle: theme.bodyMedium.fontStyle,
                            ),
                            color: theme.info,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ===== 2열 카드: 이번 달 참석자 수 / 내 뉴스 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: theme.info,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFB3B8BD)),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // 텍스트
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('이번 달 참석자 수',
                                      style: theme.bodyMedium.override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle: theme.bodyMedium.fontStyle,
                                        ),
                                        fontSize: 12,
                                        letterSpacing: 0,
                                      )),
                                  const SizedBox(height: 6),
                                  Text('100%',
                                      style: theme.headlineLarge.override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: theme.headlineLarge.fontWeight,
                                          fontStyle: theme.headlineLarge.fontStyle,
                                        ),
                                        fontSize: 22,
                                        letterSpacing: 0,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.check_circle_outline_sharp, color: Color(0xFF429F74), size: 28),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () => context.pushNamed(NoticeMainWidget.routeName),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xFFB3B8BD)),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // 텍스트
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('내 뉴스',
                                        style: theme.bodyMedium.override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: theme.bodyMedium.fontStyle,
                                          ),
                                          fontSize: 12,
                                          letterSpacing: 0,
                                        )),
                                    const SizedBox(height: 6),
                                    Text('3',
                                        style: theme.headlineLarge.override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: theme.headlineLarge.fontWeight,
                                            fontStyle: theme.headlineLarge.fontStyle,
                                          ),
                                          fontSize: 22,
                                          letterSpacing: 0,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.notifications_outlined, color: Color(0xFF3C63B7), size: 28),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ===== 공지사항 헤더 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Row(
                  children: [
                    Text(
                      '공지사항',
                      style: theme.headlineLarge.override(
                        font: GoogleFonts.interTight(
                          fontWeight: theme.headlineLarge.fontWeight,
                          fontStyle: theme.headlineLarge.fontStyle,
                        ),
                        fontSize: 20,
                        letterSpacing: 0,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => context.pushNamed(NoticeMainWidget.routeName),
                      child: Row(
                        children: [
                          Text(
                            '더보기',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                          const SizedBox(width: 6),
                          FaIcon(FontAwesomeIcons.angleRight, color: theme.primaryText, size: 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ===== 공지사항 카드(샘플) =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFB3B8BD)),
                  ),
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '겨울 방학 기간 출입 안내',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.headlineSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: theme.headlineSmall.fontStyle,
                            ),
                            fontSize: 14,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ===== 발표 헤더 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                child: Row(
                  children: [
                    Text(
                      '발표',
                      style: theme.headlineLarge.override(
                        font: GoogleFonts.interTight(
                          fontWeight: theme.headlineLarge.fontWeight,
                          fontStyle: theme.headlineLarge.fontStyle,
                        ),
                        fontSize: 20,
                        letterSpacing: 0,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => context.pushNamed(NoticeMainWidget.routeName),
                      child: Row(
                        children: [
                          Text(
                            '더 보기',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                          ),
                          const SizedBox(width: 6),
                          FaIcon(FontAwesomeIcons.angleRight, color: theme.primaryText, size: 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ===== 발표 카드(샘플) =====
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFB3B8BD)),
                  ),
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '겨울방학 접근 안내',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.headlineSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: theme.headlineSmall.fontStyle,
                            ),
                            fontSize: 14,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
