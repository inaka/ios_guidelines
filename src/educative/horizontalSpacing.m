/* HORIZONTAL SPACING */





/* Leave one space between operators, constants and names. */

// The Good
NSInteger good = nice * (understandable + awesome);

// The Bad
NSInteger allTogether=notClear*(arrgh+whatIsIt);
NSInteger tooMuchSpaces  =  makes * (myEyes+hurt);





/* Do not leave any space between a unary operator (e.g. ++ and --) and the variable it affects. */

// The Good
niceIncrement++;

// The Bad
notSureIfIncrement ++;





/* Do not leave any space between enclosing parenthesis and what is inside them. */

// The Good
NSInteger this = isMuchMore / ((understandable + than) * (whatIs - below));

// The Bad
NSInteger why = doYou / ( (need + soMany) * (spaces - really) );
NSInteger soYou = still / ( ( needed + toAdd ) * ( evenMore - spaces ) );





/* Leave one space between keywords and their parenthesis-enclosed code. If using in-line curly braces, leave one space between the closing parenthesis and the opening curly brace. */

// The Good
if (nice < 10) {

}

// The Bad
if(ugly < 10){
    
}





/* Do not leave spaces before semicolons. */

// The Good
CGFloat niceFloat = 21.0f;

// The Bad
CGFloat floatingFloat = 21.0f ;
CGFloat lostFloat = 21.0f  ;





/* In method calls, do not leave spaces between squared brackets and what they enclose. Do not leave spaces between colons and arguments either. */

// The Good
[dictionary setObject:good forKey:@"readability"];

// The Bad
[ dictionary setObject:notGood forKey:@"readability" ];
[dictionary setObject: horrible forKey: @"readabilty"];
[ dictionary setObject: @(YES) forKey: @"hurtingEyes" ];





/* As for properties: One space between keyword and opening parentheses, one space after each comma and one space after the closing parentheses and the variable declaration. */

// The Good
@property (nonatomic, strong, readonly) WellSpaced *propertyDeclaration;

// The Bad
@property(nonatomic,strong,readonly)UglySpaced *propertyDeclaration;





/* As for methods: One space between +/- and return type. No spaces between return space and method signature. No spaces between semicolons and argument types. No spaces between argument type and argument name. */

// The Good
- (void)thisIsAnAmazing:(Signature *)wellSpaced totally:(Understandable *)yetReadable {

}

// The Bad
-(void)notLeavingSpace:(BeforeReturnType)isNotCorrect {

}
- (void) leavingSpace:(AfterReturnType)isNotCorrectEither {
    
}
- (void)leavingSpace: (AfterSemicolon *)isIncorrect leavingAnotherSpace: (AfterSemicolon *)isAlsoIncorrect {
    
}
- (void)leavingSpace:(AfterArgumentType) makesCodeHarderToRead {

}
- (void)dontForgetTo:(LeaveSpace *)beforeOpeningCurlyBrace{

}

