class QuotesController < ApplicationController
  def index
  @quotes = Quote.all
  end
  
def show
@quote = Quote.find(params[:id])
end

def new
end

def create
@quote = Quote.new(quote_params)

@quote.save
redirect_to :root
end

private
def quote_params
params.require(:quote).permit(:text)
end

end