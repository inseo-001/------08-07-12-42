import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_main_model.dart';
export 'profile_main_model.dart';

class ProfileMainWidget extends StatefulWidget {
  const ProfileMainWidget({super.key});

  static String routeName = 'ProfileMain';
  static String routePath = '/profileMain';

  @override
  State<ProfileMainWidget> createState() => _ProfileMainWidgetState();
}

class _ProfileMainWidgetState extends State<ProfileMainWidget> {
  late ProfileMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileMainModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  // 공통 타이틀 텍스트 스타일
  TextStyle get _titleStyle => FlutterFlowTheme.of(context).bodyMedium.override(
    font: GoogleFonts.inter(
      fontWeight: FontWeight.w900,
      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
    ),
    fontSize: 16,
    letterSpacing: 0,
    fontWeight: FontWeight.w900,
  );

  // 섹션 라인 항목
  Widget _lineItem({
    required String label,
    String? trailingText,
    VoidCallback? onTap,
  }) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      title: Text(
        label,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
          font: GoogleFonts.inter(
            fontWeight:
            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
            fontStyle:
            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
          ),
        ),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: trailingText != null
          ? Text(
        trailingText,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
          font: GoogleFonts.inter(
            fontWeight:
            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
            fontStyle:
            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
          ),
        ),
      )
          : Icon(Icons.arrow_forward_ios,
          size: 18, color: const Color(0xFFC4C4C4)),
      onTap: onTap,
      horizontalTitleGap: 8,
      minLeadingWidth: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    final width = MediaQuery.of(context).size.width;
    final horizontal = 20.0; // 좌우 기본 패딩

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
              // 가운데 정렬 폭 제한(태블릿/넓은 화면 배려)
              final maxContentWidth =
              constraints.maxWidth < 600 ? constraints.maxWidth : 600.0;

              return Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: maxContentWidth),
                  child: ListView(
                    padding:
                    EdgeInsets.symmetric(horizontal: horizontal, vertical: 8),
                    children: [
                      // 상단 뒤로가기
                      Row(
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 9.0,
                            buttonSize: 40.0,
                            icon: const Icon(Icons.arrow_back_ios,
                                color: Colors.black, size: 22),
                            onPressed: () async {
                              context.pushNamed(MenuMainWidget.routeName);
                            },
                          ),
                        ],
                      ),

                      // 프로필 카드
                      Card(
                        elevation: 0,
                        color: theme.secondaryBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: CircleAvatar(
                            radius: 26,
                            backgroundImage: const NetworkImage(
                              'https://picsum.photos/seed/291/600',
                            ),
                            backgroundColor: theme.secondaryBackground,
                          ),
                          title: Text(
                            '이민구',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            '내 정보 및 주소 관리',
                            style: theme.bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.bodyMedium.fontWeight,
                                fontStyle: theme.bodyMedium.fontStyle,
                              ),
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              size: 18, color: Color(0xFFC4C4C4)),
                          onTap: () {},
                        ),
                      ),

                      const SizedBox(height: 16),

                      // 얇은 구분선 (반응형 폭)
                      Container(
                        width: double.infinity,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0x1BBAB9B9),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 커뮤니티 섹션
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0x1BBAB9B9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: Text('커뮤니티', style: _titleStyle),
                            ),
                            const SizedBox(height: 8),

                            _lineItem(
                              label: '최근 활동',
                              onTap: () {},
                            ),
                            _lineItem(
                              label: '이용약관',
                              onTap: () {},
                            ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 이용약관/버전/정책 섹션
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0x1BBAB9B9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: Text('이용약관', style: _titleStyle),
                            ),
                            const SizedBox(height: 8),

                            _lineItem(label: '어플 버전', trailingText: '3.8.17'),
                            _lineItem(label: '서비스 약관', onTap: () {}),
                            _lineItem(label: '개인 정보 보호 정책', onTap: () {}),
                            _lineItem(label: '청소년 보호 정책', onTap: () {}),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 로그아웃 버튼 (가로 꽉 채움)
                      SizedBox(
                        width: double.infinity,
                        child: FFButtonWidget(
                          onPressed: () {
                            // TODO: 로그아웃 처리
                          },
                          text: '로그아웃',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 52,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            color: const Color(0xFF0E1534),
                            textStyle: theme.titleSmall.override(
                              font: GoogleFonts.interTight(
                                fontWeight: theme.titleSmall.fontWeight,
                                fontStyle: theme.titleSmall.fontStyle,
                              ),
                              color: theme.info,
                            ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(8),
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
