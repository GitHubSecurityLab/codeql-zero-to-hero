import python

from Call call
where call.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select call
