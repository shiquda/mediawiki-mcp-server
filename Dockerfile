# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM python:3.13-rc-slim

WORKDIR /app

# Copy project files
COPY . .

# Upgrade pip and install the project with its dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir .

# Run the MediaWiki MCP server
CMD ["mediawiki-mcp-server"]
