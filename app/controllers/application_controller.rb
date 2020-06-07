class ApplicationController < ActionController::Base
  def hello
    render html: "マジンガーZ"
  end
end
