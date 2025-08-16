import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart' hide createRouter;
import 'flutter_flow/internationalization.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'index.dart' show
createRouter,
HomePageWidget,
ChatingMainWidget,
BBSListWidget,
MenuMainWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  // Firebase 초기화
  await Firebase.initializeApp();

  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  String getRoute([RouteMatch? routeMatch]) {
    final RouteMatch lastMatch =
        routeMatch ?? _router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : _router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  List<String> getRouteStack() =>
      _router.routerDelegate.currentConfiguration.matches
          .map((e) => getRoute(e))
          .toList();
  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dormi',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackMaterialLocalizationDelegate(),
        FallbackCupertinoLocalizationDelegate(),
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({
    Key? key,
    this.initialPage,
    this.page,
    this.disableResizeToAvoidBottomInset = false,
  }) : super(key: key);

  final String? initialPage;
  final Widget? page;
  final bool disableResizeToAvoidBottomInset;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'HomePage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = <String, Widget>{
      'HomePage': const HomePageWidget(),
      'ChatingMain': const ChatingMainWidget(),
      'BBSList': const BBSListWidget(),
      'menuMain': const MenuMainWidget(),
    };

    final keys = tabs.keys.toList();

    // 1) 현재 페이지 이름이 키에 없으면 기본값으로 강제
    int currentIndex = keys.indexOf(_currentPageName);
    if (currentIndex < 0) {
      _currentPageName = 'HomePage';
      currentIndex = 0;
    }

    final queryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: !widget.disableResizeToAvoidBottomInset,
      body: MediaQuery(
        data: queryData
            .removeViewInsets(removeBottom: true)
            .removeViewPadding(removeBottom: true),
        child: _currentPage ?? tabs[_currentPageName]!,
      ),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => safeSetState(() {
          _currentPage = null;                 // 혹은 _currentPage = tabs[keys[i]];
          _currentPageName = keys[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).info,
        selectedItemColor: const Color(0xFF3677B8),
        unselectedItemColor: FlutterFlowTheme.of(context).secondaryText,
        selectedBackgroundColor: const Color(0x00000000),
        borderRadius: 8.0,
        itemBorderRadius: 8.0,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: double.infinity,
        elevation: 0.0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_outlined,
                  color: currentIndex == 0
                      ? Color(0xFF3677B8)
                      : FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  'Home',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0
                        ? Color(0xFF3677B8)
                        : FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: currentIndex == 1
                      ? Color(0xFF3677B8)
                      : FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  '메세지',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 1
                        ? Color(0xFF3677B8)
                        : FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.forum,
                  color: currentIndex == 2
                      ? Color(0xFF3677B8)
                      : FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  '게시판',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2
                        ? Color(0xFF3677B8)
                        : FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.list,
                  color: currentIndex == 3
                      ? Color(0xFF3677B8)
                      : FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  '메뉴',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 3
                        ? Color(0xFF3677B8)
                        : FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
