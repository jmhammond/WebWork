/*
	WebworkSOAPClassesGlobalProblem.h
	The interface definition of properties and methods for the WebworkSOAPClassesGlobalProblem object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WebworkSOAPClassesGlobalProblem : SoapObject
{
	NSString* _set_id;
	NSString* _problem_id;
	NSString* _source_file;
	NSString* _value;
	NSString* _max_attempts;
	
}
		
	@property (retain, nonatomic) NSString* set_id;
	@property (retain, nonatomic) NSString* problem_id;
	@property (retain, nonatomic) NSString* source_file;
	@property (retain, nonatomic) NSString* value;
	@property (retain, nonatomic) NSString* max_attempts;

	+ (WebworkSOAPClassesGlobalProblem*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end