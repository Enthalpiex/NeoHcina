import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserState {
  static final box = GetStorage();
  
  // 检查是否已登录
  static bool get isLoggedIn {
    final token = box.read('token');
    return token != null && token.toString().isNotEmpty;
  }
  
  // 检查是否为游客
  static bool get isGuest {
    return !isLoggedIn;
  }
  
  // 获取用户token
  static String? get token {
    return box.read('token');
  }
  
  // 设置用户token
  static void setToken(String token) {
    box.write('token', token);
    box.remove('isGuest');
  }
  
  // 清除用户token（登出）
  static void clearToken() {
    box.remove('token');
    box.write('isGuest', true);
  }
  
  // 获取用户信息
  static Map<String, dynamic>? get userInfo {
    return box.read('userInfo');
  }
  
  // 设置用户信息
  static void setUserInfo(Map<String, dynamic> userInfo) {
    box.write('userInfo', userInfo);
  }
  
  // 清除用户信息
  static void clearUserInfo() {
    box.remove('userInfo');
  }
  
  // 完全登出
  static void logout() {
    clearToken();
    clearUserInfo();
  }
  
  // 检查是否有权限访问某个功能 - 现在所有用户都有所有权限
  static bool hasPermission(String permission) {
    // 移除所有权限限制，所有用户都拥有所有权限
    return true;
  }
  
  // 显示游客提示 - 现在不再显示限制提示
  static void showGuestTip(String message) {
    // 不再显示游客限制提示
  }
} 