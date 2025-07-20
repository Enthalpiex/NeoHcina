import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthMiddleware extends GetMiddleware {
  final box = GetStorage();
  
  @override
  RouteSettings? redirect(String? route) {
    // 移除所有权限限制，允许所有用户访问所有页面
    return null;
  }
}

// 游客模式中间件 - 现在只用于标记状态，不限制权限
class GuestMiddleware extends GetMiddleware {
  final box = GetStorage();
  
  @override
  GetPage? onPageCalled(GetPage? page) {
    final token = box.read('token');
    if (token == null) {
      // 设置游客模式标记
      box.write('isGuest', true);
    } else {
      box.remove('isGuest');
    }
    return page; // 返回页面，不阻止访问
  }
}
