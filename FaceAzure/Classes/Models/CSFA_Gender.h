/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * Defines values for CSFA_Gender.
 */
@interface CSFA_Gender : NSObject <AZStringEnum>
+ (NSArray*)values;
+ (NSString *)toStringValue:(CSFA_Gender *)value;
@property (class, readonly) CSFA_Gender *MALE;
@property (class, readonly) CSFA_Gender *FEMALE;
@property (class, readonly) CSFA_Gender *GENDERLESS;
@end
