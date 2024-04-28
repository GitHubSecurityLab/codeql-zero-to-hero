/**
 * @id codeql-zero-to-hero/3-4
 * @severity error
 * @kind problem
 */
import python
import semmle.python.ApiGraphs

from API::CallNode node
where node = API::moduleImport("django").getMember("db").getMember("connection").getMember("cursor").getReturn().getMember("execute").getACall()
select node, "The node has type " + node.getAQlClass()
