/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSFA_LargeFaceList.h"
#import "CSFA_PersistedFace.h"
#import "CSFA_TrainingStatus.h"
@class AZOperationError;

/**
 * An protocol provides access to all CSFA_LargeFaceLists operations
 */
@protocol CSFA_LargeFaceListsProtocol

/**
 * Create an empty large face list. Up to 64 large face lists are allowed to exist in one subscription.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)createWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Create an empty large face list. Up to 64 large face lists are allowed to exist in one subscription.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)createWithLargeFaceListId:(NSString *)largeFaceListId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback;

/**
 * Retrieve a large face list's information.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where CSFA_LargeFaceList is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)getWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(CSFA_LargeFaceList*, AZOperationError*))callback;

/**
 * Update information of a large face list.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Update information of a large face list.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param name User defined name, maximum length is 128.
 * @param userData User specified data. Length should not exceed 16KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateWithLargeFaceListId:(NSString *)largeFaceListId withName:(NSString *)name withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback;

/**
 * Delete an existing large face list according to faceListId. Persisted face images in the large face list will also be deleted.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)deleteWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Retrieve the training status of a large face list (completed or ongoing).
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where CSFA_TrainingStatus is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)getTrainingStatusWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(CSFA_TrainingStatus*, AZOperationError*))callback;

/**
 * Retrieve information about all existing large face lists. Only largeFaceListId, name and userData will be returned.
 *
 * @param callback A block where NSArray<CSFA_LargeFaceList*> is a result object and AZOperationError is nil, if the operation is successful
 */
- (void)listWithCallback:(void(^)(NSArray<CSFA_LargeFaceList*>*, AZOperationError*))callback;

/**
 * Queue a large face list training task, the training task may not be started immediately.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)trainWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Delete an existing face from a large face list (given by a persisitedFaceId and a largeFaceListId). Persisted image related to the face will also be deleted.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)deleteFaceWithLargeFaceListId:(NSString *)largeFaceListId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Retrieve information about a persisted face (specified by persistedFaceId and its belonging largeFaceListId).
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)getFaceWithLargeFaceListId:(NSString *)largeFaceListId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Update a persisted face's userData field.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateFaceWithLargeFaceListId:(NSString *)largeFaceListId withPersistedFaceId:(NSUUID *)persistedFaceId withCallback:(void(^)(AZOperationError*))callback;

/**
 * Update a persisted face's userData field.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param persistedFaceId Id referencing a particular persistedFaceId of an existing face.
 * @param userData User-provided data attached to the face. The size limit is 1KB.
 * @param callback A block where AZOperationError is nil if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)updateFaceWithLargeFaceListId:(NSString *)largeFaceListId withPersistedFaceId:(NSUUID *)persistedFaceId withUserData:(NSString *)userData withCallback:(void(^)(AZOperationError*))callback;

/**
 * Add a face to a large face list. The input face is specified as an image with a targetFace rectangle. It returns a persistedFaceId representing the added face, and persistedFaceId will not expire.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param url Publicly reachable URL of an image
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromUrlWithLargeFaceListId:(NSString *)largeFaceListId withUrl:(NSString *)url withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Add a face to a large face list. The input face is specified as an image with a targetFace rectangle. It returns a persistedFaceId representing the added face, and persistedFaceId will not expire.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param url Publicly reachable URL of an image
 * @param userData User-specified data about the face for any purpose. The maximum length is 1KB.
 * @param targetFace A face rectangle to specify the target face to be added to a person in the format of "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there is more than one face in the image, targetFace is required to specify which face to add. No targetFace means there is only one face detected in the entire image.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromUrlWithLargeFaceListId:(NSString *)largeFaceListId withUrl:(NSString *)url withUserData:(NSString *)userData withTargetFace:(NSArray<AZInteger*> *)targetFace withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * List all faces in a large face list, and retrieve face information (including userData and persistedFaceIds of registered faces of the face).
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param callback A block where NSArray<CSFA_PersistedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)listFacesWithLargeFaceListId:(NSString *)largeFaceListId withCallback:(void(^)(NSArray<CSFA_PersistedFace*>*, AZOperationError*))callback;

/**
 * List all faces in a large face list, and retrieve face information (including userData and persistedFaceIds of registered faces of the face).
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param start Starting face id to return (used to list a range of faces).
 * @param top Number of faces to return starting with the face id indicated by the 'start' parameter.
 * @param callback A block where NSArray<CSFA_PersistedFace*> is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)listFacesWithLargeFaceListId:(NSString *)largeFaceListId withStart:(NSString *)start withTop:(AZInteger *)top withCallback:(void(^)(NSArray<CSFA_PersistedFace*>*, AZOperationError*))callback;

/**
 * Add a face to a large face list. The input face is specified as an image with a targetFace rectangle. It returns a persistedFaceId representing the added face, and persistedFaceId will not expire.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param image An image stream.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromStreamWithLargeFaceListId:(NSString *)largeFaceListId withImage:(AZStream *)image withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

/**
 * Add a face to a large face list. The input face is specified as an image with a targetFace rectangle. It returns a persistedFaceId representing the added face, and persistedFaceId will not expire.
 *
 * @param largeFaceListId Id referencing a particular large face list.
 * @param image An image stream.
 * @param userData User-specified data about the face for any purpose. The maximum length is 1KB.
 * @param targetFace A face rectangle to specify the target face to be added to a person in the format of "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there is more than one face in the image, targetFace is required to specify which face to add. No targetFace means there is only one face detected in the entire image.
 * @param callback A block where CSFA_PersistedFace is a result object and AZOperationError is nil, if the operation is successful
 * @throws IllegalArgumentException if a required parameter is not provided.
 */
- (void)addFaceFromStreamWithLargeFaceListId:(NSString *)largeFaceListId withImage:(AZStream *)image withUserData:(NSString *)userData withTargetFace:(NSArray<AZInteger*> *)targetFace withCallback:(void(^)(CSFA_PersistedFace*, AZOperationError*))callback;

@end

/**
* The protocol implementation
*/
@class CSFA_FaceClientService;

@interface CSFA_LargeFaceLists : NSObject <CSFA_LargeFaceListsProtocol>
@property (readonly) CSFA_FaceClientService *service;
- (instancetype)initWithService:(CSFA_FaceClientService *)service;
@end