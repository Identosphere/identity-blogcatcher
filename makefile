.PHONY: merge build orgsfeed test testorg try web3 deepseek

merge:
	pluto m planetid.ini -t planetid -o docs
	pluto m organizations.ini -t orgsfeed -o docs/organizations
	pluto m companies.ini -t companies -o docs/companies
	pluto m media.ini -t media -o docs/media
	git add .
	git commit -a -m "merge templates"
	git push

build:
	pluto b planetid.ini -t planetid -o docs
	pluto b organizations.ini -t orgsfeed -o docs/organizations
	pluto b companies.ini -t companies -o docs/companies
	pluto b media.ini -t media -o docs/media
	pluto b web3.ini -t web3 -o docs/web3
	git commit -a -m "build feeds"
	git pull
	git push

try:
	-rm -f try.db || true 
	pluto --verbose b try.ini -t planetid -o try

web3:
	-rm -f web3.db || true 
	pluto m web3.ini -t web3 -o test


test:
	pluto m planetid.ini -t planetid -o test
	pluto m organizations.ini -t orgsfeed -o test/organizations
	pluto m companies.ini -t companies -o test/companies

demo:
	pluto m planetid.ini -t planetid -o test
