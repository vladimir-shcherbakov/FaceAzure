/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_NameAndUserDataContract.h"

/**
 * Large face list object.
 */
@interface CSFA_LargeFaceList : CSFA_NameAndUserDataContract <AZCodable>
/**
 * LargeFaceListId of the target large face list.
 */
@property NSString *largeFaceListId;
/**
* Creates an instance of CSFA_LargeFaceList class.
* @param largeFaceListId largeFaceListId of the target large face list.
*/
- (id) initWithLargeFaceListId:(NSString *)largeFaceListId;
@end
