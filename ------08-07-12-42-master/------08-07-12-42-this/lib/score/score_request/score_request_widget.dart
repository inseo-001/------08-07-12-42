import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'score_request_model.dart';
export 'score_request_model.dart';

class ScoreRequestWidget extends StatefulWidget {
  const ScoreRequestWidget({super.key});

  static String routeName = 'ScoreRequest';
  static String routePath = '/scoreRequest';

  @override
  State<ScoreRequestWidget> createState() => _ScoreRequestWidgetState();
}

class _ScoreRequestWidgetState extends State<ScoreRequestWidget> {
  late ScoreRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScoreRequestModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                        // Header
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                          child: Row(
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 9.0,
                                buttonSize: 40.0,
                                icon: const Icon(Icons.keyboard_backspace,
                                    color: Colors.black, size: 24.0),
                                onPressed: () => context.pop(),
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
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
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
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // divider
                        Container(height: 0.5, color: const Color(0xFFC1BDBD)),

                        // 신청 유형
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '신청 유형',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('상점 신청'),
                                    ChipData('벌점 신고'),
                                  ],
                                  onChanged: (val) => safeSetState(() =>
                                  _model.choiceChipsValue =
                                      val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFF39EF99),
                                    textStyle: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight:
                                        theme.bodyMedium.fontWeight,
                                        fontStyle: theme.bodyMedium.fontStyle,
                                      ),
                                      color: theme.info,
                                    ),
                                    iconColor: Colors.white,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFFFDFDFD),
                                    textStyle: theme.bodyMedium.override(
                                      font: GoogleFonts.inter(
                                        fontWeight:
                                        theme.bodyMedium.fontWeight,
                                        fontStyle: theme.bodyMedium.fontStyle,
                                      ),
                                      color: theme.secondaryText,
                                    ),
                                    iconColor: Colors.black,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller: _model
                                      .choiceChipsValueController ??=
                                      FormFieldController<List<String>>([]),
                                  wrapped: true,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 신청 사유 (드롭다운)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '신청 사유',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                FlutterFlowDropDown<String>(
                                  controller:
                                  _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: const [
                                    '학과/학교 공로',
                                    '생활태도 우수',
                                    '봉사/기타',
                                  ],
                                  onChanged: (val) =>
                                      safeSetState(() => _model.dropDownValue = val),
                                  width: double.infinity,
                                  height: 44.0,
                                  textStyle: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15.0,
                                  ),
                                  hintText: '사유를 선택해주세요',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: theme.secondaryText,
                                  ),
                                  fillColor: theme.secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 상세 내용 (멀티라인)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '상세 내용',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: false,
                                  textInputAction: TextInputAction.newline,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null, // 내용에 맞게 늘어남
                                  minLines: 6,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: '상세한 내용을 작성해주세요.',
                                    hintStyle: theme.labelLarge.override(
                                      font: GoogleFonts.inter(
                                        fontWeight:
                                        theme.labelLarge.fontWeight,
                                        fontStyle:
                                        theme.labelLarge.fontStyle,
                                      ),
                                      color: const Color(0xFF7C7C7E),
                                      fontSize: 13.0,
                                    ),
                                    filled: true,
                                    fillColor: theme.secondaryBackground,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight:
                                      theme.bodyMedium.fontWeight,
                                      fontStyle:
                                      theme.bodyMedium.fontStyle,
                                    ),
                                  ),
                                  cursorColor: theme.primaryText,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 증빙 자료 (선택)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                          child: _Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '증빙 자료 (선택)',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        // TODO: 파일 선택 로직 연결
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text('파일 선택 버튼 탭'),
                                        ));
                                      },
                                      text: '파일 선택',
                                      options: FFButtonOptions(
                                        height: 36.0,
                                        padding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        color: const Color(0xFFDBD9D9),
                                        textStyle: theme.titleSmall.override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                            theme.titleSmall.fontStyle,
                                          ),
                                          color: const Color(0xFF090909),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                            color: Color(0xFFC9C7C7)),
                                        borderRadius:
                                        BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        '선택된 파일 없음',
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.bodyMedium.override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                            theme.bodyMedium.fontWeight,
                                            fontStyle:
                                            theme.bodyMedium.fontStyle,
                                          ),
                                          color: const Color(0xFF7C7C7E),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  '사진 등의 증빙 자료가 있으면 첨부해주세요.',
                                  style: theme.bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: theme.bodyMedium.fontStyle,
                                    ),
                                    color: const Color(0xFF7C7C7E),
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // 유의사항
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE6F2FF),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                _NoticeTitle(),
                                SizedBox(height: 6),
                                _BlueBullet(text: '허위 신청 시 벌점이 부과될 수 있습니다.'),
                                _BlueBullet(text: '신청 후 관리자 검토를 거쳐 승인됩니다.'),
                                _BlueBullet(text: '증빙 자료가 있으면 신청 승인에 도움이 됩니다.'),
                              ],
                            ),
                          ),
                        ),

                        // 제출 버튼
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
                          child: FFButtonWidget(
                            onPressed: () {
                              // TODO: 제출 처리
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('신청이 제출되었습니다.')),
                              );
                            },
                            text: '신청하기',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 44.0,
                              color: const Color(0xFF3169E5),
                              textStyle: theme.titleMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w300,
                                  fontStyle: theme.titleMedium.fontStyle,
                                ),
                                color: const Color(0xFFDADEE9),
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
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

/// 공통 카드 컴포넌트
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
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFFC3BFBF)),
      ),
      child: child,
    );
  }
}

/// 유의사항 제목
class _NoticeTitle extends StatelessWidget {
  const _NoticeTitle();

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Text(
      '유의사항',
      style: theme.bodyMedium.override(
        font: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontStyle: theme.bodyMedium.fontStyle,
        ),
        color: const Color(0xFF0257FF),
        fontSize: 17.0,
        letterSpacing: 0.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

/// 파란 불릿 문장
class _BlueBullet extends StatelessWidget {
  final String text;
  const _BlueBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 7),
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xFF0257FF),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: theme.bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: theme.bodyMedium.fontWeight,
                  fontStyle: theme.bodyMedium.fontStyle,
                ),
                color: const Color(0xFF0257FF),
                letterSpacing: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
