/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_NoiseLevel.h"

/**
 * Properties describing noise level of the image.
 */
@interface CSFA_Noise : NSObject <AZCodable>
/**
 * An enum value indicating level of noise. Possible values include: 'Low',
 * 'Medium', 'High'.
 */
@property CSFA_NoiseLevel *noiseLevel;
/**
 * A number indicating level of noise level ranging from 0 to 1. [0, 0.25) is
 * under exposure. [0.25, 0.75) is good exposure. [0.75, 1] is over exposure.
 * [0, 0.3) is low noise level. [0.3, 0.7) is medium noise level. [0.7, 1] is
 * high noise level.
 */
@property AZDouble *value;
@end
