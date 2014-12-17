### From [Objective-C Coding Standards & Guidelines](https://github.com/inaka/ios_guidelines)

Suggestions & Rules
===================

Things that may be used as reason to reject a Pull Request.

***

Table of Contents:
* [Source Code Layout](#source-code-layout)
  * [Indentation](#indentation)
  * [Horizontal spacing](#horizontal-spacing)
  * [Vertical spacing](#vertical-spacing)
  * [Pragma marks](#pragma-marks)
  * [Curly braces style](#curly-braces-style)

* [Syntax](#syntax)
  * [Variables, instances, properties](#variables-instances-properties)
    * [Use Objective-C types](#use-objective-c-types)
    * [BOOL values](#bool-values)
    * [Asterisk position](#asterisk-position)
    * [Don't use ivars, use properties](#dont-use-ivars-use-properties)
    * [Accessing properties](#accessing-properties) 
    * [Do not synthesize](#do-not-synthesize)
    * [Explicit atomicity](#explicit-atomicity)
    * [Use weak-strong](#use-weak-strong)
  * [IF statements](#if-statements)
    * [Self-explained conditions](#self-explained-conditions)
    * [Always use braces](#always-use-braces)
    * [No redundant comparisons](#no-redundant-comparisons)
  * [Enumerations](#enumerations)
    * [Use Objective-C style](#use-objective-c-style)
    * [Include unknown value](#include-unknown-value)
    * [Prefix types](#prefix-types)
  * [Constants](#constants)
    * [No macros for constants](#no-macros-for-constants)
    * [Prefix constants](#prefix-constants)
    * [Start with uppercase](#start-with-uppercase)
    * [UITableViewCell constants](#uitableviewcell-constants)
  * [Miscellanea](#miscellanea)
    * [Literals](#literals)
    * [Dot notation](#dot-notation)
    * [Nullifiers](#nullifiers)
    * [Importing files](#importing-files)

* [Naming](#naming)
  * [Class prefixes](#class-prefixes)
  * [Variables, instances, properties](#variables-instances-properties)
    * [Naming UI elements](#naming-ui-elements)
  * [Delegates](#delegates)
    * [Naming delegates](#naming-delegates)
    * [Naming delegate methods](#naming-delegate-methods)
  * [Method signatures](#method-signatures)
    * [Never use 'get'](#never-use-get)
    * [Never use 'and'](#never-use-and)
    * [Use descriptive keywords before each argument](#use-descriptive-keywords-before-each-argument)
    * [Use descriptive keywords to identify return argument](#use-descriptive-keywords-to-identify-return-argument)
    * [No IB Action if no IB related](#no-ib-action-if-no-ib-related)

* [Other](#other)
  * [Dictionaries must not be passed around](#dictionaries-must-not-be-passed-around)
  * [Always initialize variables with a value](#always-initialize-variables-with-a-value)
  * [Remove unused template code](#remove-unused-template-code)
  * [Check delegates existence](#check-delegates-existence)

***

## Source Code Layout

***
##### Indentation
> * Use tabs to indent code (no spaces).
> * Tab width must be 4 spaces long.
> * There must be 1 tabulation per nesting level.

*Examples*: [educative](src/educative/indent.m) | [real](src/real/indent.m)

*Reasoning*: Always using the same indentation rules makes the code easier to read, because your eyes can quickly visualize things at a glance and don't need to waste time by focusing on decyphering the separation between code blocks.

***

##### Horizontal spacing
> * Leave one space between operators, constants and names.
> * Do not leave any space between a unary operator (e.g. ++ and --) and the variable it affects.
> * Do not leave any space between enclosing parentheses and what is inside them.
> * Leave one space between keywords and their parentheses-enclosed code. If using in-line curly braces, leave one space between the closing parentheses and the opening curly brace.
> * Do not leave spaces before semicolons.
> * In method calls, do not leave spaces between squared brackets and the rest. Do not leave spaces between colons and arguments either.
> * As for properties: One space between keyword and opening parentheses, one space after each comma and one space after the closing parentheses and the variable declaration.
> * As for methods: One space between +/- and return type. No spaces between return space and method signature. No spaces between semicolons and argument types. No spaces between argument type and argument name.

*Examples*: [educative](src/educative/horizontalSpacing.m) | [real](src/real/horizontalSpacing.m)

*Reasoning*: Not only are things easier to read, but they are also easier to look up for when using CMD+F.

***

##### Vertical spacing
> * Leave one blank line between methods.
> * When using pragma marks, leave one line before and one line after the pragma mark.
> * Consider leaving one blank line inside a method to separate different concepts when necessary.
> * Leave one blank line between different sections of the file (e.g. #imports, const declarations, @interface, @implementation)

*Examples*: [educative](src/educative/verticalSpacing.m) | [real](src/real/verticalSpacing.m)

*Reasoning*: Code is easier to read, as your eyes can separate out concepts consuming less time and effort.

***

##### Pragma marks
> * Mandatory: use pragma marks to separate out delegate-related methods, IBActions and private methods from the rest.
> * Optional: use pragma marks to separate out different groups of related methods such as lifecycle-related, accessors, target-action, etc.

*Examples*: [educative](src/educative/pragmaMarks.m) | [real](src/real/pragmaMarks.m)

*Reasoning*: Pragma marks group related methods within a class, separating them out from others which are not too related (said that, you make sure your methods will be ordered somehow). This makes the code easier to read while things become easier to find. When conforming to delegate protocols, it's more difficult to forget implementing methods when using pragma marks. As a plus, you can CMD+click the pragma mark (if its name matches a protocol name) and you will be taken to the protocol file. Also, Xcode detects and integrates pragma marks in your method selection menu.

***

##### Curly braces style
> When writing new code in an existing project, keep the curly braces style that it already has.

*Examples*: [educative](src/educative/maintainingStyle.m) | [real](src/real/maintainingStyle.m)

*Reasoning*: Consistency is the most important thing ever to struggle for good readability.

***

## Syntax

***
#### Variables, instances, properties
***

##### Use Objective-C types
> Use NSInteger, CGFloat and BOOL types instead of native 'int', 'float' and 'bool'.

*Examples*: [educative](src/educative/objectiveCTypes.m) | [real](src/real/objectiveCTypes.m)

*Reasoning*: Objective-C types are guaranteed to be the natural word size on any given architecture (32 bits, 64 bits, etc), whereas native types are architecture dependent. Using native types mixed with Objective-C types might lead to errors.

***

##### BOOL values
> Never use true/false or 1/0. Boolean values in Objective-C are referred as to YES/NO instead.

*Examples*: [educative](src/educative/booleans.m) | [real](src/real/booleans.m)

*Reasoning*: Given the verbosity of the language, using YES/NO makes the code more readable than using true/false.

***

##### Asterisk position
> When declaring a variable, syntax must be: `Class *instance`;

*Examples*: [educative](src/educative/asteriskPosition.m) | [real](src/real/asteriskPosition.m)

*Reasoning*: Asterisks represent pointers, and pointers belong to variables rather than to classes. Thus, sticking the asterisk to the variable name makes much more sense.

***

##### Don't use ivars, use properties
> Classes must not have ivars. Everything must be a property instead. To make properties private, use an empty category (a.k.a. class extension) to declare them.

*Examples*: [educative](src/educative/useProperties.m) | [real](src/real/useProperties.m)

*Reasoning*: There are several pros. Properties support KVO, whereas ivars don't. Properties are object-oriented related, whereas ivars are not. You can explicitly define behavior to a property (such as nonatomic, strong, etc) whereas with ivars you can't. You can customize getters and setters for properties, whereas with ivars you can't.

***

##### Accessing properties
> When accessing properties from within a class, always access them by calling self.variable, except when in a constructor, a destructor (dealloc) or when overriding a getter/setter method.

*Examples*: [educative](src/educative/accessingVariables.m) | [real](src/real/accessingVariables.m)

*Reasoning*: Accessing properties using self.variable ensures that you will get through its accessor method to get (or set) the corresponding value, and that KVO notifications will be fired. Accessing variables using _variable (i.e. via the instance variable) skips calling its accessor, therefore KVO notifications will not be fired. 
On the other hand, Apple discourages using accessors in init or dealloc, because they can have side effects beyond merely setting an instance variable. These are obviously undesirable in an uninitialized or destroyed object.

***

##### Do not synthesize
> Don't explicitly synthesize properties unless it's really necessary (there are particular cases where you need to do it explicitly).

*Reasoning*: As of Xcode 4.4 properties are auto-synthesized, so there is no need to add something that means nothing but noise.

***

##### Explicit atomicity
> Properties atomicity must be always specified explicitely. Prefer nonatomic as the default.
 
*Examples*: [educative](src/educative/atomicity.m) | [real](src/real/atomicity.m)

*Reasoning*: By default properties are atomic. In most cases you don't want a property to be atomic (being nonatomic implies being faster). In those cases where you do need a property to be atomic, then it's good to explicitly write it (even though it's default and you don't need to) in order to make it clear that property is intentionally intended to be atomic for some reason.

***

##### Use weak-strong
> Use 'weak' and 'strong' instead of 'assign' and 'retain' for properties. The only exception where you might need to use the latter is for CoreData related classes, which still need to be handled with non-ARC keywords.
 
*Examples*: [educative](src/educative/weakStrong.m) | [real](src/real/weakStrong.m)

*Reasoning*: Weak and strong are terms that came along with ARC, whereas assign and retain are old school non-ARC terms.

***
#### IF statements
***

##### Self-explained conditions
> Conditions must be clear and self-explained. If a condition becomes complex, then prefer to encapsulate it into a method or use a variable to hold its value.
 
*Examples*: [educative](src/educative/conditions.m) | [real](src/real/conditions.m)

*Reasoning*: Encapsulating complex conditions into a method or a variable allows you to give the condition a name, so a meaning. Giving it a meaning makes the code much more readable, as you couldn't even need to see what the complexity of the condition is if it's been properly named.

***

##### Always use braces
> Always use braces. It also applies for other selection statements such as *for*, *while*, *switch*, but it's not mandatory for case statements though.
 
*Examples*: [educative](src/educative/useBraces.m) | [real](src/real/useBraces.m)

*Reasoning*: [This article](https://blog.codecentric.de/en/2014/02/curly-braces/) should be enough.

***

##### No redundant comparisons
> Avoid comparisons against YES/NO or nil.
 
*Examples*: [educative](src/educative/redundantComparisons.m) | [real](src/real/redundantComparisons.m)

*Reasoning*: Readability. Redundant comparisons are noise to your brain when it comes to fast-read code.

***
#### Enumerations
***

##### Use Objective-C style
> Use Objective-C macros to define enumerations.
 
*Examples*: [educative](src/educative/objectiveCEnums.m) | [real](src/real/objectiveCEnums.m)

*Reasoning*: Objective-C enums gather the best of other enums styles. More info [here](http://nshipster.com/ns_enum-ns_options/).

***

##### Include unknown value
> Enumerations whose value depends upon an input read from somewhere else must include an unknown value. Always explicit unknown values as -1 in order to avoid mistakes.
 
*Examples*: [educative](src/educative/unknownValue.m) | [real](src/real/unknownValue.m)

*Reasoning*: If there is no unknown value, when parsing something into an enumerated property it could happen that what's being read from an input doesn't match any of the expected values to switch on. This condition will lead to have the property set with an actual value, which is wrong. For such cases you need to make sure that the property will be set to an unknown value.

***

##### Prefix types
> Enumerations which are declared in a header file must be prefixed. Prefixes  must include class name.
 
*Examples*: [educative](src/educative/prefixTypes.m) | [real](src/real/prefixTypes.m)

*Reasoning*: Anything that's declared in a header file can be used from other files. When using an enumeration from another file, prefixing it with the class name where it's been declared helps knowing where it comes from. Also, you will be taking advantage of autocompletion features.

***
#### Constants
***

##### No macros for constants
> To define a constant, do it declaring a constant instance. Never use #defines.
 
*Examples*: [educative](src/educative/constants.m) | [real](src/real/constants.m)

*Reasoning*: By using constants, you are ensuring that the compiler verifies the proper value is specified (that is, it performs spell checking).

***

##### Prefix constants
> When constants are declared in a header file, they must be prefixed.
 
*Examples*: [educative](src/educative/prefixConstants.m) | [real](src/real/prefixConstants.m)

*Reasoning*: Anything that's declared in a header file can be used from other files. When using a constant from another file, prefixing it with the class name where it's been declared helps knowing where it comes from. Also, you will be taking advantage of autocompletion features.

***

##### Start with uppercase
> Every constant must start with uppercase letter and then be camel case.
 
*Examples*: [educative](src/educative/uppercaseConstants.m) | [real](src/real/uppercaseConstants.m)

*Reasoning*: When you use it you can easily realize that it's a constant.

***

##### UITableViewCell constants
> * When it comes to declare cell height and identifier, declare them as extern constants in the cell header file. Define them in the implementation file.
> * Never use explicit values in cellForRow method in view controllers. Don't declare them as constants in the view controller either.
 
*Examples*: [educative](src/educative/cellConstants.m) | [real](src/real/cellConstants.m)

*Reasoning*: This way you ensure these constants belong to the cell class rather than to the view controller class. You have them centralized in one, correct place. If you use a cell in multiple view controllers and you change its height, you're making sure you'll change it just once and in the correct place.

***
#### Miscellanea
***

##### Literals
> NSString, NSDictionary, NSArray, and NSNumber literals must be used whenever creating immutable instances of those objects.
 
*Examples*: [educative](src/educative/literals.m) | [real](src/real/literals.m)

*Reasoning*: Using literals aids readability.

***

##### Dot notation
> Always use dot notation syntax for accessing and mutating properties. Bracket notation is preferred in all other instances.
 
*Examples*: [educative](src/educative/dotNotation.m) | [real](src/real/dotNotation.m)

*Reasoning*: Dot notation syntax makes the code more readable and concise. Also, by using dot notation syntax you get the benefits of KVO notifications, whereas you don't when using bracket notation.

***

##### Nullifiers
> Use the correct keyword to nullify things.
> * To nullify primitive numbers, use `0`.
> * To nullify objects, use `nil`.
> * To nullify classes, use `Nil`.
> * To nullify blocks, use `NULL`.
> * To represent null objects inside a collection, use `[NSNull null]`.
 
*Examples*: [educative](src/educative/nullifiers.m) | [real](src/real/nullifiers.m)

*Reasoning*: Not using the proper nullifier might lead to crashes.

***

##### Importing files
> Import files only when necessary. Typically, any file should be imported in the implementation (.m) file of the class that needs to use that file. If your header file needs to know about a class but it doesn't need to know about its details, then use @class instead.
 
*Examples*: [educative](src/educative/imports.m) | [real](src/real/imports.m)

*Reasoning*: It makes the compilation process much faster, since you avoid importing complete files for every header file. Also, it reduces a lot the probability of getting endless importing loops. Interesting related article [here](http://qualitycoding.org/file-dependencies/).

***
## Naming
***

Naming is one of the most important things when it comes to develop clean code at most of languages. We encourage you to go through [this documentation](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html#//apple_ref/doc/uid/10000146-SW1) to have a better understanding on what naming should be like in Objective C.

##### Class Prefixes
> * Classes belonging to the project must be prefixed with a two-letter uppercase prefix which needs to be logical according to the name of the project.
> * Filenames must match class names. Thus, a filename must include its class prefix.
> * On the other hand, by convention, a cell identifier must not include its class prefix.
> * For open-source projects, use the '*IK*' prefix.

*Examples*: [educative](src/educative/classPrefixes.m) | [real](src/real/classPrefixes.m)

*Reasoning*: Since Objective-C does not leverage namespaces, it needs a way to identify and discern classes from diferent projects (e.g. your project vs. other frameworks or dependencies) within the same workspace. This way is by encouraging developers to add prefixes to properly identify the classes they create. Also, when using prefixes, you get benefits from autocompletion features.

***
#### Variables, instances, properties
***

##### Naming UI elements
> * UI elements must be named following this structure: `UIKind *nameKind`, so that the first part of the name indicates what the object is about and its last part indicates which kind of UI object it is.

*Examples*: [real](src/real/namingUI.m)

*Reasoning*: Easier identification and differentiation for UI elements in source code.

***
#### Delegates
***

##### Naming delegates
> A delegate protocol name must match the class name plus the `delegate` suffix.

*Examples*: [educative](src/educative/delegateNaming.m) | [real](src/real/delegateNaming.m)

*Reasoning*: Understandable names, easier to look up for.

***

##### Naming delegate methods
> A delegate method signature must match the following structure described below. 

> It must:
> * Start by identifying the class of the object that's sending the message.
> * Continue with a `did` or `will` keyword to identify if the method call occurs before or after an event. Exception: For methods that are invoked to ask the delegate to do something on behalf of another object, then the keyword `should` is preferred.
> * Include an argument to pass in a reference to the delegating object (the sender).

> Also,
> * When the method only passes in one argument (the sender), then the way to build its signature is by appending it at the end.
> * When there is more than one argument (sender + some additional info related to the event occurring), then the signature must be built as `- (void)className:` followed by the argument passing the sender object, followed by the `did`, `will` or `should` keyword, followed by the action and followed by a word indicating the second argument passed in (e.g. `withText:`) with the second argument.

*Examples*: [educative](src/educative/delegateMethods.m) | [real](src/real/delegateMethods.m)

*Reasoning*: Delegate related methods are easier to group and easier to be identified, since you can clearly discern them from the rest of the methods within the class that conforms to the delegate protocol in question. 
Things are easier to look up for. Also, by following this structure you will always have information about at which exact moment or upon which exact event the method in question is likely to be called.

***
#### Method signatures
***

##### Never use 'get'
> Do not use `get` as part of a method signature.

*Examples*: [educative](src/educative/noGet.m) | [real](src/real/noGet.m)

*Reasoning*: In Objective-C, the word `get` is reserved for memory management.

***

##### Never use 'and'
> Do not use `and` as part of a method signature.

*Examples*: [educative](src/educative/noAnd.m) | [real](src/real/noAnd.m)

*Reasoning*: Using `and` to link arguments leads to problems when you create methods with more and more keywords. Also, it only makes the method name longer by adding neither meaning nor additional information.

***

##### Use descriptive keywords before each argument
> Always use a keyword before each argument. The keyword must describe what the argument is.

*Examples*: [educative](src/educative/methodKeywords.m) | [real](src/real/methodKeywords.m)

*Reasoning*: Method intention is clearer. You might realize what the method does without even looking into its implementation.

***

##### Use descriptive keywords to identify return argument
> When method returns a value or an object, the first part of the method name must describe what it returns.

*Examples*: [educative](src/educative/returnKeyword.m) | [real](src/real/returnKeyword.m)

*Reasoning*: Method intention is clearer. You realize at a glance what the method is expected to return.

***

##### No IB Action if no IB related
> A method must have an `IBAction` return type only if it has been linked to a target-action method from Interface Builder. Otherwise, return `void`.

*Examples*: [educative](src/educative/noIBAction.m) | [real](src/real/noIBAction.m)

*Reasoning*: It avoids confusions and lets you track easily where the method is linked.

***

## Other

***
##### Dictionaries must not be passed around
> * When manipulating model objects across different classes, encapsulate their data into model classes and allocate instances of them to handle that data. Never pass them around as plain dictionaries objects.
> * It's highly recommended to setup an `initWithDictionary:` method in the model class.

*Examples*: [educative](src/educative/modelDictionaries.m) | [real](src/real/modelDictionaries.m)

*Reasoning*: When using model objects (entities or containers) instead of regular dictionaries you're rewarded with strong typing. In consequence, you get much more safety than when using plain key-values (which might lead to typos). Also, modeling model data into entities or containers give them a meaning: You can easily recognize what they are about, how they work and how they can interact with the rest of your business logic layer, whereas when using plain dictionaries you can neither know what they are expected to contain nor know how they are supposed to interact with the rest of the model.

***

##### Always initialize variables with a value
> * Every time you declare a variable you must assign it a value.
> * This also applies for objects initialization.
> * You can take a look [here]() to know how to initialize things with null values.

*Examples*: [educative](src/educative/variablesInitialization.m) | [real](src/real/variablesInitialization.m)

*Reasoning*: Not assigning a variable a value is unsafe as it might lead to let the variable have unexpected values.

***

##### Remove unused template code
> Each method that does not add any functionality to the class must be removed from the code (typically, template methods that only call super and you don't add any extra implementation in them).

*Examples*: [real](src/real/templateCode.m)

*Reasoning*: Methods that have no meaning are just noise.

***

##### Check delegates existence
> * It must be checked that a delegate responds to the selector before calling the method in question.

*Examples*: [educative](src/educative/checkingDelegates.m) | [real](src/real/checkingDelegates.m)

*Reasoning*: Safety. The application will crash if the delegate does not respond to the selector in question.