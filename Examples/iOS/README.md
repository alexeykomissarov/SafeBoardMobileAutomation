# Cucumber.rb iOS Sample
Пример простейшего автотеста на Cucumber.rb для продукта Kaspersky Password Manager iOS.\
В тесте пролистывается карусель экрана Welcome и в пост-кондишене проверяется, что попали на экран с соглашениями.\
Тест запускается на реальном девайсе, окружение описывается в файле features/support/env.rb\
Сам же тест-кейс описан в файле features/pass_welcome_screen.feature, а его шаги описываются в features/step_definitions/wizard_steps.rb\
\
Перед запуском теста необходимо установить gem зависимости\
`bundle install`\
\
Сам тест запускается скиптом run_tests.sh, его нужно отредактировать и вписать DEVICE_UDID используемого устройства.\
UDID устройства можно посмотреть в iTunes или Xcode -> Window -> Devices and Simulators 
