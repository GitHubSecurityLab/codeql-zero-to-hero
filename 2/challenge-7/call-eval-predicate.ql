import python

predicate isEvalCall(Call c, Name name) {
    c.getFunc() = name and
    name.getId() = "eval"
}

from Call c, Name name
where isEvalCall(c, name) and
c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c, "call to 'eval'."
