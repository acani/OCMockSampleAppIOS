#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize navigationController;

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    RootViewController *rootViewController = [[RootViewController alloc] init];
    self.navigationController = [[UINavigationController alloc]
                                 initWithRootViewController:rootViewController];
    window.rootViewController = self.navigationController;
    [window makeKeyAndVisible];
    return YES;
}

@end
