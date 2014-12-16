/* The Good */

#import "SomeImport.h"
#import "SomeOtherImport.h"

AnyDeclaration thatYouMightHaveHere = WithSomeValue;

@interface TheInterface ()

@end

@implementation TheImplementation

#pragma mark - SomePragmaMark

- (CoolMethod)leavingJustOneLine {
    return beforeAndAfterIt;
}

#pragma mark - AnotherPragmaMark

- (void)someOther:(Nice)method {
    method.blankLinesBefore = 1;
    method.blankLinesAfter = 1;
}

- (void)yetAnother:(Nice)method {
    self.readability = Good;
}

@end








/* The Bad */

#import "SomeImport.h"

#import "ASeparatedImport.h"
#import "IsAnnoying.h"
ThisDeclarationHere isUgly = YES;

@interface TheInterface ()

@end



@implementation TheImplementation

#pragma mark - SomePragmaMark
- (PragmaMark)tooClose {
    return itHurts;
}

#pragma mark - AnotherPragmaMark




- (PragmaMark)tooFar {
    return itAlsoHurts;
}
- (void)stickyMethod {
    self.isReadable = NO;
    self.isUgly = YES;
    self.needsToConsiderSpacing = YES;
}



@end