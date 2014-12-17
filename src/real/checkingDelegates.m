/*** CHECKING DELEGATES ***/

@protocol GDLoginCellDelegate <NSObject>
- (void)loginCell:(GDLoginCell *)cell didFailLoginWithError:(NSError *)error;
@optional
- (void)loginCellWillPerformLogin:(GDLoginCell *)cell;
- (void)loginCellDidPerformLogin:(GDLoginCell *)cell;
@end



/* The Good */

- (IBAction)performLogin:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(loginCellWillPerformLogin:)]) {
        [self.delegate loginCellWillPerformLogin:self];
    }
    
    [[GDLoginManager manager] performLoginWithCredentials:self.credentials success:^() {
        if ([self.delegate respondsToSelector:@selector(loginCellDidPerformLogin:)]) {
            [self.delegate loginCellDidPerformLogin:self];
        }
    } failure:^(NSError *error) {
        if ([self.delegate respondsToSelector:@selector(loginCell:didFailLoginWithError:)]) {
            [self.delegate loginCell:self didFailLoginWithError:error];
        }
    }];
}



/* The Bad */

- (IBAction)performLogin:(id)sender
{
    [self.delegate loginCellWillPerformLogin:self];
    
    [[GDLoginManager manager] performLoginWithCredentials:self.credentials success:^() {
        [self.delegate loginCellDidPerformLogin:self];
    } failure:^(NSError *error) {
        [self.delegate loginCell:self didFailLoginWithError:error];
    }];
}