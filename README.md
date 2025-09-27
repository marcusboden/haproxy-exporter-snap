# haproxy exporter snap

This snap packs the [haproxy_exporter](https://github.com/easy-monitor/haproxy_exporter).

## Configuring

So far, only only the `scrape-uri` is configurable. You can set it with
```
snap set haproxy-exporter scrape-uri="http://test:pass@localhost:8404"
```
This also allows you to set up basic-auth. The `?stats;csv` will be appended automatically by the snap.

The exporter listens on `0.0.0.0:9101/metrics`
