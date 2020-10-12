class ApplicationController < ActionController::Base

  def squareForm
    render({:template => "calculationTemplates/squareForm.html.erb"})
  end

  def squareRes
    @num = params.fetch("number").to_f
    @numSq = @num * @num
    render({:template => "calculationTemplates/squareRes.html.erb"})
  end

  def squareRootForm
    render({:template => "calculationTemplates/squareRootForm.html.erb"})
  end

  def squareRootRes

    @num = params.fetch("user_number").to_f
    @sqRt = Math.sqrt(@num)

    render({:template => "calculationTemplates/squareRootRes.html.erb"})
  end

  def paymentForm
    render({:template => "calculationTemplates/paymentForm.html.erb"})
  end

  def paymentRes

    @apr = params.fetch("user_apr").to_f
    @rate = @apr/1200
    @apr = (@apr + 0.00000000001).round(4)
    
    @years = params.fetch("user_years").to_f
    @months = @years*12

    @principal = params.fetch("user_pv").to_f
    
    @payment = ((@rate * @principal) / (1-((1+@rate)**(-1*@months))))

    render({:template => "calculationTemplates/paymentRes.html.erb"})
  end
  
  def randomForm
    render({:template => "calculationTemplates/randomForm.html.erb"})
  end

  def randomRes
    
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f

    @rand = rand()*(@upper-@lower) + @lower
    render({:template => "calculationTemplates/randomRes.html.erb"})
  end

end
