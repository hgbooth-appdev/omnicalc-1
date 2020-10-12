class ApplicationController < ActionController::Base


  def blankSquareForm

    render({:template => "calculationTemplates/squareForm.html.erb"})

  end

  def squareResForm

    render({:template => "calculationTemplates/squareResForm.html.erb"})

  end
end
