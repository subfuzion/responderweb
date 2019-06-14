# responderweb

`responderweb` queries a `responder` backend service to get a version string,
which it sends back to the client.

The `PORT` environment variable sets the port to bind to (default: `8081`).

The `RESPONDER_URL` environment variable sets the backend responder
service address (defaults to: `https://localhost:8080)`

> See [subfuzion/responder](https://github.com/subfuzion/responder) for
the responder backend service.
