vcl 4.0;

backend default {
  .host = "web";
  .port = "8000";
}
sub vcl_recv {
  unset req.http.X-Forwarded-For;
  set req.http.X-Forwarded-For = client.ip;
}
