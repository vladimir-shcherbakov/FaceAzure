/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_Faces.h"
#import "CSFA_PersonGroupPersons.h"
#import "CSFA_PersonGroups.h"
#import "CSFA_FaceLists.h"
#import "CSFA_LargePersonGroupPersons.h"
#import "CSFA_LargePersonGroups.h"
#import "CSFA_LargeFaceLists.h"

/**
 * The interface for FaceClient class.
 */
@protocol CSFA_FaceClientServiceProtocol

/**
 * Gets the CSFA_FacesProtocol object to access its operations.
 * @return the CSFA_Faces object.
 */
- (id<CSFA_FacesProtocol>) faces;

/**
 * Gets the CSFA_PersonGroupPersonsProtocol object to access its operations.
 * @return the CSFA_PersonGroupPersons object.
 */
- (id<CSFA_PersonGroupPersonsProtocol>) personGroupPersons;

/**
 * Gets the CSFA_PersonGroupsProtocol object to access its operations.
 * @return the CSFA_PersonGroups object.
 */
- (id<CSFA_PersonGroupsProtocol>) personGroups;

/**
 * Gets the CSFA_FaceListsProtocol object to access its operations.
 * @return the CSFA_FaceLists object.
 */
- (id<CSFA_FaceListsProtocol>) faceLists;

/**
 * Gets the CSFA_LargePersonGroupPersonsProtocol object to access its operations.
 * @return the CSFA_LargePersonGroupPersons object.
 */
- (id<CSFA_LargePersonGroupPersonsProtocol>) largePersonGroupPersons;

/**
 * Gets the CSFA_LargePersonGroupsProtocol object to access its operations.
 * @return the CSFA_LargePersonGroups object.
 */
- (id<CSFA_LargePersonGroupsProtocol>) largePersonGroups;

/**
 * Gets the CSFA_LargeFaceListsProtocol object to access its operations.
 * @return the CSFA_LargeFaceLists object.
 */
- (id<CSFA_LargeFaceListsProtocol>) largeFaceLists;

@end

@interface CSFA_FaceClientService : NSObject <CSFA_FaceClientServiceProtocol>
/**
The default base URL. https://{Endpoint}/face/v1.0
*/
@property (readonly) NSString* DEFAULT_BASE_URL;
@property (readonly) NSString* key;
@property (readonly) NSDictionary* specialHeaders;

/**
 * Supported Cognitive Services endpoints (protocol and hostname, for example: https://westus.api.cognitive.microsoft.com)..
 */
@property  NSString* endpoint;

+ (id<CSFA_FaceClientServiceProtocol>)createWithEndpoint:(NSString*)endpoint;
@end