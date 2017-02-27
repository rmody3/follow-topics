class ApplicationController < Sinatra::Base
  register Sinatra::ActiverRecordExtension

  set :session_secret,
  "my_application_secret"

  set :views, Proc.new { File.join(root, "../views/") }
