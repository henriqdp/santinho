class IndexController < ApplicationController
  def index
    render file: "index.html"
  end
end
