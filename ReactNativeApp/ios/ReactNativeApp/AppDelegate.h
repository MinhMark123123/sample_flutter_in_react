#import <React/RCTBridgeDelegate.h>
#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate, FlutterAppLifeCycleProvider,RCTBridgeDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic,strong) FlutterEngine *flutterEngine;
@property (nonatomic, strong) FlutterPluginAppLifeCycleDelegate* lifeCycleDelegate;

@end
