VERSION:=$(shell date +"%y.%-m.%-d-%-H.%-M")

.SILENT:

build-esbuild-es2021: clean
	pnpm build:esbuild:es2021

build-esbuild-es2021-bundle: clean
	pnpm build:esbuild:es2021:bundle

build-tsc-default-es2021: clean
	pnpm build:tsc:default:es2021

clean:
	pnpm clean

publish-public:
	pnpm publish --access public

test-ava-all:
	pnpm test:ava:all

update-version:
	jq ".version = \"$(VERSION)\"" package.json > package.json.new
	mv package.json.new package.json
