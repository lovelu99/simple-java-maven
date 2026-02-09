<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Simple Tomcat Web App</title>
  <style>
    body { font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif; margin: 2rem; }
    code { background: #f2f2f2; padding: 0.15rem 0.35rem; border-radius: 6px; }
    .box { padding: 1rem; border: 1px solid #ddd; border-radius: 10px; max-width: 720px; }
  </style>
</head>
<body>
  <h1>Simple Java Web App (Tomcat)</h1>
  <div class="box">
    <p>Try the servlet endpoint:</p>
    <ul>
      <li><code>/simple-webapp/hello</code></li>
      <li><code>/simple-webapp/hello?name=Aayan</code></li>
    </ul>

    <p>If you're running locally on Tomcat:</p>
    <ul>
      <li><code>http://localhost:8080/simple-webapp/</code></li>
      <li><code>http://localhost:8080/simple-webapp/hello?name=Aayan</code></li>
    </ul>
  </div>
</body>
</html>
