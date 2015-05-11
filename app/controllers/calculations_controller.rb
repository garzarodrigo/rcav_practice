class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @square = (params["number"].to_f)**2

  end

  def sqrt
    @sqrt = Math.sqrt(params["number"].to_f)

  end

  def payment
    @intrate = (params["intrate"].to_f/100)
    @nopayments = params["nopayments"].to_i
    @principal = params["principal"].to_i
    @pmt = (@intrate * @principal) / (1 - (1 + @intrate)**(-1 * @nopayments))
  end
end
