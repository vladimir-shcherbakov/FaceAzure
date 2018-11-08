/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_ExposureLevel.h"

/**
 * Properties describing exposure level of the image.
 */
@interface CSFA_Exposure : NSObject <AZCodable>
/**
 * An enum value indicating level of exposure. Possible values include:
 * 'UnderExposure', 'GoodExposure', 'OverExposure'.
 */
@property CSFA_ExposureLevel *exposureLevel;
/**
 * A number indicating level of exposure level ranging from 0 to 1. [0, 0.25)
 * is under exposure. [0.25, 0.75) is good exposure. [0.75, 1] is over
 * exposure.
 */
@property AZDouble *value;
@end