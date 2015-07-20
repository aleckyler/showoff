require "sinatra"

get "/" do
  erb :index
end

get "/about" do
  @name = "Nameless"
  erb :about
end

get "/about/*" do
  @name = params['splat'].first
  erb :about
end

get "/turtle/:id" do
  turtles = [
    "Tutley",
    "Yertle",
    "Stanley",
    "Pookie"
  ]
  id = params["id"].to_i
  @name = turtles[id]
  erb :turtle
end

get "/projects/:id" do
  projects = ["portfolio", "REPL Game", "Voting Simulation"]
  @project = projects[params["id"].to_i]
  id = "project_" + params["id"].to_s
  proj_layout = id.to_sym
  erb :project, :layout => proj_layout
end

get "/link/:id" do
  # links = {linkedin: "https://www.linkedin.com", github: "https://github.com", twitter: "https://twitter.com"}
  # id = params["id"].to_s
  # @link = links[id.to_sym]
  erb :link
end
