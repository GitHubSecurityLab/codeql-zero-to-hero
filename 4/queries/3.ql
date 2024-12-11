/**
 * @id codeql-zero-to-hero/4-3
 * @severity error
 * @kind problem
 */

 import python
 import semmle.python.ApiGraphs
 import semmle.python.dataflow.new.RemoteFlowSources

 class GradioInterface extends RemoteFlowSource::Range {
	GradioInterface() {
		exists(API::CallNode n |
		n = API::moduleImport("gradio").getMember("Interface").getACall() |
		this = n.getParameter(0, "fn").getParameter(_).asSource())
	}
	override string getSourceType() { result = "Gradio untrusted input" }

 }

from GradioInterface inp
select inp, "Gradio sources"
