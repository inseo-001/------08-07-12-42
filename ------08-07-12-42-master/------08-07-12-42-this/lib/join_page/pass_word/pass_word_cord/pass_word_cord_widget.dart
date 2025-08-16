import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pass_word_cord_model.dart';
export 'pass_word_cord_model.dart';

class PassWordCordWidget extends StatefulWidget {
  const PassWordCordWidget({super.key});

  static String routeName = 'PassWordCord';
  static String routePath = '/passWordCord';

  @override
  State<PassWordCordWidget> createState() => _PassWordCordWidgetState();
}

class _PassWordCordWidgetState extends State<PassWordCordWidget> {
  late PassWordCordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassWordCordModel());
    _model.pinCodeFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 헤더: 뒤로가기
                Row(
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8,
                      buttonSize: 40,
                      icon: Icon(Icons.arrow_back,
                          color: theme.primaryText, size: 22),
                      onPressed: () => context.pushNamed(PassWordFindWidget.routeName),
                    ),
                  ],
                ),

                const SizedBox(height: 8),
                Text(
                  '메세지를 확인해주세요',
                  style: theme.titleLarge.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FontWeight.w900,
                      fontStyle: theme.titleLarge.fontStyle,
                    ),
                    fontSize: 22,
                    letterSpacing: 0,
                  ),
                ),
                const SizedBox(height: 6),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  children: [
                    Text(
                      '010 4689 7844',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        color: const Color(0xFF060606),
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      '으로 코드를 보냈습니다',
                      style: theme.bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: theme.bodyMedium.fontWeight,
                          fontStyle: theme.bodyMedium.fontStyle,
                        ),
                        fontSize: 12,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // 핀코드 입력
                Center(
                  child: PinCodeTextField(
                    autoDisposeControllers: false,
                    appContext: context,
                    length: 4,
                    textStyle: theme.bodyLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight: theme.bodyLarge.fontWeight,
                        fontStyle: theme.bodyLarge.fontStyle,
                      ),
                      letterSpacing: 0,
                    ),
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    enableActiveFill: false,
                    autoFocus: true,
                    focusNode: _model.pinCodeFocusNode,
                    enablePinAutofill: false,
                    errorTextSpace: 16,
                    showCursor: true,
                    cursorColor: theme.primary,
                    obscureText: false,
                    hintCharacter: '*',
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      fieldHeight: 48,
                      fieldWidth: 48,
                      borderWidth: 2,
                      borderRadius: BorderRadius.circular(12),
                      shape: PinCodeFieldShape.box,
                      activeColor: theme.primaryText,
                      inactiveColor: theme.alternate,
                      selectedColor: theme.primary,
                    ),
                    controller: _model.pinCodeController,
                    onChanged: (_) {},
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: _model.pinCodeControllerValidator.asValidator(context),
                  ),
                ),

                const SizedBox(height: 24),

                // 인증 완료 버튼
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FFButtonWidget(
                    onPressed: () => context.pushNamed(PassworREWidget.routeName),
                    text: '인증완료',
                    options: FFButtonOptions(
                      height: 48,
                      color: const Color(0xFF0E1534),
                      elevation: 0,
                      textStyle: theme.titleSmall.override(
                        font: GoogleFonts.interTight(
                          fontWeight: theme.titleSmall.fontWeight,
                          fontStyle: theme.titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        letterSpacing: 0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // 코드 재발송 + 타이머
                Row(
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        // TODO: 재발송 로직 연결
                      },
                      text: '코드 다시 보내기',
                      options: FFButtonOptions(
                        height: 36,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        color: theme.info,
                        elevation: 0,
                        textStyle: theme.titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: theme.titleSmall.fontWeight,
                            fontStyle: theme.titleSmall.fontStyle,
                          ),
                          color: theme.primaryText,
                          letterSpacing: 0,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const Spacer(),
                    FlutterFlowTimer(
                      initialTime: _model.timerInitialTimeMs,
                      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        milliSecond: false,
                      ),
                      controller: _model.timerController,
                      updateStateInterval: const Duration(seconds: 1),
                      onChanged: (value, displayTime, shouldUpdate) {
                        _model.timerMilliseconds = value;
                        _model.timerValue = displayTime;
                        if (shouldUpdate) safeSetState(() {});
                      },
                      textAlign: TextAlign.start,
                      style: theme.headlineSmall.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w300,
                          fontStyle: theme.headlineSmall.fontStyle,
                        ),
                        fontSize: 18,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
