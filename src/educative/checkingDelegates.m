/*** CHECKING DELEGATES ***/

@protocol SomeClassDelegate <NSObject>
- (void)someClass:(SomeClass *)theInstance didFailPerformingSomeActionWithError:(NSError *)error;
@optional
- (void)someClassWillPerformSomeAction:(SomeClass *)theInstance;
- (void)someClassDidPerformSomeActionWithSuccess:(SomeClass *)theInstance;
@end



/* The Good */

- (IBAction)performSomeAction:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(someClassWillPerformSomeAction:)]) {
        [self.delegate someClassWillPerformSomeAction:self];
    }
    
    [[SomeManager manager] performSomeActionWithParameters:self.parameters success:^() {
        if ([self.delegate respondsToSelector:@selector(someClassDidPerformSomeActionWithSuccess:)]) {
            [self.delegate someClassDidPerformSomeActionWithSuccess:self];
        }
    } failure:^(NSError *error) {
        if ([self.delegate respondsToSelector:@selector(someClass:didFailPerformingSomeActionWithError:)]) {
            [self.delegate someClass:self didFailPerformingSomeActionWithError:error];
        }
    }];
}



/* The Bad */

- (IBAction)performSomeAction:(id)sender
{
    [self.delegate someClassWillPerformSomeAction:self];    // unsafe
    
    [[SomeManager manager] performSomeActionWithParameters:self.parameters success:^() {
        [self.delegate someClassDidPerformSomeActionWithSuccess:self];      // unsafe
    } failure:^(NSError *error) {
        [self.delegate someClass:self didFailPerformingSomeActionWithError:error];     // unsafe
    }];
}