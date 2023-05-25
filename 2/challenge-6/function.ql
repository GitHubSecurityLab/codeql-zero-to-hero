import python

from Function f
where f.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select f, "This is a function"
