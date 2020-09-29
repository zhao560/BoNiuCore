## 使用CocoaPods安装

要使用CocoaPods将RhinoXSDK集成到您的Xcode项目中，请在您的`Podfile`中指定

```ruby
pod 'BoNiuCore', '~> 1.0.0'
```

## 工具使用

### 加解密

```objective-c
// AES加解密
@interface RXSecurityUtil : NSObject
/**
 * 加密方法
 * @string  需要加密的字符串
 * @key  密码
 */
+(nullable NSString *) encryptAESString:(NSString *)string key:(NSString *)key;

/**
 * 解密方法
 * @string  需要解密的字符串
 * @key  密码
 */
+(nullable NSString *) decryptAESString:(NSString *)string key:(NSString *)key;
@end
```

### 获取设备信息相关

```objective-c
@interface RXDeviceHelper : NSObject

/// 获取idfa
+ (nullable NSString *)idfaString;

/// 获取idfv
+ (nullable NSString *)idfvString;

/// 获取uuid
+ (NSString *)uuid;

/// 获取系统版本号
+ (NSString *)OSVersion;

/// 手机型号
+ (NSString *)deviceModel;

/// 是否是模拟器
+ (BOOL)isSimulator;

@end
```
