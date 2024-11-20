/**
 * @id codeql-zero-to-hero/4-2
 * @severity error
 * @kind problem
 */

 import python
 import semmle.python.ApiGraphs

 from API::CallNode node
 where node =
	 API::moduleImport("gradio").getMember("Interface").getACall()

 select node.getParameter(0, "fn").getParameter(_).asSource(), "Gradio sources"
