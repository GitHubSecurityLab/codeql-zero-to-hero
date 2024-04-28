/**
 * @kind problem
 * @problem.severity error
 * @id githubsecuritylab/3-9
 */

import python
import semmle.python.Concepts

from SqlExecution sink
select sink, "Potential SQL injection sink"
