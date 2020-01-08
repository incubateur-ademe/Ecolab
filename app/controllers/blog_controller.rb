require 'kramdown'

class BlogController < ApplicationController
  def article
    file_path = lookup_context.find_file("#{controller_path}/#{params[:title]}.md").identifier

    # Handle the frontmatter
    parsed = FrontMatterParser::Parser.parse_file(file_path)
    @meta = parsed
    # Convert MD to HTML
    @content = Kramdown::Document.new(parsed.content).to_html
  end

  def list
    all_articles = Dir.glob("#{Rails.root}/app/views/blog/*.md").map do |file_path|
      parsed = FrontMatterParser::Parser.parse_file(file_path)
      parsed.front_matter.merge({'url' => "/blog/#{parsed['catégorie']}/#{file_path.split('/').last}"})
    end

    @articles = if !params[:query]
      all_articles
    else
      all_articles.filter do |article|
        article['catégorie'] == params[:query] || article['tags'].include?(params[:query])
      end
    end


  end

end
