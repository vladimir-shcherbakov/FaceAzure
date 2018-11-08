/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_Gender.h"

/**
 * Defines values for CSFA_Gender.
 */
@implementation CSFA_Gender
+ (NSArray*)values {
    static NSArray *allValues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allValues = @[
            @"male",
            @"female",
            @"genderless"
        ];
    });
    return allValues;
}
/** Enum value male. */
+ (CSFA_Gender*)MALE {
    return [CSFA_Gender values][0];
}
/** Enum value female. */
+ (CSFA_Gender*)FEMALE {
    return [CSFA_Gender values][1];
}
/** Enum value genderless. */
+ (CSFA_Gender*)GENDERLESS {
    return [CSFA_Gender values][2];
}
+ (CSFA_Gender *)fromString:(NSString *)string {
    if (![[CSFA_Gender values]containsObject:string]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"The string is not the enum member" userInfo:nil];
    }
    return (CSFA_Gender *)string;
}
+ (NSString *)toStringValue:(CSFA_Gender *)value {
    if (![[CSFA_Gender values]containsObject:value]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"Enum value doesn't exist" userInfo:nil];
    }
    return (NSString *)value;
}
@end