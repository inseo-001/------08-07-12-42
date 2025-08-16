import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sleepover_main_model.dart';
export 'sleepover_main_model.dart';


class SleepoverMainWidget extends StatefulWidget {
  const SleepoverMainWidget({super.key});

  static String routeName = 'SleepoverMain';
  static String routePath = '/sleepoverMain';

  @override
  State<SleepoverMainWidget> createState() => _SleepoverMainWidgetState();
}

class _SleepoverMainWidgetState extends State<SleepoverMainWidget> {
  late SleepoverMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SleepoverMainModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
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
                padding: const EdgeInsets.fromLTRB(10, 0, 16, 12),
                child: Row(
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 9,
                      buttonSize: 40,
                      icon: const Icon(Icons.keyboard_backspace,
                          color: Colors.black, size: 26),
                      onPressed: () {
                        if (Navigator.of(context).canPop()) {
                          context.pop(); // 진짜 뒤로가기
                        } else {
                          // 스택이 없으면 메뉴로 이동 (대체)
                          context.goNamed(MenuMainWidget.routeName);
                        }
                      }
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('외박 신청',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: theme.bodyMedium.fontStyle,
                                ),
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(height: 2),
                          Text('외박 신청 및 현황 확인',
                              style: theme.labelMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: theme.labelMedium.fontWeight,
                                  fontStyle: theme.labelMedium.fontStyle,
                                ),
                                fontSize: 10,
                                letterSpacing: 0,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // 구분선
              Container(height: 0.5, color: const Color(0xFFC1BDBD)),

              // ===== 섹션: 외박 신청하기 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today_outlined,
                        color: Color(0xFF0184FB), size: 30),
                    const SizedBox(width: 10),
                    Text('외박 신청하기',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 22,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),

