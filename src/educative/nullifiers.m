/* The Good */
NSInteger anInteger = 0;
NSString *aString = nil;
Class SomeClass = Nil;
[self somethingWithBlock:NULL];
[someArray addObject:[NSNull null]];


/* The Bad */
NSInteger anInteger = nil;
NSString *aString = @""; // Unless there is a special reason for doing so
Class SomeClass = nil;
[self somethingWithBlock:nil];
[someArray addObject:nil]; // This causes a crash!