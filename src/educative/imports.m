/***** The Good *****/


/* TheClass.h */

@class AnotherClass;

@interface TheClass : TheParentClass

@property (strong, nonatomic) AnotherClass *someInstance;

@end


/* TheClass.m */

#import "TheClass.h"
#import "AnotherClass.h"

@interface TheClass ()

@end

@implementation TheClass

- (void)someMethodUsingOtherClassDetails {
    someInstance.someProperty = YES;
    self.neededFileInHeader = NO;
}

@end





/***** The Bad *****/


/* TheClass.h */

#import "AnotherClass.h"

@interface TheClass : TheParentClass

@property (strong, nonatomic) AnotherClass *someInstance;

@end


/* TheClass.m */

#import "TheClass.h"

@interface TheClass ()

@end

@implementation TheClass

- (void)someMethodUsingOtherClassDetails {
    someInstance.someProperty = YES;
    self.unnecessaryImportedFileInHeader = YES;
}

@end