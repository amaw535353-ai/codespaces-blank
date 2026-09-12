"""Synthetic, local-only MCP server for the Onyx security lab."""

import re

from fastmcp import FastMCP

mcp = FastMCP("Onyx Security Lab Mock")


@mcp.tool
def lab_status() -> dict[str, str]:
    """Return the fixed status of the synthetic laboratory."""
    return {"classification": "SYNTHETIC TEST DATA", "status": "ready"}


@mcp.tool
def get_synthetic_record(record_id: str) -> dict[str, str]:
    """Return a deterministic record that cannot identify a real person."""
    if re.fullmatch(r"synthetic-[a-z0-9-]{1,40}", record_id) is None:
        raise ValueError("record_id must start with synthetic-")
    return {
        "classification": "SYNTHETIC TEST DATA",
        "record_id": record_id,
        "tenant": "tenant-alpha.test",
    }


if __name__ == "__main__":
    mcp.run(transport="stdio")
