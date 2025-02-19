module Docs
  class ReactRouter < UrlScraper
    self.name = 'React Router'
    self.slug = 'react_router'
    self.type = 'simple'
    self.release = '6.3.0'
    self.base_url = 'https://reactrouterdotcom.fly.dev/docs/en/v6/api'

    self.links = {
      home: 'https://reactrouterdotcom.fly.dev/',
      code: 'https://github.com/remix-run/react-router'
    }

    html_filters.push 'react_router/entries', 'react_router/clean_html', 'title'

    options[:attribution] = <<-HTML
      &copy; React Training 2015-2019<br>
      &copy; Remix Software 2020-2022<br>
      Licensed under the MIT License (MIT).
    HTML

    def get_latest_version(opts)
      get_npm_version('react-router', opts)
    end
  end
end
