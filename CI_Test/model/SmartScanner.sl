com.conformiq.creator.structure.v15
creator.externalinterface qmlff3c63c3635445de9dfd4bcd8d1435fd "URL"
	direction = in;
creator.customaction qmlc10c07c9ced44995811019614337164b "Open URL"
	interfaces = [ qmlff3c63c3635445de9dfd4bcd8d1435fd ]
	shortform = "OU"
	direction = in
	tokens = [ literal "URL " reference qmlcb667291559e4eec8d4f1b9ceb571257 ]
{
	creator.primitivefield qmlcb667291559e4eec8d4f1b9ceb571257 "URL"
		type = String;
}
creator.gui.screen qmle80412b83df640f9aaa189fe0b6f0073 "Home | ConformIQ"
	annotations = [ "currentURL" = "https://conformiq11.odoo.com/";
]
{
	creator.gui.hyperlink qmla34ea35b33664685b6f9d9f8ad537a7e "Sign in"
		annotations = [ "linkText" = "Sign in";
	"xpath" =
	"//a[@class=\'o_nav_link_btn nav-link border px-3\' and @href=\'/web/login\']";
	"class" = "o_nav_link_btn nav-link border px-3";
	"href" = "/web/login";
	]
		status = dontcare;
}
creator.gui.screen qml08c5f98da8014cc9b84d264e1e3a2d53 "Login | ConformIQ"
	annotations = [ "currentURL" = "https://conformiq11.odoo.com/web/login";
]
{
	creator.gui.form qml7b0a58b8897a4e26970a0fd2cfd30be0 "Login | ConformIQ_FORM"
	{
		creator.gui.textbox qmlb84355f8be214e2c939e70c153eb8714 "login"
			annotations = [ "xpath" = "//input[@id=\'login\' and @name=\'login\']";
		"id" = "login";
		"name" = "login";
		"class" = "form-control";
		]
			type = String
			status = dontcare;
		creator.gui.textbox qml81333bc6715e47399be93e448f8116d1 "password"
			annotations = [ "xpath" =
		"//input[@id=\'password\' and @name=\'password\']";
		"id" = "password";
		"name" = "password";
		"class" = "form-control";
		]
			type = String
			status = dontcare;
	}
	creator.gui.button qmld914e13127b147159a6aef9bd0bae008 "Log in"
		annotations = [ "xpath" = "//button[@class=\'btn btn-primary\']";
	"class" = "btn btn-primary";
	]
		status = dontcare;
}