
/**
 * @id codeql-zero-to-hero/4-7
 * @severity error
 * @kind path-problem
 */


 import python
 import semmle.python.dataflow.new.DataFlow
 import semmle.python.dataflow.new.TaintTracking
 import semmle.python.ApiGraphs
 import semmle.python.dataflow.new.RemoteFlowSources
 import MyFlow::PathGraph

class GradioButton extends RemoteFlowSource::Range {
	GradioButton() {
		exists(API::CallNode n |
		n = API::moduleImport("gradio").getMember("Button").getReturn()
		.getMember("click").getACall() |
		this = n.getParameter(0, "fn").getParameter(_).asSource())
	}

	override string getSourceType() { result = "Gradio untrusted input" }

 }

 class GradioInterface extends RemoteFlowSource::Range {
	GradioInterface() {
		exists(API::CallNode n |
		n = API::moduleImport("gradio").getMember("Interface").getACall() |
		this = n.getParameter(0, "fn").getParameter(_).asSource())
	}
	override string getSourceType() { result = "Gradio untrusted input" }

 }



class OsSystemSink extends API::CallNode {
	OsSystemSink() {
		this = API::moduleImport("os").getMember("system").getACall()
	}
}

 private module MyConfig implements DataFlow::ConfigSig {
   predicate isSource(DataFlow::Node source) {
	 source instanceof RemoteFlowSource
   }

   predicate isSink(DataFlow::Node sink) {
	exists(OsSystemSink call |
		sink = call.getArg(0)
		)
   }
 }

 module MyFlow = TaintTracking::Global<MyConfig>;

 from MyFlow::PathNode source, MyFlow::PathNode sink
 where MyFlow::flowPath(source, sink)
 select sink.getNode(), source, sink, "Data Flow from a Gradio source to `os.system`"
