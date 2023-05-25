import python

from Call c, Name name
where name.getId() = "eval" and
    c.getFunc() = name and
    c.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select c
