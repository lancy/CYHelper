//
//  CYSingletonHelper.h
//  CYHelper
//
//  Created by Lancy on 26/11/12.
//
//


#undef	AS_SINGLETON
#define AS_SINGLETON( __class ) \
    + (__class *)sharedInstance;

#undef	DEF_SINGLETON
#define DEF_SINGLETON( __class ) \
    + (__class *)sharedInstance \
    { \
        static dispatch_once_t once; \
        static __class * __singleton__; \
        dispatch_once( &once, ^{ __singleton__ = [[__class alloc] init]; } ); \
        return __singleton__; \
    }