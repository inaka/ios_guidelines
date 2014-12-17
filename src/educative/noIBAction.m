/* The Good */
- (IBAction)someMethodIBLinked:(id)sender;
- (void)someMethodTargetedProgrammatically:(id)sender;

/* The Bad */
- (void)someMethodIBLinked:(id)sender;        // It's IB linked, then it should have IBAction return type
- (IBAction)someMethodTargetedProgrammatically:(id)sender;    // It's not IB linked, then it should not have IBAction return type