/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * Properties describing present makeups on a given face.
 */
@interface CSFA_Makeup : NSObject <AZCodable>
/**
 * A boolean value describing whether eye makeup is present on a face.
 */
@property AZBoolean *eyeMakeup;
/**
 * A boolean value describing whether lip makeup is present on a face.
 */
@property AZBoolean *lipMakeup;
@end
