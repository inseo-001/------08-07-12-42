// index.dart
import 'home_page/home_page/home_page_widget.dart';
import 'start_page/start_page/start_page_widget.dart';

// 로그인/가입
import 'sign_up_pasge/login_main/login_main_widget.dart';
import 'join_page/join_main/join_main_widget.dart';
import 'join_page/termsof_use/termsof_use_widget.dart';
import 'join_page/join_complete/join_complete_widget.dart';
import 'join_page/pass_word_find/pass_word_find_widget.dart';
import 'join_page/pass_word/pass_word_cord/pass_word_cord_widget.dart';
import 'join_page/passwor_r_e/passwor_r_e_widget.dart';
import 'join_page/complete_pass_word/complete_pass_word_widget.dart';

// 채팅/프로필/공지
import 'home_page/chating_main/chating_main_widget.dart';
import 'profile/profile_main/profile_main_widget.dart';
import 'home_page/homepage2/homepage2_widget.dart';
import 'notice/notice_main/notice_main_widget.dart';
import 'notice/notice_big/notice_big_widget.dart';

// 외박/민원
import 'sleepover/sleepover_main/sleepover_main_widget.dart';
import 'civilcomplaint/civilcomplaint_main/civilcomplaint_main_widget.dart';

// 상벌점
import 'score/score_main/score_main_widget.dart';
import 'score/score_reason/score_reason_widget.dart';
import 'score/score_request/score_request_widget.dart';

// 가입/탈퇴/BBS
import 'join_leave/join/join_widget.dart';
import 'join_leave/leave/leave_widget.dart';
import 'join_leave/b_b_s_list/b_b_s_list_widget.dart';
import 'join_leave/bbs/b_b_s_main/b_b_s_main_widget.dart';
import 'join_leave/bbs/b_b_s_write/b_b_s_write_widget.dart';

// 메뉴/채팅 상세
import 'home_page/menu_main/menu_main_widget.dart';
import 'chating/massage_detail_roommate_copy/massage_detail_roommate_copy_widget.dart';

// -------------------- 페이지 export --------------------
// Home / Start / Auth
export 'home_page/home_page/home_page_widget.dart' show HomePageWidget;
export 'start_page/start_page/start_page_widget.dart' show StartPageWidget;
export 'sign_up_pasge/login_main/login_main_widget.dart' show LoginMainWidget;
export 'join_page/join_main/join_main_widget.dart' show JoinMainWidget;
export 'join_page/termsof_use/termsof_use_widget.dart' show TermsofUseWidget;
export 'join_page/join_complete/join_complete_widget.dart'
    show JoinCompleteWidget;
export 'join_page/pass_word_find/pass_word_find_widget.dart'
    show PassWordFindWidget;
export 'join_page/pass_word/pass_word_cord/pass_word_cord_widget.dart'
    show PassWordCordWidget;
export 'join_page/passwor_r_e/passwor_r_e_widget.dart' show PassworREWidget;
export 'join_page/complete_pass_word/complete_pass_word_widget.dart'
    show CompletePassWordWidget;

// Chat / Profile / Notice
export 'home_page/chating_main/chating_main_widget.dart'
    show ChatingMainWidget;
export 'profile/profile_main/profile_main_widget.dart' show ProfileMainWidget;
export 'home_page/homepage2/homepage2_widget.dart' show Homepage2Widget;
export 'notice/notice_main/notice_main_widget.dart' show NoticeMainWidget;
export 'notice/notice_big/notice_big_widget.dart' show NoticeBigWidget;

// Sleepover / Civil complaint
export 'sleepover/sleepover_main/sleepover_main_widget.dart'
    show SleepoverMainWidget;
export 'civilcomplaint/civilcomplaint_main/civilcomplaint_main_widget.dart'
    show CivilcomplaintMainWidget;

// Score
export 'score/score_main/score_main_widget.dart' show ScoreMainWidget;
export 'score/score_reason/score_reason_widget.dart' show ScoreReasonWidget;
export 'score/score_request/score_request_widget.dart' show ScoreRequestWidget;

// Join/Leave/BBS
export 'join_leave/join/join_widget.dart' show JoinWidget;
export 'join_leave/leave/leave_widget.dart' show LeaveWidget;
export 'join_leave/b_b_s_list/b_b_s_list_widget.dart' show BBSListWidget;
export 'join_leave/bbs/b_b_s_main/b_b_s_main_widget.dart' show BBSMainWidget;
export 'join_leave/bbs/b_b_s_write/b_b_s_write_widget.dart'
    show BBSWriteWidget;

// Menu / Chat detail
export 'home_page/menu_main/menu_main_widget.dart' show MenuMainWidget;
export 'chating/massage_detail_roommate_copy/massage_detail_roommate_copy_widget.dart'
    show MassageDetailRoommateCopyWidget;

// -------------------- 라우터 정의 --------------------
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart'; // AppStateNotifier
import 'main.dart'; // NavBarPage 사용

