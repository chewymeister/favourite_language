require 'sinatra'
require 'octokit'

get '/' do
  erb :index
end

post '/' do
  user = Octokit.user params[:user]
  repos = user.rels[:repos].get.data

  language_obj = {}
  repos.each do |repo|
    if repo.language
      if !language_obj[repo.language]
        language_obj[repo.language] = 1
      else
        language_obj[repo.language] += 1
      end
    end
  end

  @user_name = params[:user]
  @language = language_obj.sort_by{ |language, age| age }.last[0]
  
  erb :index
end
