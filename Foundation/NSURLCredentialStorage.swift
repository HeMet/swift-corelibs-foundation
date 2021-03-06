// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2015 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//


/*!
    @class NSURLCredentialStorage
    @discussion NSURLCredentialStorage implements a singleton object (shared instance) which manages the shared credentials cache. Note: Whereas in Mac OS X any application can access any credential with a persistence of NSURLCredentialPersistencePermanent provided the user gives permission, in iPhone OS an application can access only its own credentials.
*/
public class NSURLCredentialStorage : NSObject {
    
    /*!
        @method sharedCredentialStorage
        @abstract Get the shared singleton authentication storage
        @result the shared authentication storage
    */
    public class func sharedCredentialStorage() -> NSURLCredentialStorage { NSUnimplemented() }
    
    /*!
        @method credentialsForProtectionSpace:
        @abstract Get a dictionary mapping usernames to credentials for the specified protection space.
        @param protectionSpace An NSURLProtectionSpace indicating the protection space for which to get credentials
        @result A dictionary where the keys are usernames and the values are the corresponding NSURLCredentials.
    */
    public func credentialsForProtectionSpace(space: NSURLProtectionSpace) -> [String : NSURLCredential]? { NSUnimplemented() }
    
    /*!
        @method allCredentials
        @abstract Get a dictionary mapping NSURLProtectionSpaces to dictionaries which map usernames to NSURLCredentials
        @result an NSDictionary where the keys are NSURLProtectionSpaces
        and the values are dictionaries, in which the keys are usernames
        and the values are NSURLCredentials
    */
    public var allCredentials: [NSURLProtectionSpace : [String : NSURLCredential]] { NSUnimplemented() }
    
    /*!
        @method setCredential:forProtectionSpace:
        @abstract Add a new credential to the set for the specified protection space or replace an existing one.
        @param credential The credential to set.
        @param space The protection space for which to add it. 
        @discussion Multiple credentials may be set for a given protection space, but each must have
        a distinct user. If a credential with the same user is already set for the protection space,
        the new one will replace it.
    */
    public func setCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace) { NSUnimplemented() }
    
    /*!
        @method removeCredential:forProtectionSpace:
        @abstract Remove the credential from the set for the specified protection space.
        @param credential The credential to remove.
        @param space The protection space for which a credential should be removed
        @discussion The credential is removed from both persistent and temporary storage. A credential that
        has a persistence policy of NSURLCredentialPersistenceSynchronizable will fail.  
        See removeCredential:forProtectionSpace:options.
    */
    public func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace) { NSUnimplemented() }
    
    /*!
     @method removeCredential:forProtectionSpace:options
     @abstract Remove the credential from the set for the specified protection space based on options.
     @param credential The credential to remove.
     @param space The protection space for which a credential should be removed
     @param options A dictionary containing options to consider when removing the credential.  This should
     be used when trying to delete a credential that has the NSURLCredentialPersistenceSynchronizable policy.
     Please note that when NSURLCredential objects that have a NSURLCredentialPersistenceSynchronizable policy
     are removed, the credential will be removed on all devices that contain this credential.
     @discussion The credential is removed from both persistent and temporary storage.
     */
    public func removeCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace, options: [String : AnyObject]?) { NSUnimplemented() }
    
    /*!
        @method defaultCredentialForProtectionSpace:
        @abstract Get the default credential for the specified protection space.
        @param space The protection space for which to get the default credential.
    */
    public func defaultCredentialForProtectionSpace(space: NSURLProtectionSpace) -> NSURLCredential? { NSUnimplemented() }
    
    /*!
        @method setDefaultCredential:forProtectionSpace:
        @abstract Set the default credential for the specified protection space.
        @param credential The credential to set as default.
        @param space The protection space for which the credential should be set as default.
        @discussion If the credential is not yet in the set for the protection space, it will be added to it.
    */
    public func setDefaultCredential(credential: NSURLCredential, forProtectionSpace space: NSURLProtectionSpace) { NSUnimplemented() }
}

extension NSURLCredentialStorage {
    public func getCredentialsForProtectionSpace(protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: ([String : NSURLCredential]?) -> Void) { NSUnimplemented() }
    public func setCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask) { NSUnimplemented() }
    public func removeCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, options: [String : AnyObject]?, task: NSURLSessionTask) { NSUnimplemented() }
    public func getDefaultCredentialForProtectionSpace(space: NSURLProtectionSpace, task: NSURLSessionTask, completionHandler: (NSURLCredential?) -> Void) { NSUnimplemented() }
    public func setDefaultCredential(credential: NSURLCredential, forProtectionSpace protectionSpace: NSURLProtectionSpace, task: NSURLSessionTask) { NSUnimplemented() }
}

/*!
    @const NSURLCredentialStorageChangedNotification
    @abstract This notification is sent on the main thread whenever
    the set of stored credentials changes.
*/
public let NSURLCredentialStorageChangedNotification: String = "" // NSUnimplemented

/*
 *  NSURLCredentialStorageRemoveSynchronizableCredentials - (NSNumber value)
 *		A key that indicates either @YES or @NO that credentials which contain the NSURLCredentialPersistenceSynchronizable
 *		attribute should be removed.  If the key is missing or the value is @NO, then no attempt will be made
 *		to remove such a credential.
 */
public let NSURLCredentialStorageRemoveSynchronizableCredentials: String = "" // NSUnimplemented

