import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsof_use_model.dart';
export 'termsof_use_model.dart';

/// 이용약관
class TermsofUseWidget extends StatefulWidget {
  const TermsofUseWidget({super.key});

  static String routeName = 'TermsofUse';
  static String routePath = '/termsofUse';

  @override
  State<TermsofUseWidget> createState() => _TermsofUseWidgetState();
}

class _TermsofUseWidgetState extends State<TermsofUseWidget> {
  late TermsofUseModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // 필수/선택 항목 정의
  bool get agreeCommunity => _model.checkboxValue1 ?? false; // 커뮤니티 이용약관 (필수)
  bool get agreeService => _model.checkboxValue2 ?? false;   // 서비스 이용약관 (필수)
  bool get agreePrivacy => _model.checkboxValue3 ?? false;   // 개인정보 처리방침 (필수)
  bool get agreeAd => _model.checkboxValue4 ?? false;        // 광고 정보 수신 (선택)
  bool get agreeAll => _model.checkboxValue5 ?? false;       // 전체 동의

  bool get isAllRequiredChecked => agreeCommunity && agreeService && agreePrivacy;

  void _setAgreeAll(bool value) {
    safeSetState(() {
      _model.checkboxValue1 = value;
      _model.checkboxValue2 = value;
      _model.checkboxValue3 = value;
      _model.checkboxValue4 = value; // 선택 항목도 함께
      _model.checkboxValue5 = value;
    });
  }

