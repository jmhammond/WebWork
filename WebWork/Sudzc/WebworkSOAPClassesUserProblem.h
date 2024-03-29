/*
	WebworkSOAPClassesUserProblem.h
	The interface definition of properties and methods for the WebworkSOAPClassesUserProblem object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WebworkSOAPClassesUserProblem : SoapObject
{
	NSString* _user_id;
	NSString* _set_id;
	NSString* _problem_id;
	NSString* _source_file;
	NSString* _value;
	NSString* _max_attempts;
	NSString* _problem_seed;
	NSString* _status;
	NSString* _attempted;
	NSString* _last_answer;
	NSString* _num_correct;
	NSString* _num_incorrect;
	
}
		
	@property (retain, nonatomic) NSString* user_id;
	@property (retain, nonatomic) NSString* set_id;
	@property (retain, nonatomic) NSString* problem_id;
	@property (retain, nonatomic) NSString* source_file;
	@property (retain, nonatomic) NSString* value;
	@property (retain, nonatomic) NSString* max_attempts;
	@property (retain, nonatomic) NSString* problem_seed;
	@property (retain, nonatomic) NSString* status;
	@property (retain, nonatomic) NSString* attempted;
	@property (retain, nonatomic) NSString* last_answer;
	@property (retain, nonatomic) NSString* num_correct;
	@property (retain, nonatomic) NSString* num_incorrect;

	+ (WebworkSOAPClassesUserProblem*) newWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
