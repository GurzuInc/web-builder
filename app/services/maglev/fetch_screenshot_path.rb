# frozen_string_literal: true

module Maglev
  class FetchScreenshotPath
    include Injectable

    dependency :fetch_sections_path
    argument :section

    def call
      "/#{fetch_sections_path.call}/#{section.id}.png"
    end
  end
end
