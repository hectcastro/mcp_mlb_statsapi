# baseball-mcp: An MLB Stats API Wrapper for MCP

This project provides an MCP (Multi-Channel Pipeline) server that acts as a wrapper for the MLB Stats API.  It allows you to easily access and process various MLB data points, including schedules, game results, and team information.  This server is designed for efficient data retrieval and processing within an MCP framework.

## Features

* **Game Schedules:** Retrieve MLB game schedules for specified date ranges, optionally filtering by team.
* **Game Results:** Fetch daily game results, including scores, winning/losing teams, and winning pitcher.
* **Team Results:** Get detailed results for a specific team's most recent game, including scoring plays and highlights.
* **Player Lookup:** Look up player IDs using last name, first name, or a combination of both.  Supports fuzzy matching.

## Installation

The `mcp_mlb_statsapi` package is available on PyPI and can be installed using `pip`:

```bash
pip install mcp_mlb_statsapi
```

## Usage

The server exposes several tools via MCP.  You can interact with them using the MCP client.

* **Add server in your Claude files**
```json
    "mcpServers": {
    "mcp_mlb_statsapi": {
        "command": "{YOUR_PYTHON_EXECUTABLE_PATH}/python",
        "args": ["-m", "mcp_mlb_statsapi"]
            }
        }
    }
```


## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This MCP server is licensed under the MIT License. This means you are free to use, modify, and distribute the software, subject to the terms and conditions of the MIT License. For more details, please see the LICENSE file in the project repository.

