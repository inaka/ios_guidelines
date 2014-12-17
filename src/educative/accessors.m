/* Preferred */


// SomeClass.h
@property (strong, nonatomic) SomeKeyClass *keyObject;


// SomeClass.m
@property (strong, nonatomic) Whatever *someProperty;
@property (strong, nonatomic) Whatever *someOtherProperty;
@property (strong, nonatomic) Whatever *yetAnotherProperty;

- (void)setKeyObject:(SomeKeyClass *)keyObject {
    _keyObject = keyObject;
    
    self.someProperty = keyObject.someProperty;
    self.someOtherProperty = keyObject.someOtherProperty;
    self.yetAnotherProperty = keyObject.yetAnotherProperty;
}


// SomeOtherClass.m
SomeClass *someInstance = [SomeClass instance];
SomeKeyClass *keyObject = [self keyObject];

someInstance.keyObject = keyObject;











/* Not Preferred */

// SomeClass.h
@property (strong, nonatomic) Whatever *someProperty;
@property (strong, nonatomic) Whatever *someOtherProperty;
@property (strong, nonatomic) Whatever *yetAnotherProperty;

// SomeOtherClass.m
SomeClass *someInstance = [SomeClass instance];
SomeKeyClass *keyObject = [self keyObject];

someInstance.someProperty = keyObject.someProperty;
someInstance.someOtherProperty = keyObject.someOtherProperty;
someInstance.yetAnotherProperty = keyObject.yetAnotherProperty;
