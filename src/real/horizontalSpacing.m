/* HORIZONTAL SPACING */





/* Leave one space between operators, constants and names. */

// The Good
NSInteger y = x * (c + d);

// The Bad
NSInteger y=x*(c+d);
NSInteger y  =  x * (c+d);





/* Do not leave any space between a unary operator (e.g. ++ and --) and the variable it affects. */

// The Good
count++;

// The Bad
count ++;





/* Do not leave any space between enclosing parenthesis and what is inside them. */

// The Good
NSInteger z = y / ((x + a) * (d - c));

// The Bad
NSInteger z = y / ( (x + a) * (d - c) );
NSInteger z = y / ( ( x + a ) * ( d - c ) );





/* Leave one space between keywords and their parenthesis-enclosed code. If using in-line curly braces, leave one space between the closing parenthesis and the opening curly brace. */

// The Good
if (count < 10) {

}

// The Bad
if(count < 10){
    
}





/* Do not leave spaces before semicolons. */

// The Good
CGFloat timeSpent = 21.0f;

// The Bad
CGFloat timeSpent = 21.0f ;
CGFloat timeSpent = 21.0f  ;





/* In method calls, do not leave spaces between squared brackets and what they enclose. Do not leave spaces between colons and arguments either. */

// The Good
[userDefaults setObject:fruits forKey:@"fruits"];

// The Bad
[ userDefaults setObject:fruits forKey:@"fruits" ];
[userDefaults setObject: fruits forKey: @"fruits"];
[ userDefaults setObject: fruits forKey: @"fruits" ];





/* As for properties: One space between keyword and opening parentheses, one space after each comma and one space after the closing parentheses and the variable declaration. */

// The Good
@property (nonatomic, strong, readonly) NSArray *items;

// The Bad
@property(nonatomic,strong,readonly)NSArray *items;





/* As for methods: One space between +/- and return type. No spaces between return space and method signature. No spaces between semicolons and argument types. No spaces between argument type and argument name. */

// The Good
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

}

// The Bad
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    // Missing space after -
}
- (void)alertView: (UIAlertView *)alertView clickedButtonAtIndex: (NSInteger)buttonIndex {
    // Extra spaces after semicolons
}
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    // Extra space after return type
}
- (void)alertView:(UIAlertView *) alertView clickedButtonAtIndex:(NSInteger) buttonIndex {
    // Extra spaces between argument types and names
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    // Missing space before opening curly brace
}

