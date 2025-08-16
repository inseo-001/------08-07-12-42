import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notice_main_model.dart';
export 'notice_main_model.dart';

class NoticeMainWidget extends StatefulWidget {
  const NoticeMainWidget({super.key});

  static String routeName = 'NoticeMain';
  static String routePath = '/noticeMain';

  @override
  State<NoticeMainWidget> createState() => _NoticeMainWidgetState();
}

class _NoticeMainWidgetState extends State<NoticeMainWidget> {
  late NoticeMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoticeMainModel());
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    children: [
                      // 헤더
                      Row(
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8,
                            buttonSize: 40,
                            icon: Icon(
                              Icons.arrow_back,
                              color: theme.primaryText,
                              size: 24,
                            ),
                            onPressed: () {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              } else {
                                context.pushNamed(HomePageWidget.routeName);
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

                      const SizedBox(height: 4),

                      // 서브 설명
                      Text(
                        '기숙사 운영 관련 중요한 소식들을 확인하세요',
                        style: theme.labelSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: theme.labelSmall.fontWeight,
                            fontStyle: theme.labelSmall.fontStyle,
                          ),
                          letterSpacing: 0,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 읽지 않은 공지 안내
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7EF),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFDFAC85)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.error_outline_outlined,
                                  color: Color(0xFFD96D35), size: 22),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _NoticeInfoText(
                                      text: '읽지 않은 공지사항',
                                      color: Color(0xFFB35C2B),
                                      isSmall: false,
                                    ),
                                    SizedBox(height: 4),
                                    _NoticeInfoText(
                                      text: '2개의 새로운 공지사항이 있습니다',
                                      color: Color(0xFFA06030),
                                      isSmall: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 공지 카드들
                      _NoticeCard(
                        onTap: () => context.pushNamed(NoticeBigWidget.routeName),
                        bg: const Color(0xFFE0ECFD),
                        border: const Color(0xFFA5CEFD),
                        chips: const [
                          _ChipSpec(text: '중요', bg: Color(0xFFFBC9C9), fg: Color(0xFFF80808)),
                          _ChipSpec(text: 'NEW', bg: Color(0xFFF80808), fg: Colors.white),
                        ],
                        leading: const Icon(Icons.push_pin_outlined,
                            color: Color(0xFFD96D35), size: 16),
                        title: '겨울 방학 기간 출입 안내',
                        date: '2024-12-15',
                        time: '14:30',
                        views: '30',
                        likes: '156',
                      ),

                      const SizedBox(height: 14),

                      _NoticeCard(
                        onTap: () {},
                        bg: const Color(0xFFE0ECFD),
                        border: const Color(0xFFA5CEFD),
                        chips: const [
                          _ChipSpec(text: '일반', bg: Color(0xFFAAB1EC), fg: Color(0xFF1608F8)),
                        ],
                        title: '세탁실이용 시간 연장',
                        date: '2024-12-15',
                        time: '14:30',
                        views: '30',
                        likes: '156',
                      ),

                      const SizedBox(height: 14),

                      _NoticeCard(
                        onTap: () {},
                        bg: const Color(0xFFE0ECFD),
                        border: const Color(0xFFA5CEFD),
                        chips: const [
                          _ChipSpec(text: '이벤트', bg: Color(0x6BF856D4), fg: Color(0xFFC808F8)),
                        ],
                        title: '겨울 방학 기간 출입 안내',
                        date: '2024-12-15',
                        time: '14:30',
                        views: '156',
                        likes: '156',
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

/// ====== 내부 재사용 위젯들 ======

class _NoticeInfoText extends StatelessWidget {
  final String text;
  final Color color;
  final bool isSmall;

  const _NoticeInfoText({
    super.key,
    required this.text,
    required this.color,
    required this.isSmall,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Text(
      text,
      style: (isSmall ? theme.bodyMedium : theme.bodyMedium).override(
        font: GoogleFonts.inter(
          fontWeight: theme.bodyMedium.fontWeight,
          fontStyle: theme.bodyMedium.fontStyle,
        ),
        color: color,
        fontSize: isSmall ? 11 : 13,
        letterSpacing: 0,
      ),
    );
  }
}

class _ChipSpec {
  final String text;
  final Color bg;
  final Color fg;
  const _ChipSpec({required this.text, required this.bg, required this.fg});
}

class _NoticeCard extends StatelessWidget {
  final VoidCallback onTap;
  final Color bg;
  final Color border;
  final List<_ChipSpec> chips;
  final Widget? leading;
  final String title;
  final String date;
  final String time;
  final String views;
  final String likes;

  const _NoticeCard({
    super.key,
    required this.onTap,
    required this.bg,
    required this.border,
    required this.chips,
    this.leading,
    required this.title,
    required this.date,
    required this.time,
    required this.views,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: border),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 아이콘 + 칩
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (leading != null) ...[
                    leading!,
                    const SizedBox(width: 6),
                  ],
                  Flexible(
                    child: Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        for (final c in chips)
                          Container(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: c.bg,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              c.text,
                              style: theme.displayLarge.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: theme.displayLarge.fontWeight,
                                  fontStyle: theme.displayLarge.fontStyle,
                                ),
                                color: c.fg,
                                fontSize: 10,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              // 제목
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.headlineSmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w600,
                    fontStyle: theme.headlineSmall.fontStyle,
                  ),
                  fontSize: 15,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),

              // 날짜/시간 + 조회/좋아요
              Row(
                children: [
                  Flexible(
                    child: Wrap(
                      spacing: 10,
                      children: [
                        Text(
                          date,
                          style: theme.labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.labelSmall.fontWeight,
                              fontStyle: theme.labelSmall.fontStyle,
                            ),
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          time,
                          style: theme.labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.labelSmall.fontWeight,
                              fontStyle: theme.labelSmall.fontStyle,
                            ),
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.remove_red_eye,
                          color: Color(0xFFA5A5A5), size: 16),
                      const SizedBox(width: 4),
                      Text(
                        views,
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
                        likes,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
