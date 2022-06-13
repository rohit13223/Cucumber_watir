# itarp-automated-testing
Preconditions: Setup and install cucumber in your system

In order to setup

```
clone the repo and run `bundle install` from the project root folder.
```

we can run the specific tests using tags on scenarios using --tag @tag-name. e.g. 

```
`bundle exec cucumber --tag @tag-name`
```
we can also generate the nice html test execution report using below command with 'bundle exec cucumber'

```
['--format html --out automation_report.html --format pretty']
```

or we can to the same and output in json format

```
['--format json --out automation_report.json --format pretty']
```
