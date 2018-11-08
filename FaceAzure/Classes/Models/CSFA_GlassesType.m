/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import "CSFA_GlassesType.h"

/**
 * Defines values for CSFA_GlassesType.
 */
@implementation CSFA_GlassesType
+ (NSArray*)values {
    static NSArray *allValues;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        allValues = @[
            @"noGlasses",
            @"readingGlasses",
            @"sunglasses",
            @"swimmingGoggles"
        ];
    });
    return allValues;
}
/** Enum value noGlasses. */
+ (CSFA_GlassesType*)NO_GLASSES {
    return [CSFA_GlassesType values][0];
}
/** Enum value readingGlasses. */
+ (CSFA_GlassesType*)READING_GLASSES {
    return [CSFA_GlassesType values][1];
}
/** Enum value sunglasses. */
+ (CSFA_GlassesType*)SUNGLASSES {
    return [CSFA_GlassesType values][2];
}
/** Enum value swimmingGoggles. */
+ (CSFA_GlassesType*)SWIMMING_GOGGLES {
    return [CSFA_GlassesType values][3];
}
+ (CSFA_GlassesType *)fromString:(NSString *)string {
    if (![[CSFA_GlassesType values]containsObject:string]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"The string is not the enum member" userInfo:nil];
    }
    return (CSFA_GlassesType *)string;
}
+ (NSString *)toStringValue:(CSFA_GlassesType *)value {
    if (![[CSFA_GlassesType values]containsObject:value]) {
        @throw [NSException exceptionWithName:@"EnumCastException" reason:@"Enum value doesn't exist" userInfo:nil];
    }
    return (NSString *)value;
}
@end
