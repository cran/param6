# param6 0.2.4

* Added conditions for increasing and decreasing parameters
* Fixed bug that meant multiple conditions weren't being checked

# param6 0.2.3

* Patch for testthat

# param6 0.2.2

* Fixes bug in `.update_support` where duplicated items were being added to the support dictionary

# param6 0.2.1

* expect_equal_ps is now more precise
* cpset now much faster
* empty tags now stored as list() not NULL
* extract method is now more efficient, removed 'keep_trafo' argument
* can now remove multiple ids with $remove

# param6 0.2.0

* Bugfix in `expand_list` which was causing parameter names to be swapped
* Bugfix in testing linked parameters
* Added sets containing zero (e.g. PosReals$new(zero = TRUE)) to the support dictionary
* Add parameters to `pset` to simplify construction with deps and trafo
* Now support parameters being required and linked simultaneously. Exactly one parameter in a required/linked group must be set.
* Added 'immutable' property for parameters that can be set on construction then cannot be changed
* Renamed 'ExtendedReals' to 'ExtReals'
* Minor internal bug fixes
* Transformations now support in replication and extraction
* Added method to update parameter supports
* Added method to remove parmameters from constructed sets

# param6 0.1.1

* Bug fix in extracting parameters from sets without tags
* Allow option to stop `Dictionary` deep cloning R6 objects

# param6 0.1.0

* Initial upload to CRAN.
