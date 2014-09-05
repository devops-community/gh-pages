#!/bin/bash
####################
# Simply filter and return error message if not valid
####################

if [ -z "$EXPECTED" ]; then
  echo "Missing EXPECTED variable.' >&2
  exit 1
fi

if [ -z "$VALUE" ]; then
  echo "Missing VALUE variable.' >&2
  exit 1
fi

if [ "$EXPECTED" != "$VALUE" ]; then
  echo "The task has been filtered' >&2
  echo "  - Expected: $EXPECTED" >&2
  echo "  - Received: $VALUE" >&2
  exit 1
fi

echo "Task accepted"
exit 0