  void _syncAgreeAll() {
    final allNow = agreeCommunity && agreeService && agreePrivacy && agreeAd;
    safeSetState(() => _model.checkboxValue5 = allNow);
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofUseModel());
    // 초기값은 모두 미동의로 시작 (필요 시 조정)
    _model.checkboxValue1 ??= false;
    _model.checkboxValue2 ??= false;
    _model.checkboxValue3 ??= false;
    _model.checkboxValue4 ??= false;
    _model.checkboxValue5 ??= false;
    // ⚠️ 자동 네비게이션 제거 (화면 진입 즉시 다른 페이지로 이동하던 문제 방지)
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Widget _termsBox(BuildContext context, String text) {
    final theme = FlutterFlowTheme.of(context);
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 120, maxHeight: 220),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF57636C)),
      ),
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Text(
            text,
            style: theme.bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: theme.bodyMedium.fontWeight,
                fontStyle: theme.bodyMedium.fontStyle,
              ),
              fontSize: 12,
              letterSpacing: 0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _checkboxLine({
    required BuildContext context,
    required bool value,
    required ValueChanged<bool> onChanged,
    required String label,
    Color? labelColor,
    bool requiredMark = false,
  }) {
    final theme = FlutterFlowTheme.of(context);
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (v) => onChanged(v ?? false),
          side: const BorderSide(width: 2, color: Color(0xFF635D5D)),
          activeColor: theme.primaryBackground,
          checkColor: const Color(0xFF4D81E7),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Flexible(
          child: Text(
            requiredMark ? '$label (필수)' : label,
            overflow: TextOverflow.ellipsis,
            style: theme.bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontStyle: theme.bodyMedium.fontStyle,
              ),
              color: labelColor ?? theme.primaryText,
              letterSpacing: 0,
            ),
          ),
        ),
      ],
    );
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
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    children: [
                      // 헤더
                      Row(
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8,
                            buttonSize: 40,
                            icon: Icon(Icons.arrow_back,
                                color: theme.primaryText, size: 22),
                            onPressed: () {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              } else {
                                context.pushNamed(JoinMainWidget.routeName);
                              }
                            },
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '이용약관',
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

                      const SizedBox(height: 8),
                      Divider(thickness: 1.5, color: theme.alternate),

                      const SizedBox(height: 12),

                      // 1) 커뮤니티 이용약관 (필수)
                      _checkboxLine(
                        context: context,
                        value: agreeCommunity,
                        onChanged: (v) {
                          safeSetState(() => _model.checkboxValue1 = v);
                          _syncAgreeAll();
                        },
                        label: '커뮤니티 이용약관',
                        requiredMark: true,
                      ),
                      const SizedBox(height: 8),
                      _termsBox(
                        context,
                        '제 2 조 (회원의 의무)\n회원은 본 약관 및 관련 법령을 준수해야 하며, 다음 행위를 해서는 안 됩니다:\n'
                            '- 타인의 개인정보 도용 또는 사칭 행위\n'
                            '- 음란물, 욕설, 혐오 표현, 차별적 언사 등 부적절한 게시물 작성\n'
                            '- 허위 정보 유포, 특정 인물 또는 집단에 대한 비방\n'
                            '- 영리 목적의 광고, 홍보성 글 반복 등록\n'
                            '- 커뮤니티 운영을 방해하는 모든 행위\n\n'
                            '회원은 상호 존중을 기반으로 성숙한 커뮤니케이션 문화를 유지해야 합니다.',
                      ),

                      const SizedBox(height: 16),
                      Divider(thickness: 1.5, color: theme.alternate),
                      const SizedBox(height: 12),

                      // 2) 서비스 이용약관 (필수)
                      _checkboxLine(
                        context: context,
                        value: agreeService,
                        onChanged: (v) {
                          safeSetState(() => _model.checkboxValue2 = v);
                          _syncAgreeAll();
                        },
                        label: '서비스 이용약관',
                        requiredMark: true,
                      ),
                      const SizedBox(height: 8),
                      _termsBox(
                        context,
                        '서비스 제공, 장애/점검, 이용 제한, 책임의 한계 등 서비스 이용에 관한 일반 조항이 포함됩니다.\n'
                            '자세한 내용은 서비스 공지 및 정책 변경 고지에 따릅니다.',
                      ),

                      const SizedBox(height: 16),
                      Divider(thickness: 1.5, color: theme.alternate),
                      const SizedBox(height: 12),

                      // 3) 개인정보 처리방침 (필수)
                      _checkboxLine(
                        context: context,
                        value: agreePrivacy,
                        onChanged: (v) {
                          safeSetState(() => _model.checkboxValue3 = v);
                          _syncAgreeAll();
                        },
                        label: '개인정보 처리방침',
                        requiredMark: true,
                      ),
                      const SizedBox(height: 8),
                      _termsBox(
                        context,
                        '수집하는 개인정보의 항목, 수집/이용 목적, 보유 및 이용 기간, 파기 절차 및 방법, '
                            '이용자의 권리와 행사 방법 등에 대한 내용을 담고 있습니다.',
                      ),

                      const SizedBox(height: 16),
                      Divider(thickness: 1.5, color: theme.alternate),
                      const SizedBox(height: 12),

                      // 4) 광고 정보 수신 (선택)
                      _checkboxLine(
                        context: context,
                        value: agreeAd,
                        onChanged: (v) {
                          safeSetState(() => _model.checkboxValue4 = v);
                          _syncAgreeAll();
                        },
                        label: '광고 정보 수신 (선택)',
                        requiredMark: false,
                      ),
                      const SizedBox(height: 8),
                      _termsBox(
                        context,
                        '이벤트, 혜택, 프로모션 정보를 이메일/알림으로 수신할 수 있습니다. 동의하지 않아도 서비스 이용은 가능합니다.',
                      ),

                      const SizedBox(height: 16),
                      Divider(thickness: 1.5, color: theme.alternate),
                      const SizedBox(height: 12),

                      // 전체 동의
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: theme.secondaryBackground,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '위 약관에 모두 동의합니다',
                                style: theme.bodyMedium.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: theme.bodyMedium.fontStyle,
                                  ),
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Checkbox(
                              value: agreeAll,
                              onChanged: (v) => _setAgreeAll(v ?? false),
                              side: const BorderSide(width: 2, color: Color(0xFF635D5D)),
                              activeColor: theme.primaryBackground,
                              checkColor: const Color(0xFF4D81E7),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 다음 버튼
                      SizedBox(
                        width: double.infinity,
                        child: FFButtonWidget(
                          onPressed: isAllRequiredChecked
                              ? () {
                            // 필수 약관 동의 완료 → 다음 화면으로
                            context.pushNamed(JoinMainWidget.routeName);
                          }
                              : null,
                          text: '다음',
                          options: FFButtonOptions(
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            color: const Color(0xFF0E1534),
                            disabledColor: const Color(0xFFBDBDBD),
                            textStyle: theme.titleSmall.override(
                              font: GoogleFonts.interTight(
                                fontWeight: theme.titleSmall.fontWeight,
                                fontStyle: theme.titleSmall.fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0,
                            ),
                            elevation: 0,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).padding.bottom),
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
