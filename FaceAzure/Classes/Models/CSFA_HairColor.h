/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_HairColorType.h"

/**
 * Hair color and associated confidence.
 */
@interface CSFA_HairColor : NSObject <AZCodable>
/**
 * Name of the hair color. Possible values include: 'unknown', 'white', 'gray',
 * 'blond', 'brown', 'red', 'black', 'other'.
 */
@property CSFA_HairColorType *color;
/**
 * Confidence level of the color.
 */
@property AZDouble *confidence;
@end
