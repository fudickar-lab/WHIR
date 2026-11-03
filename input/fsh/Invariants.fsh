Invariant: whir-1
Description: "effectivePeriod has a start and an end, and the start is not after the end."
Expression: "effective.ofType(Period).all(start.exists() and end.exists() and start <= end)"
Severity: #error

// Only checked when the referenced raw Observations can be resolved, e.g. in a Bundle. If they cannot be
// resolved, resolve() returns nothing and the invariant is true.
Invariant: whir-2
Description: "The effectivePeriod lies within the effectivePeriod of every raw sensor Observation it is derived from."
Expression: "derivedFrom.resolve().ofType(Observation).all(effective.ofType(Period).start <= %resource.effective.ofType(Period).start and effective.ofType(Period).end >= %resource.effective.ofType(Period).end)"
Severity: #warning
