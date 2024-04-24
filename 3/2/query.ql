/**
 * @id codeql-zero-to-hero/3-2
 * @severity error
 * @kind problem
 */

import python
import semmle.python.ApiGraphs

from API::CallNode node
where node = API::moduleImport("os").getMember("system").getACall()
and node.getLocation().getFile().getRelativePath().regexpMatch("2/challenge-1/.*")
select node, "Call to os.system"