              _FieldLabel(text: '외박 기간'),
              // 날짜 입력 + 캘린더 버튼
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 12, 30, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFC3BFBF)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            hintText: '날짜를 선택해주세요.',
                            hintStyle: theme.labelLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: theme.labelLarge.fontWeight,
                                fontStyle: theme.labelLarge.fontStyle,
                              ),
                              color: const Color(0xFF7C7C7E),
                              fontSize: 14,
                              letterSpacing: 0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: theme.bodyMedium,
                          cursorColor: theme.primaryText,
                          validator: _model.textController1Validator.asValidator(context),
                          readOnly: true,
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          // TODO: showDateRangePicker 등 연결
                        },
                        text: '',
                        icon: const Icon(Icons.calendar_today, size: 18),
                        options: FFButtonOptions(
                          width: 48,
                          height: 36,
                          color: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.all(0),
                          borderRadius: BorderRadius.circular(8),
                          textStyle: theme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              _FieldLabel(text: '외박 장소'),
              _TextInput(
                controller: _model.textController2,
                focusNode: _model.textFieldFocusNode2,
                hint: '외박할 장소를 입력하세요.',
              ),

              _FieldLabel(text: '비상 연락처'),
              _TextInput(
                controller: _model.textController3,
                focusNode: _model.textFieldFocusNode3,
                hint: '비상시 연락받을 전화번호',
                keyboardType: TextInputType.phone,
              ),

              _FieldLabel(text: '외박 사유'),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 12, 30, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: theme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFC3BFBF)),
                  ),
                  child: TextFormField(
                    controller: _model.textController4,
                    focusNode: _model.textFieldFocusNode4,
                    maxLines: 6,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      hintText: '외박 사유를 상세히 작성해주세요',
                      hintStyle: theme.labelLarge.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.labelLarge.fontWeight,
                          fontStyle: theme.labelLarge.fontStyle,
                        ),
                        color: const Color(0xFF7C7C7E),
                        fontSize: 14,
                        letterSpacing: 0,
                      ),
                      border: InputBorder.none,
                    ),
                    style: theme.bodyMedium,
                    cursorColor: theme.primaryText,
                    validator: _model.textController4Validator.asValidator(context),
                  ),
                ),
              ),

              // 제출 버튼
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: FFButtonWidget(
                    onPressed: () {
                      // TODO: 제출 로직
                    },
                    text: '외박 신청 제출',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 44,
                      color: const Color(0xFF0E1534),
                      textStyle: theme.titleMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w500,
                          fontStyle: theme.titleMedium.fontStyle,
                        ),
                        color: const Color(0xFFDADEE9),
                        fontSize: 16,
                        letterSpacing: 0,
                      ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              // ===== 섹션: 신청 현황 =====
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 28, 25, 0),
                child: Row(
                  children: [
                    const Icon(Icons.access_time, color: Color(0xFF0184FB), size: 30),
                    const SizedBox(width: 10),
                    Text('신청 현황',
                        style: theme.bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: theme.bodyMedium.fontStyle,
                          ),
                          fontSize: 22,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(25, 12, 25, 0),
                child: _StatusCard(
                  location: '서울시 강남구',
                  statusText: '승인',
                  statusColor: const Color(0xFF11BD4A),
                  period: '2024-03-20 ~ 2024-03-22',
                  requestDate: '2024-03-18',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 12, 25, 24),
                child: _StatusCard(
                  location: '부산시 해운대구',
                  statusText: '대기',
                  statusColor: const Color(0xFFD87519),
                  period: '2024-03-20 ~ 2024-03-22',
                  requestDate: '2024-03-18',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// ===== 재사용 소형 위젯들 =====
class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel({required this.text});
  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Text(
        text,
        style: theme.bodyMedium.override(
          font: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontStyle: theme.bodyMedium.fontStyle,
          ),
          fontSize: 18,
          letterSpacing: 0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _TextInput extends StatelessWidget {
  final TextEditingController? controller; // ← ? 로 변경
  final FocusNode? focusNode;
  final String hint;
  final TextInputType? keyboardType;
  const _TextInput({
    required this.controller,
    required this.focusNode,
    required this.hint,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 12, 30, 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.secondaryBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFC3BFBF)),
        ),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            hintText: hint,
            hintStyle: theme.labelLarge.override(
              font: GoogleFonts.inter(
                fontWeight: theme.labelLarge.fontWeight,
                fontStyle: theme.labelLarge.fontStyle,
              ),
              color: const Color(0xFF7C7C7E),
              fontSize: 14,
              letterSpacing: 0,
            ),
            border: InputBorder.none,
          ),
          style: theme.bodyMedium,
          cursorColor: theme.primaryText,
        ),
      ),
    );
  }
}

class _StatusCard extends StatelessWidget {
  final String location;
  final String period;
  final String requestDate;
  final String statusText;
  final Color statusColor;

  const _StatusCard({
    required this.location,
    required this.period,
    required this.requestDate,
    required this.statusText,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.secondaryBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFC3BFBF)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 첫 줄: 위치 + 상태 배지
            Row(
              children: [
                const Icon(Icons.location_on_rounded,
                    color: Color(0xFFB0B2B8), size: 20),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.bodyMedium.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.normal,
                        fontStyle: theme.bodyMedium.fontStyle,
                      ),
                      color: const Color(0xFF14181B),
                      fontSize: 15,
                      letterSpacing: 0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    statusText,
                    style: theme.titleMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.w500,
                        fontStyle: theme.titleMedium.fontStyle,
                      ),
                      color: const Color(0xFFF6F2F2),
                      fontSize: 13,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text('기간 : $period',
                style: theme.bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: theme.bodyMedium.fontWeight,
                    fontStyle: theme.bodyMedium.fontStyle,
                  ),
                  color: const Color(0xFF88898D),
                  letterSpacing: 0,
                )),
            const SizedBox(height: 2),
            Text('신청일 : $requestDate',
                style: theme.bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: theme.bodyMedium.fontWeight,
                    fontStyle: theme.bodyMedium.fontStyle,
                  ),
                  color: const Color(0xFF88898D),
                  letterSpacing: 0,
                )),
          ],
        ),
      ),
    );
  }
}
