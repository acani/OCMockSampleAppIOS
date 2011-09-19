#import <SenTestingKit/SenTestingKit.h>

@interface RootViewControllerTests : SenTestCase

@end

#import "RootViewController.h"

/*

 A simple test suite to test the RootViewController. To run these tests, set OCMockSampleAppIOS as
 the active scheme and press ⌘U (Prouct -> Test).

 The first test should pass, but the second should fail. You should see a failure like:

 error: testControllerSetsUpCellCorrectly (RootViewControllerTests) failed: OCMockObject[UITableView]: unexpected method invoked: dequeueReusableCellWithIdentifier:@"Cell"

 The failure occurs when then RootViewController sends the dequeueReusableCellWithIdentifier: method
 to the mock table view. The mock view is set up to expect that method call with the string
 @"HelloWorldCell" as an argument, but the RootViewController calls the method with just @"Cell" as
 the argument. When you change the identifier in RootViewController.m to "HelloWorldCell" and re-run
 the tests, they should both pass.

 */

@implementation RootViewControllerTests

- (void)testControllerReturnsCorrectNumberOfRows {
	RootViewController *controller = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
	STAssertEquals(1, [controller tableView:nil numberOfRowsInSection:0], @"returns correct number of rows");
}

//- (void)testControllerSetsUpCellCorrectly {
//	RootViewController *controller = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
//	id mockTableView = [OCMockObject mockForClass:[UITableView class]];
//	[[[mockTableView expect] andReturn:nil] dequeueReusableCellWithIdentifier:@"HelloWorldCell"];
//
//	UITableViewCell *cell = [controller tableView:mockTableView cellForRowAtIndexPath:nil];
//
//	STAssertNotNil(cell, @"returns a cell");
//	STAssertEqualObjects(@"Hello World!", cell.textLabel.text, @"sets label");
//	[mockTableView verify];
//}

@end
