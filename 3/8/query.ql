/**
 * @kind problem
 * @problem.severity error
 * @id githubsecuritylab/3-8
 */
import python
import semmle.python.dataflow.new.RemoteFlowSources


from RemoteFlowSource rfs
select rfs, "A remote flow source"
