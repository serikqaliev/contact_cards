codegen-cached:
	fvm	dart run build_runner build

codegen:
	fvm dart run build_runner build --delete-conflicting-outputs

codegen-release:
	fvm dart run build_runner build --delete-conflicting-outputs --config release

icons:
	fvm dart run flutter_launcher_icons -f flutter_launcher_icons.yaml

splash:
	fvm dart run flutter_native_splash:create --path=flutter_native_splash.yaml

clean:
	fvm flutter clean

get:
	fvm flutter pub get

.PHONY: codegen-cached codegen codegen-release icons splash