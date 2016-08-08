window.ROUTES = {
  noScriptsOrLinkInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <title>Hi there!</title>
        </head>
        <body>
          <div>YOLO</div>
          <div id="turbo-area" refresh="turbo-area">Hi bob</div>
        </body>
      </html>
    """
  ],

  singleScriptInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['foo.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="foo"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  twoScriptsInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['foo.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="foo"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['bar.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="bar"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  twoScriptsInHeadOneBroken: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script
            src=""
            id="broken-script"
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="broken"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['foo.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="foo"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area">
            Text content even though a script broke
          </div>
        </body>
      </html>
    """
  ],

  differentSingleScriptInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['bar.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="bar"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  singleScriptInHeadWithDifferentSourceButSameName: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['bar.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="foo"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  secondLibraryOnly: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadABC: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadACB: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadBAC: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadBCA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadCAB: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  threeScriptsInHeadCBA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <script src='#{ASSET_FIXTURES['c.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="c"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['b.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="b"
            type="text/javascript"></script>
          <script src='#{ASSET_FIXTURES['a.js']}'
            data-turbolinks-track="true"
            data-turbolinks-track-script-as="a"
            type="text/javascript"></script>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  singleLinkInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['foo.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  twoLinksInHead: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['foo.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['bar.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  twoLinksInHeadReverseOrder: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['bar.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['foo.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadABCD: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadBCDA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadCDAB: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadCDBA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadCBDA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  fourLinksInHeadDCBA: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <link href='#{ASSET_FIXTURES['d.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['c.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['b.css']}' data-turbolinks-track="true"></link>
          <link href='#{ASSET_FIXTURES['a.css']}' data-turbolinks-track="true"></link>
          <title>Hi there!</title>
        </head>
        <body>
          <div id="turbo-area" refresh="turbo-area"></div>
        </body>
      </html>
    """
  ],

  inlineScriptInBody: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <title>Hi</title>
        </head>
        <body>
          <script id="turbo-area" refresh="turbo-area">globalStub()</script>
        </body>
      </html>
      """
  ],

  inlineScriptInBodyTurbolinksEvalFalse: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <title>Hi</title>
        </head>
        <body>
          <script data-turbolinks-eval="false" id="turbo-area" refresh="turbo-area">globalStub()</script>
        </body>
      </html>
    """
  ],

  responseWithRefreshAlways: [
    200,
    {'Content-Type':'text/html'},
    """
      <!doctype html>
      <html>
        <head>
          <title>Hi</title>
        </head>
        <body>
          <div id="div1" refresh="div1">
            <div id="div2" refresh-always>Refresh-always</div>
          </div>
        </body>
      </html>
    """
  ]
}
