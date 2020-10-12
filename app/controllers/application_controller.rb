class ApplicationController < ActionController::Base


  def blankSquareForm

    render({:template => "calculationTemplates/squareForm.html.erb"})

  end
end
