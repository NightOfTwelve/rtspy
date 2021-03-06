#import <Foundation/Foundation.h>

@interface MyObject : NSObject {
    int t;
}
- (void) printt: (int) t;
- (void) printtt: (int) t;
@end

@implementation MyObject

- (void) printt:(int)targ {
    NSLog(@"Hello, World!");
}

- (void) printtt:(int)targ {
    NSLog(@"Hello, World!");
}
@end

@interface XMyObject : NSObject {
    int t;
}
- (void) printt: (int) t;
- (void) printtt: (int) t;
@end

@implementation XMyObject

- (void) printt:(int)t {
    NSLog(@"Hello, World!");
}

- (void) printtt:(int)t {
    NSLog(@"Hello, World!");
}
@end

int main(int argc, const char * argv[]) {
    MyObject * ob = [[MyObject alloc] init];
    [ob printt:0];

    // XMyObject * xob = [[XMyObject alloc] init];
    // [xob printt:0];

    //pid
    NSProcessInfo *processInfo = [NSProcessInfo processInfo];
    NSString *processName = [processInfo processName];
    int processID = [processInfo processIdentifier];
    NSLog(@"Process Name: '%@' Process ID:'%d'", processName, processID);
    while(1)
        sleep(3);
    return 0;
}
