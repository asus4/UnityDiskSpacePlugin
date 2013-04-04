//
//  IDiskSpace.mm
//
//  Copyright (C) 2012 Koki Ibukuro
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


extern "C" {
	uint64_t _iDiskSpace_FreeSpece(const char *path) {
		NSDictionary *dict = [[NSFileManager defaultManager] fileSystemAttributesAtPath:[NSString stringWithUTF8String:path]];
		NSNumber *free = [dict valueForKey:@"NSFileSystemFreeSize"];
		return [free unsignedLongLongValue];
	}
	
}



