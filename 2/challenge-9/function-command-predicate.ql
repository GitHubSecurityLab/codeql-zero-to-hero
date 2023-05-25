import python

query predicate isCommand(Function f) {
    f.getName().regexpMatch(".*command.*")
}
from Function f
where isCommand(f) and
    f.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select f
