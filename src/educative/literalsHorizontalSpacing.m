/* Preferred */

NSArray *niceArray = @[@"This", @"array", @"has", @"nice", @"horizontal", @"spacing"];

NSDictionary *niceDictionary = @{
                                 @"this": @"dictionary",
                                 @"also": @"has",
                                 @"nice": @"horizontal spacing"
                                 };





/* Not Preferred */

NSArray *badArray = @[ @"This", @"array", @"has", @"unnecessary", @"extra", @"spaces" ];
NSArray *awfulArray = @[@"This",@"array",@"does not",@"have",@"spaces",@"after commas"];
NSArray *uglyArray = @[ @"This",  @"array",@"does not",   @"have", @"consistency", @"at all"];

NSDictionary *badDictionary = @{
                                @"this": @"dictionary",
                                @"is almost": @"correct",
                                @"but the closing curly brace": @"is not consistent"};

NSDictionary *anotherBadOne = @{
                                @"this":@"dictionary",
                                @"is almost":@"correct",
                                @"but there is no space after each semicolon":@"which makes it harder to read"
                                };
NSDictionary *awfulDictionary= @{
                                 @"this": @"dictionary",
                                      @"contains": @"extra spaces",
                    @"it doesn't get aligned properly": @"so it's annoying"
                                 };
NSDictionary *uglyDictionary = @{@"this": @"dictionary", @"does not": @"use enters", @"You can't understand it": @"at a glance"};



