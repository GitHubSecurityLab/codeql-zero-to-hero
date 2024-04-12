import python
import semmle.python.ApiGraphs

class ExecuteCall extends DataFlow::CallCfgNode {
        ExecuteCall() {
        this = API::moduleImport("django").getMember("db").getMember("connection").getMember("cursor").getReturn().getMember("execute").getACall()
        }
}

predicate executeNotLiteral(DataFlow::CallCfgNode call) {
        exists(DataFlow::ExprNode expr |
                call instanceof ExecuteCall
        		and DataFlow::localFlow(expr, call.getArg(0))
        		and expr instanceof DataFlow::LocalSourceNode
        		and not expr.getNode().isLiteral()
        )
}

from DataFlow::CallCfgNode call
where executeNotLiteral(call)
select call
