
var target = UIATarget.localTarget();

var app = target.frontMostApp();
var navBar = app.navigationBar();
var window = app.mainWindow();

target.setDeviceOrientation(UIA_DEVICE_ORIENTATION_PORTRAIT);

navBar.rightButton().tap();

UIALogger.logStart("Test Title");

if (navBar.name() == "Second Scene"){
    UIALogger.logPass("Test Title Pass");
}else{
    UIALogger.logFail("Wrong Title");
}

target.delay(1.0);
window.buttons()["Show"].tap();
target.delay(2.0);
navBar.leftButton().tap();
target.delay(2.0);
navBar.leftButton().tap();

UIALogger.logPass("Success");
