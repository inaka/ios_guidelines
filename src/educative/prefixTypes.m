/* The Good */
typedef NS_ENUM (NSInteger, ProperlyPrefixedType) {
    ProperlyPrefixedTypeUnknown = -1,
    ProperlyPrefixedTypeSome,
    ProperlyPrefixedTypeOther
};

/* The Bad */
typedef NS_ENUM (NSInteger, NotPrefixedType) {
    unknown = -1,
    some,
    other
};