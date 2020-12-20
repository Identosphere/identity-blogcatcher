.PHONY: merge build orgsfeed test testorg try

merge:
	pluto m planetid.ini -t planetid -o docs
	pluto m organizations.ini -t orgsfeed -o docs/organizations
	pluto m companies.ini -t companies -o docs/companies
	git add .
	git commit -a -m "merge templates"
	git push

build:
	pluto b planetid.ini -t planetid -o docs
	pluto b organizations.ini -t orgsfeed -o docs/organizations
	pluto b companies.ini -t companies -o docs/companies
	git commit -a -m "build feeds"
	git pull
	git push

try:
	rm try.db
	pluto b try.ini -t planetid -o try

test:
	pluto m planetid.ini -t planetid -o test
	pluto m organizations.ini -t orgsfeed -o test/organizations
	pluto m companies.ini -t companies -o test/companies

demo:
	pluto m planetid.ini -t planetid -o test
