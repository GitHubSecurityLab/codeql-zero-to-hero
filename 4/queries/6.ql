
/**
 * @id codeql-zero-to-hero/4-6
 * @severity error
 * @kind problem
 */


 import python
 import semmle.python.ApiGraphs
 import semmle.python.dataflow.new.RemoteFlowSources

class GradioButton extends RemoteFlowSource::Range {
	GradioButton() {
		exists(API::CallNode n |
		n = API::moduleImport("gradio").getMember("Button").getReturn()
		.getMember("click").getACall() |
		this = n.getParameter(0, "fn").getParameter(_).asSource())
	}

	override string getSourceType() { result = "Gradio untrusted input" }

 }

from GradioButton inp
select inp, "Gradio sources"
