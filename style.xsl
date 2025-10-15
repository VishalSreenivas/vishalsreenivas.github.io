<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Foo content</h1>
        <pre><xsl:value-of select="/foo" /></pre>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
