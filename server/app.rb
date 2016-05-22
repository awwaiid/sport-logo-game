
class App < Sinatra::Base

  get '/' do
    <<-HTML
      <!doctype html>
      <html>
        <head>
          <title>Sport Logo Game!</title>
          <link rel="stylesheet" href="stylesheets/normalize.css" />
          <link rel="stylesheet" href="stylesheets/base.css" />
          <script src="/assets/app.js"></script>
          <script>#{Opal::Processor.load_asset_code($opal.sprockets, "app.js")}</script>
        </head>
        <body>
          <div id="content"></div>
        </body>
      </html>
    HTML
  end

end

