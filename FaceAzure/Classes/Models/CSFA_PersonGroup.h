/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_NameAndUserDataContract.h"

/**
 * Person group object.
 */
@interface CSFA_PersonGroup : CSFA_NameAndUserDataContract <AZCodable>
/**
 * PersonGroupId of the target person group.
 */
@property NSString *personGroupId;
/**
* Creates an instance of CSFA_PersonGroup class.
* @param personGroupId personGroupId of the target person group.
*/
- (id) initWithPersonGroupId:(NSString *)personGroupId;
@end