import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_main_model.dart';
export 'menu_main_model.dart';

class MenuMainWidget extends StatefulWidget {
  const MenuMainWidget({super.key});

  static String routeName = 'menuMain';
  static String routePath = '/menuMain';

  @override
  State<MenuMainWidget> createState() => _MenuMainWidgetState();
}

class _MenuMainWidgetState extends State<MenuMainWidget> {
  late MenuMainModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuMainModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    final size = MediaQuery.of(context).size;
    // 반응형 사이즈 토큰
    final hPad = 0.06 * size.width;                 // 좌우 패딩
    final vPad = 8.0;                               // 상하 기본 패딩
    final tabHeight = (size.height * 0.055).clamp(40.0, 52.0); // 탭 버튼 높이
    final iconBox = (size.width * 0.15).clamp(50.0, 64.0);     // 서비스 아이콘 박스 한 변
    final rowHeight = (size.height * 0.07).clamp(52.0, 68.0);  // 서비스 행 높이

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
              // ===== 상단바 : 이름 + 검색 + 설정 =====
              Padding(
                padding: EdgeInsets.fromLTRB(hPad, vPad, hPad, vPad),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '이민구 님',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.headlineMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: theme.headlineMedium.fontWeight,
                            fontStyle: theme.headlineMedium.fontStyle,
                          ),
                          color: const Color(0xFF020000),
                          fontSize: 22,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    FlutterFlowIconButton(
                      borderRadius: 8,
                      buttonSize: 40,
                      fillColor: theme.info,
                      icon: const FaIcon(FontAwesomeIcons.search, size: 22),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 4),
                    FlutterFlowIconButton(
                      borderRadius: 8,
                      buttonSize: 40,
                      icon: Icon(Icons.settings_sharp,
                          color: theme.primaryText, size: 24),
                      onPressed: () => context.pushNamed(ProfileMainWidget.routeName),
                    ),
                  ],
                ),
              ),

              // ===== 3개 탭 =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: hPad),
                child: Row(
                  children: [
                    Expanded(
                      child: _TabButton(
                        text: '고객센터',
                        onTap: () {},
                        leftRounded: true,
                        height: tabHeight,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: _TabButton(
                        text: '상점안내',
                        onTap: ()  => context.pushNamed(ScoreMainWidget.routeName),
                        height: tabHeight,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: _TabButton(
                        text: '이용안내',
                        onTap: () {},
                        rightRounded: true,
                        height: tabHeight,
                      ),
                    ),
                  ],
                ),
              ),

              // ===== 섹션 타이틀: 내 상벌점 현황 =====
              Padding(
                padding: EdgeInsets.fromLTRB(hPad, 32, hPad, 0),
                child: Text(
                  '내 상벌점 현황',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w600,
                      fontStyle: theme.headlineMedium.fontStyle,
                    ),
                    color: const Color(0xFF020000),
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // ===== 점수 카드 =====
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: hPad, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '상점',
                            style: theme.titleLarge.override(
                              font: GoogleFonts.interTight(
                                fontWeight: theme.titleLarge.fontWeight,
                                fontStyle: theme.titleLarge.fontStyle,
                              ),
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '15',
                            textAlign: TextAlign.end,
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              color: const Color(0xFF60A9F0),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text('점', style: theme.bodyMedium),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Text(
                            '벌점',
                            style: theme.titleLarge.override(
                              font: GoogleFonts.interTight(
                                fontWeight: theme.titleLarge.fontWeight,
                                fontStyle: theme.titleLarge.fontStyle,
                              ),
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                          Text('10', textAlign: TextAlign.end, style: theme.bodyMedium),
                          const SizedBox(width: 6),
                          Text('점', style: theme.bodyMedium),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // ===== 섹션 타이틀: 모든 서비스 =====
              Padding(
                padding: EdgeInsets.fromLTRB(hPad, 24, hPad, 0),
                child: Text(
                  '모든 서비스',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w600,
                      fontStyle: theme.headlineMedium.fontStyle,
                    ),
                    color: const Color(0xFF020000),
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // ===== 서비스 리스트 =====
              _ServiceRow(
                onTap: () => context.pushNamed(JoinWidget.routeName),
                icon: Icons.calendar_today,
                iconColor: const Color(0xFFFD0412),
                title: '기숙사 입사 신청',
                subtitle: '기숙사 신청',
                contentBg: theme.info,
                hPad: hPad,
                iconBox: iconBox,
                rowHeight: rowHeight,
              ),
              _ServiceRow(
                onTap: () => context.pushNamed(LeaveWidget.routeName),
                icon: Icons.calendar_today,
                iconColor: const Color(0xFF969090),
                title: '기숙사 퇴사 신청',
                subtitle: '기숙사 신청',
                contentBg: theme.info,
                hPad: hPad,
                iconBox: iconBox,
                rowHeight: rowHeight,
              ),
              _ServiceRow(
                onTap: () => context.pushNamed(SleepoverMainWidget.routeName),
                icon: Icons.hotel,
                iconColor: const Color(0xFFDEA0EA),
                title: '외박 신청',
                subtitle: '정기외박 · 상점외박',
                contentBg: Colors.white,
                hPad: hPad,
                iconBox: iconBox,
                rowHeight: rowHeight,
              ),
              _ServiceRow(
                onTap: () => context.pushNamed(CivilcomplaintMainWidget.routeName),
                icon: Icons.edit,
                iconColor: theme.primaryText,
                title: '민원 넣기',
                subtitle: '민원 서비스 · 메세지',
                contentBg: Colors.white,
                hPad: hPad,
                iconBox: iconBox,
                rowHeight: rowHeight,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

/// ===== 내부 위젯들 =====

class _TabButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool leftRounded;
  final bool rightRounded;
  final double height;

  const _TabButton({
    required this.text,
    required this.onTap,
    this.leftRounded = false,
    this.rightRounded = false,
    this.height = 44,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.only(
      topLeft: Radius.circular(leftRounded ? 8 : 0),
      bottomLeft: Radius.circular(leftRounded ? 8 : 0),
      topRight: Radius.circular(rightRounded ? 8 : 0),
      bottomRight: Radius.circular(rightRounded ? 8 : 0),
    );

    final theme = FlutterFlowTheme.of(context);

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: height),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6F7),
          borderRadius: radius,
          border: Border.all(color: const Color(0xFFB4B4B4)),
        ),
        child: FFButtonWidget(
          onPressed: onTap,
          text: text,
          options: FFButtonOptions(
            height: height,
            color: const Color(0xFFF5F6F7),
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            textStyle: theme.titleSmall.override(
              font: GoogleFonts.interTight(
                fontWeight: theme.titleSmall.fontWeight,
                fontStyle: theme.titleSmall.fontStyle,
              ),
              fontSize: 12,
              letterSpacing: 0,
            ),
            borderRadius: radius,
          ),
        ),
      ),
    );
  }
}

class _ServiceRow extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final Color contentBg;

  // 반응형 토큰 전달
  final double hPad;
  final double iconBox;
  final double rowHeight;

  const _ServiceRow({
    required this.onTap,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.contentBg,
    required this.hPad,
    required this.iconBox,
    required this.rowHeight,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);

    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: hPad, vertical: 10),
        child: Row(
          children: [
            Container(
              width: iconBox,
              height: iconBox,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, color: iconColor, size: iconBox * 0.44),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: rowHeight),
                child: Container(
                  decoration: BoxDecoration(
                    color: contentBg,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    children: [
                      // 제목
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.bodyLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: theme.bodyLarge.fontWeight,
                              fontStyle: theme.bodyLarge.fontStyle,
                            ),
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // 서브타이틀
                      Text(
                        subtitle,
                        overflow: TextOverflow.fade,
                        softWrap: false,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
