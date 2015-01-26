getdata-010-project
===================

Course project for Getting and Cleaning Data.

The file `run_analysis.R` includes code to download de compressed dataset files (if necessary),
and unzip the files for use in the working directory.

The code is divided in sections and commented to explain what each section or expression performs.

That is the only script included in the repository, and it performs all of the requested tasks.

#### Dataset binding

I added a `row` column before merging the activity lables,
to be abele to recover the original ordering of the data.
After reordering the dataset, I removed both the `row` and `class` variables,
to preserve only the used variables.


#### Additional columns

I included the `set` column in addition to the requested columns,
since I think it could be useful to know in which set (train or test) the data was contained.
