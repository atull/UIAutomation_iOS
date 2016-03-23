
var target = UIATarget.localTarget();

var app = target.frontMostApp();
var navBar = app.navigationBar();
var window = app.mainWindow();

target.delay(1);

UIALogger.logStart("Login");

var textfields = window.textFields();
var secureTextFields = window.secureTextFields(); 

var usernameTF = textfields["nameTF"];
var passwordTF = secureTextFields["passwordTF"];

target.delay(1);

var name = "Shashikant";
var pass = "test1234";

target.captureScreenWithName("Login");
usernameTF.setValue(name);
passwordTF.setValue("test1234");

target.delay(1);

window.buttons()["LoginButton"].tap();

target.delay(3);

navBar.leftButton().tap();

UIALogger.logPass("Success");
