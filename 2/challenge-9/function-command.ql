import python

from Function f
where f.getName().regexpMatch(".*command.*") and
    f.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select f
