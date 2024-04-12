import python
import semmle.python.ApiGraphs

select API::moduleImport("flask").getMember("request").asSource()
