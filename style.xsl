<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  exclude-result-prefixes="xsl">

  <!-- Output HTML -->
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Root template -->
  <xsl:template match="/userInfo">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>User Info — <xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/></title>
        <style type="text/css">
          body { font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial; background:#f7fafc; color:#1a202c; margin:0; padding:24px; }
          .card { max-width:720px; margin:24px auto; background:#ffffff; border-radius:12px; box-shadow:0 6px 18px rgba(20,27,38,0.08); padding:20px; }
          h1 { margin:0 0 8px 0; font-size:20px; color:#0f1724; }
          .subtitle { color:#475569; margin:0 0 16px 0; font-size:13px; }
          dl { display:grid; grid-template-columns:140px 1fr; gap:8px 16px; align-items:start; margin:12px 0 0 0; }
          dt { font-weight:600; color:#334155; }
          dd { margin:0; color:#0f1724; background:#f8fafc; padding:8px 10px; border-radius:6px; }
          .meta { margin-top:16px; font-size:13px; color:#64748b; }
          pre { background:#0b1220; color:#e6eef8; padding:12px; border-radius:8px; overflow:auto; font-family:monospace; font-size:13px; }
        </style>
      </head>
      <body>
        <div class="card" role="main">
          <h1><xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/></h1>
          <p class="subtitle">User record</p>

          <dl>
            <dt>First name</dt>
            <dd><xsl:value-of select="firstName"/></dd>

            <dt>Last name</dt>
            <dd><xsl:value-of select="lastName"/></dd>

            <dt>Email</dt>
            <dd><xsl:value-of select="email"/></dd>
          </dl>

          <div class="meta">
            <div><strong>Created:</strong> <xsl:value-of select="metadata/created"/></div>
            <div style="margin-top:8px;"><strong>Note:</strong> <xsl:value-of select="metadata/note"/></div>
          </div>

          <h2 style="margin-top:18px; font-size:15px;">Raw (for debugging)</h2>
          <pre><xsl:copy-of select="."/></pre>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
