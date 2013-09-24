//
//  NSObject+AssociatedObjects.h
//  CYHelperDemo
//
// These methods are imported from BlocksKit which created and maintained by Pandamonia LLC.
// https://github.com/pandamonia/BlocksKit
// Special thank for them.

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedObjects)

/** Strongly associates an object with the reciever.
 
 The associated value is retained as if it were a property
 synthesized with `nonatomic` and `retain`.
 
 Using retained association is strongly recommended for most
 Objective-C object derivative of NSObject, particularly
 when it is subject to being externally released or is in an
 `NSAutoreleasePool`.
 
 @param value Any object.
 @param key A unique key pointer.
 */
- (void)associateValue:(id)value withKey:(const void *)key;

/** Strongly associates an object with the receiving class.
 
 @see associateValue:withKey:
 @param value Any object.
 @param key A unique key pointer.
 */
+ (void)associateValue:(id)value withKey:(const void *)key;

/** Strongly, thread-safely associates an object with the reciever.
 
 The associated value is retained as if it were a property
 synthesized with `atomic` and `retain`.
 
 Using retained association is strongly recommended for most
 Objective-C object derivative of NSObject, particularly
 when it is subject to being externally released or is in an
 `NSAutoreleasePool`.
 
 @see associateValue:withKey:
 @param value Any object.
 @param key A unique key pointer.
 */
- (void)atomicallyAssociateValue:(id)value withKey:(const void *)key;

/** Strongly, thread-safely associates an object with the receiving class.
 
 @see associateValue:withKey:
 @param value Any object.
 @param key A unique key pointer.
 */
+ (void)atomicallyAssociateValue:(id)value withKey:(const void *)key;

/** Associates a copy of an object with the reciever.
 
 The associated value is copied as if it were a property
 synthesized with `nonatomic` and `copy`.
 
 Using copied association is recommended for a block or
 otherwise `NSCopying`-compliant instances like NSString.
 
 @param value Any object, pointer, or value.
 @param key A unique key pointer.
 */
- (void)associateCopyOfValue:(id)value withKey:(const void *)key;

/** Associates a copy of an object with the receiving class.
 
 @see associateCopyOfValue:withKey:
 @param value Any object, pointer, or value.
 @param key A unique key pointer.
 */
+ (void)associateCopyOfValue:(id)value withKey:(const void *)key;

/** Thread-safely associates a copy of an object with the reciever.
 
 The associated value is copied as if it were a property
 synthesized with `atomic` and `copy`.
 
 Using copied association is recommended for a block or
 otherwise `NSCopying`-compliant instances like NSString.
 
 @see associateCopyOfValue:withKey:
 @param value Any object, pointer, or value.
 @param key A unique key pointer.
 */
- (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key;

/** Thread-safely associates a copy of an object with the receiving class.
 
 @see associateCopyOfValue:withKey:
 @param value Any object, pointer, or value.
 @param key A unique key pointer.
 */
+ (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key;

/** Weakly associates an object with the reciever.
 
 A weak association will cause the pointer to be set to zero
 or nil upon the disappearance of what it references;
 in other words, the associated object is not kept alive.
 
 @param value Any object.
 @param key A unique key pointer.
 */
- (void)weaklyAssociateValue:(id)value withKey:(const void *)key;

/** Weakly associates an object with the receiving class.
 
 @see weaklyAssociateValue:withKey:
 @param value Any object.
 @param key A unique key pointer.
 */
+ (void)weaklyAssociateValue:(id)value withKey:(const void *)key;

/** Returns the associated value for a key on the reciever.

 @param key A unique key pointer.
 @return The object associated with the key, or `nil` if not found.
 */
- (id)associatedValueForKey:(const void *)key;

/** Returns the associated value for a key on the receiving class.
 
 @see associatedValueForKey:
 @param key A unique key pointer.
 @return The object associated with the key, or `nil` if not found.
 */
+ (id)associatedValueForKey:(const void *)key;

/** Returns the reciever to a clean state by removing all
 associated objects, releasing them if necessary. */
- (void)removeAllAssociatedObjects;

/** Returns the recieving class to a clean state by removing
 all associated objects, releasing them if necessary. */
+ (void)removeAllAssociatedObjects;

@end
