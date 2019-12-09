require 'kramdown'

class BlogController < ApplicationController
  def article
    file_path = lookup_context.find_file("#{controller_path}/#{params[:title]}.md").identifier
    
    @name = "Ecolab"

    # Compiled with ERB
    result = ERB.new(
      File.read(file_path)
    ).result(binding)

    # Convert MD to HTML
    @content = Kramdown::Document.new(result).to_html
  end
end
