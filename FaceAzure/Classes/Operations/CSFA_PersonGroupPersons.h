/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_PersistedFace.h"
#import "CSFA_Person.h"
@class AZOperationError;

/**
 * An protocol provides access to all CSFA_PersonGroupPersons operations
 */
@protocol CSFA_PersonGroupPersonsProtocol

/**
 * Create a new person in a specified person group.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where CSFA_Person is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)createWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(CSFA_Person*, AZOperationError*))callback;

/**
 * Create a new person in a specified person group.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where CSFA_Person is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)createWithPersonGroupId:(NSString *)personGroupId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(CSFA_Person*, AZOperationError*))callback;

/**
 * List all persons in a person group, and retrieve person information (including personId, name, userData and persistedFaceIds of registered faces of the person).
 *
 * @param personGroupId Id referencing a particular person group.
 * @param callback A block where NSArray<CSFA_Person*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)listWithPersonGroupId:(NSString *)personGroupId withCallback:(void(^)(NSArray<CSFA_Person*>*, AZOperationError*))callback;

/**
 * List all persons in a person group, and retrieve person information (including personId, name, userData and persistedFaceIds of registered faces of the person).
 *
 * @param personGroupId Id referencing a particular person group.
 * @param start Starting person id to return (used to list a range of persons).
 * @param top Number of persons to return starting with the person id indicated by the 'start' parameter.
 * @param callback A block where NSArray<CSFA_Person*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)listWithPersonGroupId:(NSString *)personGroupId withStart:(NSString *)start withTop:(AZInteger *)top withCallback:(void(^)(NSArray<CSFA_Person*>*, AZOperationError*))callback;

/**
 * Delete an existing person from a person group. All stored person data, and face features in the person entry will be deleted.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)deleteWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Retrieve a person's information, including registered persisted faces, name and userData.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param callback A block where CSFA_Person is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)getWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withCallback:(void(^)(CSFA_Person*, AZOperationError*))callback;

/**
 * Update name or userData of a person.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Update name or userData of a person.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback;

/**
 * Delete a face from a person. Relative feature for the persisted face will also be deleted.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)deleteFaceWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Retrieve information about a persisted face (specified by persistedFaceId, personId and its belonging personGroupId).
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)getFaceWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Update a person persisted face's userData field.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateFaceWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Update a person persisted face's userData field.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param userData User-provided data attached to the face. The size limit is 1KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateFaceWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withPersistedFaceId:(NSUUID *)persistedFaceId withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback;

/**
 * Add a representative face to a person for identification. The input face is specified as an image with a targetFace rectangle.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param url Publicly reachable URL of an image
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromUrlWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withUrl:(NSString *)url withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Add a representative face to a person for identification. The input face is specified as an image with a targetFace rectangle.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param url Publicly reachable URL of an image
 * @param userData User-specified data about the face for any purpose. The maximum length is 1KB.
 * @param targetFace A face rectangle to specify the target face to be added to a person in the format of "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there is more than one face in the image, targetFace is required to specify which face to add. No targetFace means there is only one face detected in the entire image.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromUrlWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withUrl:(NSString *)url withUserData:(NSString *)userData withTargetFace:(NSArray<AZInteger*> *)targetFace withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Add a representative face to a person for identification. The input face is specified as an image with a targetFace rectangle.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param image An image stream.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromStreamWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withImage:(AZStream *)image withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Add a representative face to a person for identification. The input face is specified as an image with a targetFace rectangle.
 *
 * @param personGroupId Id referencing a particular person group.
 * @param personId Id referencing a particular person.
 * @param image An image stream.
 * @param userData User-specified data about the face for any purpose. The maximum length is 1KB.
 * @param targetFace A face rectangle to specify the target face to be added to a person in the format of "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there is more than one face in the image, targetFace is required to specify which face to add. No targetFace means there is only one face detected in the entire image.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromStreamWithPersonGroupId:(NSString *)personGroupId withPersonId:(NSUUID *)personId withImage:(AZStream *)image withUserData:(NSString *)userData withTargetFace:(NSArray<AZInteger*> *)targetFace withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

@end

/**
* The protocol implementation
*/
@class CSFA_FaceClientService;

@interface CSFA_PersonGroupPersons : NSObject <CSFA_PersonGroupPersonsProtocol>
@property (readonly) CSFA_FaceClientService *service;
- (instancetype)initWithService:(CSFA_FaceClientService *)service;
@end
