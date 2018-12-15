require 'appium_lib'

Before do | scenario |
	caps = {
		caps: {
			platformName: "iOS",
			deviceName: "iPhone",
			automationName: "XCUITest",
			bundleId: "com.kaspersky.passwordmanager",
			udid: ENV['DEVICE_UDID'],

			xcodeOrgId: "2Y8XE5CQ94",
			xcodeSigningId: "iPhone Developer",
			# usePrebuiltWDA: true,
			# derivedDataPath: "~/Downloads/AppiumWDA/Bin",
			showXcodeLog: true
		},
		appium_lib: {
			debug: true,
			server_url: "http://localhost:4723/wd/hub/"
		}
	}

	@driver = Appium::Driver.new(caps, true)
	Appium.promote_appium_methods(Object)
	
	@driver.start_driver
end

After do | scenario |
	@driver.driver_quit
end