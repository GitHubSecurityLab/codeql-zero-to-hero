# Challenge 5 — Run the query to show all function calls with name “eval”

Run the query to show all function calls with name “eval”. Check out the subsection “Available types and predicates on types” and use the ideas to explore available types and predicates in the query.


1. Got to the 'Explorer' tab and create a new file in the `codeql-custom-queries-python` folder. Call the file `call-eval.ql` and copy the below query into the file.
```ql
import python

from Call c, Name name
where name.getId() = "eval" and
    c.getFunc() = name and
    c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c
```
2. Right click anywhere in the writing area of the query file and choose "CodeQL: Run Query on Selected Database"
