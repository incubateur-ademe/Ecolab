require 'kramdown'

class BlogController < ApplicationController
  def article
    file_path = lookup_context.find_file("#{controller_path}/#{params[:title]}.md").identifier
  
    # Handle the frontmatter
    parsed = FrontMatterParser::Parser.parse_file(file_path)

    # Convert MD to HTML
    @content = Kramdown::Document.new(parsed.content).to_html
  end
  def list
    @articles = Dir.glob("#{Rails.root}/app/views/blog/*.md").map do |file_path|
      parsed = FrontMatterParser::Parser.parse_file(file_path)
      parsed.front_matter.merge({'url' => "/blog/#{file_path.split('/').last}"})    
    end
  end

end
