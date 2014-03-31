bisMembers
==========

March 2014

## Motivation

A simple data set of [Bank of International Settlements (BIS)](http://www.bis.org/index.htm) [members](http://www.bis.org/about/orggov.htm) in machine readable format. This is useful for sub-setting another data set so that it includes (excludes) BIS members.

## Data set

The data set is available as a CSV file called [bisMembers.csv](https://github.com/christophergandrud/bisMembers/blob/master/bisMembers.csv). It contains two variables:

| Variable Name | Short Description      |
| ------------- | ---------------------- |
| country | Country or jurisdiction name |
| iso2c   | [ISO 2 country letter code](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) |

## Download into R

To download it directly into R use:

```{S}
URL <- 'https://raw.githubusercontent.com/christophergandrud/bisMembers/master/bisMembers.csv'

BIS <- repmis::source_data(URL)
```

## Creation

This simple data set is created using the the R file [bisMembersMake.R](https://github.com/christophergandrud/bisMembers/blob/master/bisMembersMake.R).
