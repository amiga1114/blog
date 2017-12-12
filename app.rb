require 'sinatra'

get '/' do

  erb :index
end


get '/write' do
# 글을 저장하고  
@t = params["title"]
@c = params["content"]

    File.open("title.txt", "a") do |f|
        f.write("title: #{@t}, content: #{@c}")
        f.write("\n")
      end

  erb :write # 글이 성공적으로 저장됨
end

get '/show' do

  @list = []
  File.open("title.txt", "r") do |f|
        f.each_line do |line|
          @list << line
    end
  end

  erb :show
end
