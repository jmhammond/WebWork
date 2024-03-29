/*
	ArrayOfWebworkSOAPClassesUserSet.h
	The implementation of properties and methods for the ArrayOfWebworkSOAPClassesUserSet object.
	Generated by SudzC.com
*/
#import "ArrayOfWebworkSOAPClassesUserSet.h"

@implementation ArrayOfWebworkSOAPClassesUserSet

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (ArrayOfWebworkSOAPClassesUserSet*) newWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (ArrayOfWebworkSOAPClassesUserSet*)[[[ArrayOfWebworkSOAPClassesUserSet alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ArrayOfWebworkSOAPClassesUserSet"];
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
		if(object != nil && [object isKindOfClass:[ArrayOfWebworkSOAPClassesUserSet class]]) {
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
