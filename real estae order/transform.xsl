<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          /* Add some basic styling to the output */
          body {
            font-family: Arial, sans-serif;
          }
          .property {
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
          }
          .image {
            width: 200px;
            height: 150px;
            margin-right: 10px;
            float: left;
          }
          .info {
            margin-bottom: 10px;
          }
          .status {
            font-weight: bold;
          }
          .content {
            clear: both;
          }
          .button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
          }
        </style>
      </head>
      <body>
        <xsl:apply-templates select="properties/property[position() &lt;= 10]" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="property">
    <div class="property">
      <div class="image">
        <img src="{image}" alt="Property Image" />
      </div>
      <div class="info">
        <xsl:value-of select="info/posted" />
        <br />
        <span class="status">
          <xsl:value-of select="info/status" />
        </span>
      </div>
      <div class="content">
        <h3>
          <xsl:value-of select="content/h3" />
        </h3>
        <p>
          <xsl:value-of select="content/p" />
        </p>
        <a href="#">
          <xsl:value-of select="content/button" />
        </a>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
