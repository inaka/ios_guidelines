// We assume that 'performLogin' is a method that is actually linked with an Interface Builder target-action method, whereas 'navigateBack' is a method that was linked through an 'addTarget' method call programmatically.

/* The Good */
- (IBAction)performLogin:(id)sender;
- (void)navigateBack:(id)sender;

/* The Bad */
- (void)performLogin:(id)sender;        // It's IB linked, then it should have IBAction return type
- (IBAction)navigateBack:(id)sender;    // It's not IB linked, then it should not have IBAction return type