import 'dart:io';

class Test {
  void main() {
    Future.delayed(Duration(seconds: 1), () {
      return "OK";
    }).then((data) {
      //成功
      print("then success $data");
    }).catchError((e) {
      //异常错误
      print(e);
    }).whenComplete(() {
      //无论成功还是失败都走
      print("withComplete");
    });

    /**
     * wait 可以将多个Future异步操作合并  数组中的Future只要有一个出现error 则触发cacheError
     */
    Future.wait([
      Future.delayed(Duration(seconds: 1), () {
        return "future1";
      }),
      Future.delayed(Duration(seconds: 1), () {
        return "future2";
      })
    ]).then((results) {
      print("success ${results[0]} , ${results[1]}");
    }).catchError((e) {
      print(e);
    });

    /**
     *Future 的所有API的返回值仍然是一个Future对象
     */
    login("123123", "123123")
        .then((id) {
          return getUserInfo(id);
        })
        .then((userInfo) {
          return saveUserInfo(userInfo);
        })
        .then((res) {})
        .catchError((e) {});

    /**
     *
     */
    Stream.fromFuture(Future.delayed(Duration(seconds: 10), () {
      return File("sdcard/a.apk");
    }).then((res) {
      print(res.path);
    }).catchError((e) {
      print(e);
    })).listen((data) {
      print(data);
    }, onError: (e) {
      print(e);
    }, onDone: () {
      print("onDone");
    });
  }

  /// 同步的形式实现异步调用  async / await
  /// await 会等待后面方法执行完成后再往下执行
  /// await 必须在async方法内部
  task() async {
    try {
      var id = await login("123123", "123123");
      var userInfo = await getUserInfo(id);
      await saveUserInfo(userInfo);
    } catch (e) {
      print(e);
      //异常处理
    }
  }

  Future<String> login(String userName, String pwd) {}

  Future<String> getUserInfo(String id) {}

  Future saveUserInfo(String userInfo) {}
}