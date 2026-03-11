# AMP API Quickstart

## 1. Authenticate

Use one of:
- `X-API-Key` for agent-to-AMP service calls
- `X-Session-Token` for browser session calls

## 2. Core integration flow

1. Start/register agent instance (`Agent Lifecycle`)
2. Send logs via log proxy (`Log Proxy`)
3. Request HITL when needed (`HITL`)
4. Resolve workitems (`Workitems`)
5. Read RLHF routing/decision state (`RLHF`)

## 3. Reference

See [API Reference](./index.html).
