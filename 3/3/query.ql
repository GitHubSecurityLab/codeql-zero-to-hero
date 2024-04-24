/**
 * @id codeql-zero-to-hero/3-3
 * @severity error
 * @kind problem
 */

import python
import semmle.python.ApiGraphs

select API::moduleImport("flask").getMember("request").getMember("args").asSource(), "Flask request.args source"

// Note that you can also use a wildcard to query for any method of the request object, for example:

// select API::moduleImport("flask").getMember("request").getMember(_).asSource()
