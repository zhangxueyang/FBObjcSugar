# FBObjcSugar


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements


```ruby
pod 'FBObjcSugar'
```

## 说明
```
#import "NSObject+FBLogSuagr.h"
可以在控制台输出中文的NDDictionary
-(void)fb_descriptionJson:(NSDictionary *)dicM callBack:(void(^)(NSString * logMessage))callBack;


#import "NSDate+FBObjcSugar.h"
/// 返回指定时间差值的日期字符串
/// @return 日期字符串，格式：yyyy-MM-dd HH:mm:ss
+ (nonnull NSString *)fb_dateStringWithDelta:(NSTimeInterval)delta;

/// 返回日期格式字符串
/// 具体格式如下：
///     - 刚刚(一分钟内)
///     - X分钟前(一小时内)
///     - X小时前(当天)
///     - MM-dd HH:mm(一年内)
///     - yyyy-MM-dd HH:mm(更早期)
@property (nonnull, nonatomic, readonly) NSString *fb_dateDescription;


#import "NSString+FBObjcSugar.h"
/// 拼接了`文档目录`的全路径
@property (nullable, nonatomic, readonly) NSString *fb_documentDirectory;
/// 拼接了`缓存目录`的全路径
@property (nullable, nonatomic, readonly) NSString *fb_cacheDirecotry;
/// 拼接了临时目录的全路径
@property (nullable, nonatomic, readonly) NSString *fb_tmpDirectory;
/// BASE 64 编码的字符串内容
@property(nullable, nonatomic, readonly) NSString *fb_base64encode;
/// BASE 64 解码的字符串内容
@property(nullable, nonatomic, readonly) NSString *fb_base64decode;

#import "UIColor+FBObjcSugar.h"
#pragma mark - 颜色函数
/// 使用十六进制数字生成颜色
+ (nonnull instancetype)fb_colorWithHex:(u_int32_t)hex;
/// 使用指定的 r / g / b 数值生成颜色
+ (nonnull instancetype)fb_colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue;
/// 生成随机颜色
+ (nonnull instancetype)fb_randomColor;
/// 返回当前颜色的 red 的 0～255 值
- (u_int8_t)fb_redValue;
/// 返回当前颜色的 green 的 0～255 值
- (u_int8_t)fb_greenValue;
/// 返回当前颜色的 blue 的 0～255 值
- (u_int8_t)fb_blueValue;
/// 返回当前颜色的 alpha 值
- (CGFloat)fb_alphaValue;

#import "UIGestureRecognizer+FBBlocjSugar.h"
//UITapGestureRecognizer 创建 带有 block 回调
+ (instancetype)gestureRecognizerWithTarget:(id)target Action:(fb_gestureBlock)action;


#import "UIImage+FBObjcSugar.h"
/// 生成指定颜色的一个`点`的图像
/// @param color 颜色
/// @return 1 * 1 图像
+ (nonnull UIImage *)fb_singleDotImageWithColor:(nonnull UIColor *)color;

/**
 异步绘制图片 切圆角
 根据当前图像，和指定的尺寸，生成圆角图像并且返回
 @param size 切图的角度 一般是imageView 的一半
 @param fillColor   切完图像背景填充颜色
 @param completion 回调传值
 */
- (void)fb_cornerImageWithSize:(CGSize)size
                     fillColor:(UIColor *_Nullable)fillColor
                    completion:(void (^ _Nonnull)(UIImage * _Nonnull image))completion;



提供一些快速创建 UI 的方法
#import "UIButton+FBBlockSugar.h"
#import "UIButton+FBObjcSugar.h"
#import "UILabel+FBObjcSugar.h"
#import "UITextField+FBObjcSugar.h"
#import "UIView+FBObjcSugar.h"




```

