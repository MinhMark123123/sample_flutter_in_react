//
//  FlutterModule.m
//  ReactNativeApp
//
//  Created by minh.nguyenngoc4 on 12/09/2022.
//
#import "FlutterModule.h"
#import <Flutter/FlutterViewController.h>
#import "AppDelegate.h"
@implementation FlutterModule
  
// To export a module named RCTCalendarModule
RCT_EXPORT_MODULE(AppFlutterModule);

RCT_EXPORT_METHOD(checkEngineNull:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
  FlutterEngine *flutterEngine =
          ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
printf("excute flutter engine");
if (flutterEngine == nil && flutterEngine == nil ) {
  printf("excute flutter engine  is nil");
  callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %s", numberArgument, "excute flutter engine  is nil"]]);
}else{
  callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %s", numberArgument, "excute flutter engine  is not nil"]]);
}
}
  
RCT_EXPORT_METHOD(startFlutterActivity:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    FlutterEngine *flutterEngine =
            ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
      [flutterViewController setModalPresentationStyle:UIModalPresentationFullScreen];

        UIViewController *rootController = UIApplication.sharedApplication.delegate.window.rootViewController;
        [rootController presentViewController:flutterViewController animated:YES completion:nil];
        callback(@[[NSString stringWithFormat: @"umberArgument: %@ stringArgument: %s", numberArgument, "engine not null"]]);
  });
//    if (flutterEngine == nil && flutterEngine == nil) {
//      printf("excute flutter engine  is nil");
//      callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %s", numberArgument, "excute flutter engine  is nil"]]);
//
//    }else{
//
//
//
//
//    }});
    

  
  
  
//  FlutterEngine *flutterEngine =
//          ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
//    dispatch_async(dispatch_get_main_queue(), ^{
//        FlutterViewController *flutterViewController;
//         if (flutterEngine == nil && flutterEngine == nil) {
//           printf("excute flutter engine is nil");
//            // It is not recommended, but we can create a FlutterViewController with an implicit FlutterEngine
//            // https://flutter.dev/docs/development/add-to-app/ios/add-flutter-screen?tab=engine-objective-c-tab#alternatively---create-a-flutterviewcontroller-with-an-implicit-flutterengine
//            flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
//         } else {
//            FlutterEngine *fe = flutterEngine == nil ? flutterEngine : flutterEngine;
//            // init FlutterViewController with engine provided by host app
//            flutterViewController = [[FlutterViewController alloc] initWithEngine:fe nibName:nil bundle:nil];
//         }
//        // fix ui
//        [flutterViewController setModalPresentationStyle:UIModalPresentationFullScreen];
//
//        UIViewController *rootController = UIApplication.sharedApplication.delegate.window.rootViewController;
//        [rootController presentViewController:flutterViewController animated:YES completion:nil];
//        callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
//    });

}

@end
