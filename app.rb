require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

# ここにコードを書こう

counter = 0

get '/' do
    @counter = counter
    erb :index
end

# post "/add" do
#     counter += 1
#     redirect '/'
# end

post '/count' do
    counter += 1
    puts "Counterに1足したよ"
    redirect '/'
end

post '/minus' do
    counter -= 1
    puts "Counterから1引いたよ"
    redirect '/'
end

post '/multiplied' do
    counter *= 2
    puts "Counterを倍にしたよ"
    redirect '/'
end

puts '/clear' do
    counter *= 0
    puts "Counterをクリアしたよ"
    redirect '/'
end