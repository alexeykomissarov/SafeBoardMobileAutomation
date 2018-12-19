require 'appium_lib'

Before do | scenario |
	caps = {
		caps: {
			deviceName: 'Nexus 5', # произвольное название
			platformName: 'android',
			automationName: 'uiautomator2', # желателен для андроид 7.0+
			bundleId: "com.kaspersky.passwordmanager",
			udid: ENV['ANDROID_SERIAL'],
		},
		appium_lib: {
			wait: 1,
			port: 4723
		}
	}

	@driver = Appium::Driver.new(caps, true)
	Appium.promote_appium_methods(Object)
	
	@driver.start_driver
end

After do | scenario |
	@driver.driver_quit
end