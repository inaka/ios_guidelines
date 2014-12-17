/* The Good */

NSArray *lessonOfTheDay = @[@"Using", @"literals", @"makes", @"code", @"easier", @"to", @"read"];

NSDictionary *someDictionary = @{
                                 @"nice": @(YES),
                                 @"easyToFindKey": @"easyToFindValue"
                                 };

NSNumber *shouldUseLiterals = @YES;

NSNumber *someNumber = @1;





/* The Bad */

NSArray *names = [NSArray arrayWithObjects:@"Not", @"using", @"literals", @"is", @"a", @"waste", @"of", @"time", nil];

NSDictionary *someDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"nice": [NSNumber numberWithBool:NO], @"hardToFindKey", @"hardToFindValue", nil];

NSNumber *shouldUseLiterals = [NSNumber numberWithBool:YES];

NSNumber *someNumber = [NSNumber numberWithInteger:1];
