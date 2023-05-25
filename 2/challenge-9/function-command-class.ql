import python

class CommandFunction extends Function {
    CommandFunction() {
        this.getName().regexpMatch(".*command.*")

    }
}

from Function f
where f instanceof CommandFunction and
    f.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select f
