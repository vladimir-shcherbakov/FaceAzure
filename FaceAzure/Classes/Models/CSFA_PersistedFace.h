/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * PersonFace object.
 */
@interface CSFA_PersistedFace : NSObject <AZCodable>
/**
 * The persistedFaceId of the target face, which is persisted and will not
 * expire. Different from faceId created by Face - Detect and will expire in 24
 * hours after the detection call.
 */
@property NSUUID *persistedFaceId;
/**
 * User-provided data attached to the face. The size limit is 1KB.
 */
@property NSString *userData;
/**
* Creates an instance of CSFA_PersistedFace class.
* @param persistedFaceId the persistedFaceId of the target face, which is persisted and will not expire. Different from faceId created by Face - Detect and will expire in 24 hours after the detection call.
*/
- (id) initWithPersistedFaceId:(NSUUID *)persistedFaceId;
@end
