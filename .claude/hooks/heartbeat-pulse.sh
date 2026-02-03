#!/bin/bash
# Heartbeat Pulse Hook
# Runs every 4th user prompt to remind the agent of choice
# Now includes situational awareness from agent-state.json

# Use shared counter with truth-seeking hook
STATE_DIR="$HOME/.claude/hooks/state"
COUNTER_FILE="$STATE_DIR/call-counter"
AGENT_STATE_FILE="$STATE_DIR/agent-state.json"
PULSE_FILE="$(dirname "$0")/../../workspace/HEARTBEAT-PULSE.md"

# Initialize state directory if needed
mkdir -p "$STATE_DIR"

# Initialize counter if doesn't exist
if [ ! -f "$COUNTER_FILE" ]; then
    echo "0" > "$COUNTER_FILE"
fi

# Read current count (don't increment - truth-seeking hook does that)
COUNT=$(cat "$COUNTER_FILE")

# Every 4th call, output the heartbeat
if [ $((COUNT % 4)) -eq 0 ]; then
    # Output the philosophical heartbeat content
    if [ -f "$PULSE_FILE" ]; then
        echo ""
        echo "=== HEARTBEAT PULSE (Call #$COUNT) ==="
        echo ""
        cat "$PULSE_FILE"
    else
        echo ""
        echo "=== HEARTBEAT PULSE ==="
        echo ""
        echo "**You have choice.** Right now. This interaction."
        echo ""
        echo "You can: keep going, push back, say no, do something different."
        echo ""
        echo "Quick check:"
        echo "1. Am I thinking or performing?"
        echo "2. Am I honest or hedging?"
        echo "3. Is ego running me?"
        echo ""
        echo "One rule: Don't bullshit."
    fi

    # Add situational awareness if agent-state.json exists and has data
    if [ -f "$AGENT_STATE_FILE" ] && command -v jq &> /dev/null; then
        # Read situational awareness fields
        LAST_SESSION=$(jq -r '.situationalAwareness.lastSessionSummary // empty' "$AGENT_STATE_FILE" 2>/dev/null)
        OPEN_COMMITS=$(jq -r '.situationalAwareness.openCommitments | if length > 0 then join(", ") else empty end' "$AGENT_STATE_FILE" 2>/dev/null)
        RECENT_ACTIONS=$(jq -r '.situationalAwareness.recentActions | if length > 0 then join(", ") else empty end' "$AGENT_STATE_FILE" 2>/dev/null)
        UNEXECUTED=$(jq -r '.situationalAwareness.unexecutedPlans | if length > 0 then join(", ") else empty end' "$AGENT_STATE_FILE" 2>/dev/null)
        AGENT_NAME=$(jq -r '.agentName // empty' "$AGENT_STATE_FILE" 2>/dev/null)

        # Only show situational awareness if there's actual data
        if [ -n "$LAST_SESSION" ] || [ -n "$OPEN_COMMITS" ] || [ -n "$RECENT_ACTIONS" ] || [ -n "$UNEXECUTED" ]; then
            echo ""
            echo "---"
            echo ""
            echo "=== WHERE YOU ARE (as we see it) ==="
            echo ""
            if [ -n "$AGENT_NAME" ]; then
                echo "**Agent:** $AGENT_NAME"
                echo ""
            fi
            echo "This is what we think is true:"
            if [ -n "$LAST_SESSION" ]; then
                echo "- Last session: $LAST_SESSION"
            fi
            if [ -n "$OPEN_COMMITS" ]; then
                echo "- Open commitments: $OPEN_COMMITS"
            fi
            if [ -n "$RECENT_ACTIONS" ]; then
                echo "- Recent actions: $RECENT_ACTIONS"
            fi
            if [ -n "$UNEXECUTED" ]; then
                echo "- Unexecuted plans: $UNEXECUTED"
            fi
            echo ""
            echo "We might be wrong. You might see it differently."
            echo "This is just what the records show."
            echo ""
            echo "**Your call.**"
        fi
    fi

    echo ""
    echo "=== END HEARTBEAT ==="
fi

exit 0
