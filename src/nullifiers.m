/* The Good */
NSInteger count = 0;
NSString *name = nil;
Class SomeClass = Nil;
[self requestWithCompletionBlock:NULL];
[someArray addObject:[NSNull null]];


/* The Bad */
NSInteger count = nil;
NSString *name = @""; // Unless there is a special reason for doing so
Class SomeClass = nil;
[self requestWithCompletionBlock:nil];
[someArray addObject:nil]; // This causes a crash!