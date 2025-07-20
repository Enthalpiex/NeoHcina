import 'package:get/get.dart';
import 'package:xs/src/middlewares/auth.dart';
import 'package:xs/src/pages/account/change_password.dart';
import 'package:xs/src/pages/account/login.dart';
import 'package:xs/src/pages/account/register.dart';
import 'package:xs/src/pages/bangumi/view.dart';
import 'package:xs/src/pages/bangumi_collection/view.dart';
import 'package:xs/src/pages/bangumi_detail/view.dart';
import 'package:xs/src/pages/bangumi_genre_list/view.dart';
import 'package:xs/src/pages/bangumi_mark_list/view.dart';
import 'package:xs/src/pages/bangumi_vod/view.dart';
import 'package:xs/src/pages/character/view.dart';
import 'package:xs/src/pages/download/view.dart';
import 'package:xs/src/pages/home/view.dart';
import 'package:xs/src/pages/person/view.dart';
import 'package:xs/src/pages/settings/info.dart';
import 'package:xs/src/pages/thread_collection/view.dart';
import 'package:xs/src/pages/profile/view.dart';
import 'package:xs/src/pages/search/view.dart';
import 'package:xs/src/pages/search_panel/view.dart';
import 'package:xs/src/pages/settings/account.dart';
import 'package:xs/src/pages/settings/danmaku.dart';
import 'package:xs/src/pages/settings/play_history.dart';
import 'package:xs/src/pages/settings/theme.dart';
import 'package:xs/src/pages/tags/view.dart';
import 'package:xs/src/pages/thread/view.dart';

class AppRoute {
  static final pages = [
    // 主页
    GetPage(
      name: '/', 
      page: () => const HomePage(),
      middlewares: [GuestMiddleware()],
    ),
    // 标签
    GetPage(
      name: '/tags', 
      page: () => const TagsPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 登录
    GetPage(name: '/login', page: () => const LoginPage()),
    // 注册
    GetPage(name: '/register', page: () => const RegisterPage()),
    // 修改密码
    GetPage(name: '/change_password', page: () => const ChangePasswordPage()),
    // 个人中心 - 现在所有用户都可以访问
    GetPage(
        name: '/profile',
        page: () => const ProfilePage(),
        middlewares: [GuestMiddleware()]),
    // 帖子
    GetPage(
      name: '/thread/:id', 
      page: () => const ThreadPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 番剧
    GetPage(
      name: '/bangumi', 
      page: () => const BangumiPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 番剧分类列表
    GetPage(
        name: '/bangumi_genre_list', 
        page: () => const BangumiGenreListPage(),
        middlewares: [GuestMiddleware()],
    ),
    // 番剧标签列表
    GetPage(
        name: '/bangumi_mark_list', 
        page: () => const BangumiMarkListPage(),
        middlewares: [GuestMiddleware()],
    ),
    // 番剧详情
    GetPage(
      name: '/bangumi/:id', 
      page: () => const BangumiDetailPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 番剧播放页
    GetPage(
      name: '/vod/:id', 
      page: () => const BangumiVodPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 角色
    GetPage(
      name: '/character', 
      page: () => const CharacterPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 人物
    GetPage(
      name: '/person', 
      page: () => const PersonPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 搜索面板
    GetPage(
      name: '/search_panel', 
      page: () => const SearchPanelPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 搜索结果
    GetPage(
      name: '/search', 
      page: () => const SearchPage(),
      middlewares: [GuestMiddleware()],
    ),

    // 账号管理 - 现在所有用户都可以访问
    GetPage(
      name: '/account_settings', 
      page: () => const AccountSettingsPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 外观设置
    GetPage(
      name: '/theme_settings', 
      page: () => const ThemeSettingsPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 弹幕设置
    GetPage(
      name: '/danmaku_settings', 
      page: () => const DanmakuSettingsPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 信息设置
    GetPage(
      name: '/info', 
      page: () => const InfoSettingsPage(),
      middlewares: [GuestMiddleware()],
    ),

    // 历史记录 - 现在所有用户都可以访问
    GetPage(
      name: '/play_history', 
      page: () => const PlayHistoryPage(),
      middlewares: [GuestMiddleware()],
    ),
    // 追番列表 - 现在所有用户都可以访问
    GetPage(
        name: '/bangumi_collection', 
        page: () => const BangumiCollectionPage(),
        middlewares: [GuestMiddleware()],
    ),
    // 图片收藏 - 现在所有用户都可以访问
    GetPage(
        name: '/thread_collection', 
        page: () => const ThreadCollectionPage(),
        middlewares: [GuestMiddleware()],
    ),
    // 离线缓存 - 现在所有用户都可以访问
    GetPage(
      name: '/download', 
      page: () => const DownloadPage(),
      middlewares: [GuestMiddleware()],
    ),
  ];
}
