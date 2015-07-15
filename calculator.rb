require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
	erb :calculator
end

post '/result' do
	@operation = params['operation']
	case @operation
	when 'addition'
		@result = params['num1'].to_i + params['num2'].to_i
	when 'subtraction'
		@result = params['num1'].to_i - params['num2'].to_i
	when 'division'
		@result = params['num1'].to_i / params['num2'].to_i
	when 'multiplication'
		@result = params['num1'].to_i * params['num2'].to_i
	end
	erb :result
end