GoRouter createRouter(AppStateNotifier app) {
  return GoRouter(
    // ✅ 위젯들의 routePath를 단일 소스로 사용
    initialLocation: LoginMainWidget.routePath,
    debugLogDiagnostics: false,
    routes: [
      // 🔹 로그인 & 가입
      GoRoute(
        name: LoginMainWidget.routeName,
        path: LoginMainWidget.routePath,
        builder: (context, state) => const LoginMainWidget(),
      ),
      GoRoute(
        name: JoinMainWidget.routeName,
        path: JoinMainWidget.routePath,
        builder: (context, state) => const JoinMainWidget(),
      ),
      GoRoute(
        name: TermsofUseWidget.routeName,
        path: TermsofUseWidget.routePath,
        builder: (context, state) => const TermsofUseWidget(),
      ),
      GoRoute(
        name: JoinCompleteWidget.routeName,
        path: JoinCompleteWidget.routePath,
        builder: (context, state) => const JoinCompleteWidget(),
      ),
      GoRoute(
        name: PassWordFindWidget.routeName,
        path: PassWordFindWidget.routePath,
        builder: (context, state) => const PassWordFindWidget(),
      ),
      GoRoute(
        name: PassWordCordWidget.routeName,
        path: PassWordCordWidget.routePath,
        builder: (context, state) => const PassWordCordWidget(),
      ),
      GoRoute(
        name: PassworREWidget.routeName,
        path: PassworREWidget.routePath,
        builder: (context, state) => const PassworREWidget(),
      ),
      GoRoute(
        name: CompletePassWordWidget.routeName,
        path: CompletePassWordWidget.routePath,
        builder: (context, state) => const CompletePassWordWidget(),
      ),

      // 🔹 하단 탭(홈/채팅/게시판/메뉴) → NavBarPage
      GoRoute(
        name: HomePageWidget.routeName,
        path: HomePageWidget.routePath,
        builder: (context, state) => NavBarPage(initialPage: 'HomePage'),
      ),
      GoRoute(
        name: ChatingMainWidget.routeName,
        path: ChatingMainWidget.routePath,
        builder: (context, state) => NavBarPage(initialPage: 'ChatingMain'),
      ),
      GoRoute(
        name: BBSListWidget.routeName,
        path: BBSListWidget.routePath,
        builder: (context, state) => NavBarPage(initialPage: 'BBSList'),
      ),
      GoRoute(
        name: MenuMainWidget.routeName,
        path: MenuMainWidget.routePath,
        builder: (context, state) => NavBarPage(initialPage: 'menuMain'),
      ),

      // 🔹 단독 화면들
      GoRoute(
        name: StartPageWidget.routeName,
        path: StartPageWidget.routePath,
        builder: (context, state) => const StartPageWidget(),
      ),
      GoRoute(
        name: Homepage2Widget.routeName,
        path: Homepage2Widget.routePath,
        builder: (context, state) => const Homepage2Widget(),
      ),
      GoRoute(
        name: ProfileMainWidget.routeName,
        path: ProfileMainWidget.routePath,
        builder: (context, state) => const ProfileMainWidget(),
      ),
      GoRoute(
        name: NoticeMainWidget.routeName,
        path: NoticeMainWidget.routePath,
        builder: (context, state) => const NoticeMainWidget(),
      ),
      GoRoute(
        name: NoticeBigWidget.routeName,
        path: NoticeBigWidget.routePath,
        builder: (context, state) => const NoticeBigWidget(),
      ),
      GoRoute(
        name: SleepoverMainWidget.routeName,
        path: SleepoverMainWidget.routePath,
        builder: (context, state) => const SleepoverMainWidget(),
      ),
      GoRoute(
        name: CivilcomplaintMainWidget.routeName,
        path: CivilcomplaintMainWidget.routePath,
        builder: (context, state) => const CivilcomplaintMainWidget(),
      ),
      GoRoute(
        name: ScoreMainWidget.routeName,
        path: ScoreMainWidget.routePath,
        builder: (context, state) => const ScoreMainWidget(),
      ),
      GoRoute(
        name: ScoreReasonWidget.routeName,
        path: ScoreReasonWidget.routePath,
        builder: (context, state) => const ScoreReasonWidget(),
      ),
      GoRoute(
        name: ScoreRequestWidget.routeName,
        path: ScoreRequestWidget.routePath,
        builder: (context, state) => const ScoreRequestWidget(),
      ),
      GoRoute(
        name: JoinWidget.routeName,
        path: JoinWidget.routePath,
        builder: (context, state) => const JoinWidget(),
      ),
      GoRoute(
        name: LeaveWidget.routeName,
        path: LeaveWidget.routePath,
        builder: (context, state) => const LeaveWidget(),
      ),
      GoRoute(
        name: BBSMainWidget.routeName,
        path: BBSMainWidget.routePath,
        builder: (context, state) => const BBSMainWidget(),
      ),
      GoRoute(
        name: BBSWriteWidget.routeName,
        path: BBSWriteWidget.routePath,
        builder: (context, state) => const BBSWriteWidget(),
      ),

      // 🔹 채팅 상세 (role 쿼리 파라미터 사용)
      GoRoute(
        name: MassageDetailRoommateCopyWidget.routeName,
        path: MassageDetailRoommateCopyWidget.routePath,
        builder: (context, state) => const MassageDetailRoommateCopyWidget(),
      ),
    ],

    // 하얀 화면 대신 오류 표시
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          'Routing error: ${state.error}',
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
