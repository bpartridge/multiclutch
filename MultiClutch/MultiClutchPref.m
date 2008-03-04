//
//  AirKeysPref.m
//  AirKeys
//
//  Controller for our prefpane.
//  Copyright 2008 Wonderboots. Reasonable rights reserved.
//

#import "MultiClutchPref.h"
#import "SRKeyCodeTransformer.h"

@implementation MultiClutchPref

-(id) init {
	self = [super init];
	return self;
	NSValueTransformer *transformer = [[SRKeyCodeTransformer alloc] init];
    [NSValueTransformer setValueTransformer:transformer forName:@"SRKeyCodeTransformer"];
}
-(void) dealloc{
	[super dealloc];
}

- (void)willUnselect {
	[[NSNotificationCenter defaultCenter] 
	 postNotificationName: @"paneWillUnselect" object: NSApp];
}

@end
