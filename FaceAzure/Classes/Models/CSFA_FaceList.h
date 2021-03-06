/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_NameAndUserDataContract.h"
#import "CSFA_PersistedFace.h"

/**
 * Face list object.
 */
@interface CSFA_FaceList : CSFA_NameAndUserDataContract <AZCodable>
/**
 * FaceListId of the target face list.
 */
@property NSString *faceListId;
/**
 * Persisted faces within the face list.
 */
@property NSArray<CSFA_PersistedFace*> *persistedFaces;
/**
* Creates an instance of CSFA_FaceList class.
* @param faceListId faceListId of the target face list.
*/
- (id) initWithFaceListId:(NSString *)faceListId;
@end
