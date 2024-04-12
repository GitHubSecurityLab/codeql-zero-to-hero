import python
import semmle.python.ApiGraphs

from API::CallNode node
where node =
API::moduleImport("django").getMember("db").getMember("connection").getMember("cursor").getReturn().getMember("execute").getACall()
and
node.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")

select node
