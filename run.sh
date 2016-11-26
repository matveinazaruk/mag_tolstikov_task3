#!/bin/bash
hadoop fs -put googlebooks-eng-all-2gram-20120701-na /

pig -x local pig-script.txt

hadoop fs -getmerge /output-na/ output-na.tsv

hadoop fs -rm /googlebooks-eng-all-2gram-20120701-na
hadoop fs -rm -r /output-na
