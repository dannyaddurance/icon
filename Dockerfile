FROM node:20-slim

RUN npm install -g supergateway iconify-mcp-server

CMD supergateway \
  --stdio "npx -y iconify-mcp-server" \
  --outputTransport streamableHttp \
  --port ${PORT:-8000}
