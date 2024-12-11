/**
 * @id codeql-zero-to-hero/4-5
 * @severity error
 * @kind problem
 */

 import python
 import semmle.python.ApiGraphs

 from API::CallNode node
 where node =
	 API::moduleImport("gradio").getMember("Button").getReturn()
	 .getMember("click").getACall()

select node.getParameter(0, "fn").getParameter(_), "Gradio sources"
