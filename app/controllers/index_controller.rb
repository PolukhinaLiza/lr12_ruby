class IndexController < ApplicationController
  def input

  end

  def output
    @mas=func(params[:value])
  end

  private
  def func(input_line)
   puts ">>>>>>>>>>>>#{input_line}"
    if input_line.nil?
      @error = 'Некорректный ввод' 
    elsif input_line.scan(/\D/).any? || input_line.empty?  
      @error = 'Некорректный ввод'
    elsif input_line.to_f<0
      @error = 'Некорректный ввод'
    else
      a = input_line.to_f
      x=a
      array=[]
      array.push(x)
       while ((x**2-a)/a)>=0.001 
         x1=(1/2.0)*(x+(a/x)) 
         x=x1.round(3)
         array.push(x)
       end
      array
     end
   end
end
