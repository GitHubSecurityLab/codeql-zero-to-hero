# Challenge 7 — Follow the steps to write your own external predicate
Follow the instructions to write your own external predicate.

A QL predicate is like a mini from-where-select query — it encapsulates a portion of a logic in a program, so it can be reused. For example the built-in predicate `getFunc()` on the `Call` type returns the name of the callable (the function name that we called). We can create our own external predicates (also known as non-member predicates) — we could, for example, create a predicate to **encapsulate** the logic from the query above.
```ql
import python

predicate isEvalCall(Call c, Name name) {
    c.getFunc() = name and
    name.getId() = "eval"
}

from Call c, Name name
where isEvalCall(c, name) and
c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c, "call to 'eval'."
```
This query does the exact same thing as the query from challenge 5 — it searches for all functions with “eval” in their name. To create a predicate we do the following:
1. First, copy the previous query and add a predicate template above it:
```ql
import python

query predicate <name>(<variable type>:<variable name>) {
}

from Call c, Name name
where name.getId() = "eval" and
c.getFunc() = name and
c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c
```
2. Fill out the template with a name for the predicate (`isEvalCall`). Note that predicates are always written in camelCase. Next copy the variable declarations from the `from` clause (`Call c, Name name`) and paste them into the predicate variable declarations. Copy the desired functionality from the `where` clause (`c.getFunc() = name and name.getId() = "eval"`) into the body of the predicate.
```ql
import python

predicate isEvalCall(Call c, Name name) {
    c.getFunc() = name and
    name.getId() = "eval"
}


from Call c, Name name
where c.getFunc().toString() = "eval" and
c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c, "call to 'eval'."
```
3. Replace the copied functionality with the name of the predicate
```ql
import python

predicate isEvalCall(Call c, Name name) {
    c.getFunc() = name and
    name.getId() = "eval"
}

from Call c, Name name
where isEvalCall(c, name) and
c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c, "call to 'eval'."
```
Predicates make your query more readable and easier to test.
