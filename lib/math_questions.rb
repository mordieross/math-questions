require "math_questions/version"

module MathQuestions
  class MathQuestions
    attr_reader :test
    
    def initialize
      @number = 0
      @answers = []
      @test = {questions: new_test, answers: @answers}
    end

    def number_x x, y
      x = rand(x..y)
    end

    def number_y x, y
      y = rand(x..y)
    end

    def number_z x, y
      z = rand(x..y)
    end

    def the_name
      ["Bob", "Stacey", "Lucy", "Jack", "Rick", "Mary"]
    end

    def triangle_angles_question
      x = number_x 1, 90
      y = number_y 1, 90
      @answers << z = (180 - (x + y)).to_s + '°'
      "#{(@number += 1).to_s + "."} In a triangle, if angle X is #{x}° and angle Y is #{y}° what is angle Z?"
    end

    def series_question
      x = number_x 2, 10
      y = number_y -3, 3
      if x >= 4
        @answers << (((((x*2))*2))*2)+y
        "#{(@number += 1).to_s + "."} Complete the following series, #{x}, #{(x*2)+y}, #{((x*2)*2)+y}..."
      else
        @answers << (((((x**2))**2))**2)+y
        "#{(@number += 1).to_s + "."} Complete the following series, #{x}, #{(x**2)+y}, #{((x**2)**2)+y}..."
      end
    end

    def square_root_question
      x = number_x 2, 12
      x = x*x
      @answers << Math.sqrt(x).to_i
      "#{(@number += 1).to_s + "."} What is the square root of #{x}?"
    end

    def square_question
      x = number_x 2, 12
      @answers << (x * x)
      "#{(@number += 1).to_s + "."} What is #{x} squared?"
    end

    def cube_root(x)
      x**(1/3.0)
    end

    def cube_root_question
      x = number_x 2, 10
      x = (x*x)*x
      @answers << Math.cbrt(x).to_i
      "#{(@number += 1).to_s + "."} What is the cube root of #{x}?"
    end

    def cube_question
      x = number_x 2, 10
      @answers << (x*x)*x
      "#{(@number += 1).to_s + "."} What is #{x} cubed?"
    end

    def alegbra_question
      x = number_x 1, 12
      y = number_y 1, 12
      @answers << (y)
      if x <= y
        "#{(@number += 1).to_s + "."} If X = #{x} and (X + Y) = #{x + y} What is Y?"
      else
        "#{(@number += 1).to_s + "."} If X = #{x} and (X - Y) = #{x - y} What is Y?"
      end
    end

    def table_question
      x = number_x 1, 12
      y = number_y 1, 12
      @answers << (x * y)
      "#{(@number += 1).to_s + "."} What is #{x} x #{y}?"
    end

    def percent_question
      loop do
        user_name = the_name[rand(0..5)]
        x = number_x 1, 100
        y = number_y 1, 100
        r = (x.to_f % y.to_f)
        m = r * 100
        ans = ((x.to_f / y.to_f) * 100)
        if (m % 1 == 0) && (x < y) && (ans % 1 == 0)
          @answers << ((x.to_f / y.to_f) * 100).to_i.to_s + "%"
          return "#{(@number += 1).to_s + "."} #{user_name} gets #{x} in a test out of #{y} What percentage did #{user_name} score?"
          break
        end
      end
    end

    def division_question
      loop do
        x = number_x 10, 100
        y = number_y 2, 20
        if x % y == 0 && x > y
          @answers << x / y
          return "#{(@number += 1).to_s + "."} What is #{x} divided by #{y}?"
          break
        end
      end
    end

    def sum_question
      w = number_x 1, 50
      x = number_x 50, 100
      y = number_y 1, 20
      z = number_z 20, 40
      @answers << w + x + y + z
      "#{(@number += 1).to_s + "."} What is the sum of the following numbers #{w} #{x} #{y} #{z}?"
    end

    def compound_question
      loop do
        w = number_x 1, 60
        x = number_x 1, 60
        y = number_y 1, 20
        z = number_z 20, 40
        if z > y && ((w + x) % (z - y) == 0)
          @answers << (w + x) / (z - y)
          return "#{(@number += 1).to_s + "."} What is (#{w} + #{x}) / (#{z} - #{y})?"
          break
        end
      end
    end

    def new_test
      [
        compound_question,
        sum_question,
        division_question,
        percent_question,
        table_question,
        alegbra_question,
        cube_question,
        cube_root_question,
        square_question,
        square_root_question,
        series_question,
        triangle_angles_question
      ]

    end
  end
end
