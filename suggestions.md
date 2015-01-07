### From [Objective-C Coding Standards & Guidelines](https://github.com/inaka/ios_guidelines)

Suggestions & Great Ideas
=========================

Things that should be considered when writing code, but do not cause a PR rejection, or are too vague to consistently enforce.

***

Table of Contents:
* [Honor DRY](#honor-dry)
* [Avoid GOD classes](#avoid-god-classes)
* [Initialize with delegate](#initialize-with-delegate)
* [Use accessors to pass in key objects](#use-accessors-to-pass-in-key-objects)
* [Avoid code in app delegate](#avoid-code-in-app-delegate)
* [Comments should not make up for bad code](#comments-should-not-make-up-for-bad-code)
* [Avoid complex lines of code](#avoid-complex-lines-of-code)
* [Prefer small methods over big ones](#prefer-small-methods-over-big-ones)
* [Order methods from top to bottom](#order-methods-from-top-to-bottom)
* [Horizontal spacing for literals](#horizontal-spacing-for-literals)
* [Use the ternary operator when convenient](#use-the-ternary-operator-when-convenient)
* [Avoid singleton abuse](#avoid-singleton-abuse)
* [Add specific comments to code that needs attention](#add-specific-comments-to-code-that-needs-attention)

***

##### Honor DRY
> Don't Repeat Yourself: Do not write the same code in many places. Always leverage object oriented concepts to avoid duplications. 
 
*Reasoning*: Duplication may be the root of all evil in software. If you need to modify something you'll have to do it X times. Also, by duplicating code you are increasing the probability of making mistakes.

***

##### Avoid GOD classes
> A class should have only one or few related responsibilites. There should be at most one reason for the class to change.
 
*Reasoning*: Having GOD classes breaks the single responsibility principle (which states that class should have only one responsibility, one reason to change). 
The idea is that by having small classes with single responsibilities we get better separation of concerns, more reusability, more loose-coupling, less complexity and less headaches when it comes to maintain them. 
You can compare it against this real life example: *How do you prefer your tools to be organized? Do you want your tools organized into toolboxes with many small drawers each containing well-defined and well-labeled components? Or do you want a few drawers that you just toss everything into?*

*** 

##### Initialize with delegate
> When a class leverages delegation pattern, it's a good idea to pass in the delegate instance through its initializer method.

*Examples*: [educative](src/educative/initWithDelegate.m) | [real](src/real/initWithDelegate.m)
 
*Reasoning*: This way it's clearer that the instance of the class will need to rely upon other object to delegate some tasks. Also, it's more difficult to forget that you have to pass in a delegate when you create an instance.

*** 

##### Use accessors to pass in key objects
> * When you have a class such that its configuration depends upon an object, it's good to make it a property and override its setter, so that when you set that object, the instance of your class gets configured relying that object's properties.
> * Typically, this suggestion fits perfectly for UITableViewCell's and UIView's custom subclasses.
 
*Examples*: [educative](src/educative/accessors.m) | [real](src/real/accessors.m)

*Reasoning*: It helps encapsulation. Better separation of concerns. Configuration tasks are performed at the right place. What's more, code duplication is often avoided by doing so.

***

##### Avoid code in app delegate
> Unless you have no other choice, you should avoid writing code in app delegate.

*Reasoning*: Application delegate class has the responsibility of responding to application events. There is no reason to overload it with more responsibilites than that. Doing so would only lead to break the single responsibility principle, turning the application delegate into sort of a GOD class.

***

##### Comments should not make up for bad code
> When you need to comment something as to explain thoroughly what the code is supposed to do, think twice. Better you'd have clean code which does not need to be commented in order to be understood. Of course there are very specific situations (which several times are related with business logic) in which you do need to clarify the code by adding comments.

*Examples*: [real](src/real/commenting.m)

*Reasoning*: Clear and expressive code with few comments is far superior to cluttered and complex code with lots of comments. 

***

##### Avoid complex lines of code
> Since Objective-C is such an expressive language where you often need to make things really explicit, it has no sense to set a limit for columns width length. Nonetheless, it's good to try to keep them short. It doesn't mean you should choose short names, but rather you should avoid performing multiple steps within the same line of code.

*Examples*: [educative](src/educative/simpleCode.m) | [real](src/real/simpleCode.m)

*Reasoning*: By separating multiple steps into different lines of code you gain two main benefits: First, steps you are performing will get labeled, since you will need to specify names for them. As a consequence of this, your code will get more readable. Second, given that you will get separated objects, you will be able to debug them easier.

***

##### Prefer small methods over big ones
> * Methods should do one thing, and they should do it right.
> * It's better to have a high number of small methods rather than a small number of big ones.

*Examples*: [real](src/real/smallMethods.m)

*Reasoning*:  Code becomes more consistent with shorter methods since you make sure that all statements within a method have the same level of abstraction. As a plus, your code gains readability, since you will need more naming as the number of methods increase.

***

##### Order methods from top to bottom
> The code should be able to be read like a top-down narrative. Methods that are called by other methods within the same class should be placed below their callers. This techique is known as *the stepdown rule*.

*Examples*: [educative](src/educative/orderMethods.m) | [real](src/real/orderMethods.m)

*Reasoning*: Code becomes easier to read and follow. In addition, putting this technique in practice will help you keep methods short, making sure they do one thing.

***

##### Horizontal spacing for literals
> Since we consider it's not worth it to strictly enforce how the horizontal spacing should be when it comes to literals, we made this a suggestion rather than a rule. The example below demonstrates what's the way we think literals are understood the best, where their syntaxes match the following conditions:
> * For arrays: 
>  * No spaces after `@[`
>  * No spaces before `]` 
>  * A space after each comma
> * For dictionaries:
>  * A space after each colon
>  * An enter after each comma
>  * `@{` in a separated line
>  * `}` in a separated line 

*Examples*: [educative](src/educative/literalsHorizontalSpacing.m) | [real](src/real/literalsHorizontalSpacing.m)

*Reasoning*: It aids readability.

***

##### Use the ternary operator when convenient
> * When convenient, use the ternary operator to replace a complete if-else statement.
> * Don't nest ternary operators, since in that case they become really difficult to read.

*Examples*: [educative](src/educative/ternaryOperator.m) | [real](src/real/ternaryOperator.m)

*Reasoning*: Not only does the ternary operator make the code shorter, but it also aids clarity.

***

##### Avoid singleton abuse
> When there is no need to keep global state, then don't keep it.

*Reasoning*: Given the way Apple's frameworks have been architectured, Objective-C developers are quite used to apply the singleton pattern everywhere. It should be known (and considered) that having global state in code means evil, and that it's a thing that should be discouraged from being done. [This article](http://www.objc.io/issue-13/singletons.html) explains why.

***

##### Add specific comments to code that needs attention
> Use "`// TODO:`" comments to identify pieces of code that you have left to review later or that need special atention for some reason.

*Examples*: [real](src/real/todoComments.m)

*Reasoning*: Being consistent for commenting such situations lets any developer quickly spot issues at an earlier stage, which lowers risks in production code.