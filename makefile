.PHONY: merge build orgsfeed test testorg

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

test:
	pluto m planetid.ini -t planetid -o test
	pluto m organizations.ini -t orgsfeed -o test/organizations
	pluto m companies.ini -t companies -o test/companies

demo:
	pluto m planetid.ini -t planetid -o test
