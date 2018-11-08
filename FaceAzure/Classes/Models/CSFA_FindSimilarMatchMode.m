/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_FindSimilarMatchMode.h"

/**
 * Defines values for CSFA_FindSimilarMatchMode.
 */
@implementation CSFA_FindSimilarMatchMode
+ (NSArray*)values {
    static NSArray *allValues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allValues = @[
            @"matchPerson",
            @"matchFace"
        ];
    });
    return allValues;
}
/** Enum value matchPerson. */
+ (CSFA_FindSimilarMatchMode*)MATCH_PERSON {
    return [CSFA_FindSimilarMatchMode values][0];
}
/** Enum value matchFace. */
+ (CSFA_FindSimilarMatchMode*)MATCH_FACE {
    return [CSFA_FindSimilarMatchMode values][1];
}
+ (CSFA_FindSimilarMatchMode *)fromString:(NSString *)string {
    if (![[CSFA_FindSimilarMatchMode values]containsObject:string]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"The string is not the enum member" userInfo:nil];
    }
    return (CSFA_FindSimilarMatchMode *)string;
}
+ (NSString *)toStringValue:(CSFA_FindSimilarMatchMode *)value {
    if (![[CSFA_FindSimilarMatchMode values]containsObject:value]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"Enum value doesn't exist" userInfo:nil];
    }
    return (NSString *)value;
}
@end
