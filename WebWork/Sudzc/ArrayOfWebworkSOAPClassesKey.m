/*
	ArrayOfWebworkSOAPClassesKey.h
	The implementation of properties and methods for the ArrayOfWebworkSOAPClassesKey object.
	Generated by SudzC.com
*/
#import "ArrayOfWebworkSOAPClassesKey.h"

@implementation ArrayOfWebworkSOAPClassesKey

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (ArrayOfWebworkSOAPClassesKey*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ArrayOfWebworkSOAPClassesKey*)[[[ArrayOfWebworkSOAPClassesKey alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArrayOfWebworkSOAPClassesKey"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[ArrayOfWebworkSOAPClassesKey class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end
