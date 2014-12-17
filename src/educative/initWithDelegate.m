/* Preferred */

// SomeClass.h
+ (instancetype)instanceWithDelegate:(id<SomeClassDelegate>)delegate;

// SomeOtherClass.m
SomeClass *someInstance = [SomeClass instanceWithDelegate:self];





/* Not Preferred */

// SomeClass.h
+ (instancetype)instance;

// SomeOtherClass.m
SomeClass *someInstance = [SomeClass instance];
someInstance.delegate = self;