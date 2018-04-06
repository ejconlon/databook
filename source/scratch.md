# Scratch

Ideas for sections

* Strongly typed incremental immutable statically-analyzable heterogeneous batch programs
* DAGs that separate resource acquisition from processing. \(General resource acquisition pattern\)
* Designing for containerized/heterogeneous pipelines
* CLI as a universal interface \(file/arg duality\)
* Quantized state pattern + Faking symlinks \(+ CI artifacts\)
* \_METADATA pattern
* Partition columns
* Data catalogs
* \_SUCCESS pattern
* Recomputation and backfills
* Depends\_on\_past and rollup computations
* Machine learning workflow


# The Simplest Thing That Works

* Pick the right solution - start simple
* cron with a script
* What happens when something goes wrong in your script?
    * How do you know what went wrong?
    * How do you resume?
    * Can you use any part of what you did?
    * What happens to downstream consumers?
* What happens when it goes too slow?
* What happens when many people want to contribute?
* What happens when you make changes?
    * Are you consistent with earlier output?
* What happens when something goes wrong with cron itself?

# Desirable Properties for Large Systems

* Strongly-typed
* Incremental
* Immutable
* Statically-analyzable
* Heterogeneous

# Scheduling

* cron is not sufficient
    * need to track success and failure
    * need to monitor and alert
    * need to support backfills
