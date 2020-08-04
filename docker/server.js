
var promClient = require("prom-client");
var promBundle = require("express-prom-bundle");

promClient.collectDefaultMetrics({ timeout: 10000 });
const metricsMiddleware = promBundle({
  includeMethod: false,
  autoregister: false
});

app.get("/diagnostics/v1/metrics", function(req, res, next) {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(promClient.register.metrics());
});

app.get("/diagnostics/v1/ping", function(req, res, next) {
  res.contentType("text/plain");
  res.send("pong");
});

app.get("/diagnostics/v1/health/check", function(req, res, next) {
  res.sendStatus(200);
});
