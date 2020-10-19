## Getting Started ##



### Installing gems ###
To install gems type:
```shell
bundle install
```


### Run tests in PRODUCAO ###
Type this in the tests folder:
```shell
bundle exec cucumber  -p html_report -p prd
```

### Run tests in HMG ###
Type this in the tests folder:
```shell
bundle exec cucumber  -p html_report -p hlg
```

### Run with tags###
Type this in the tests folder:
```shell
bundle exec cucumber --tags @run
```
