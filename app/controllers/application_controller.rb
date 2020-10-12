class ApplicationController < ActionController::Base


  def blankSquareForm

    render({:template => "calculationTemplates/squareForm.html.erb"})

  end

  def squareResForm
    
    @num = params.fetch("number").to_f
    @numSq = @num * @num
    render({:template => "calculationTemplates/squareResForm.html.erb"})

  end
end
