import python
import semmle.python.ApiGraphs

from API::CallNode node
where node = API::moduleImport("django").getMember("db").getMember("connection").getMember("cursor").getReturn().getMember("execute").getACall()
select node, node.getAQlClass()
