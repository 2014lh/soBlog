module.exports = (app)->
  # home有关的路由
  home = require '../app/controllers/home'
  app.get '/', home.index
  app.get '/about', home.about
  app.get '/manage', home.checkLogin, home.manage
  app.get '/login', home.loginView
  app.post '/login', home.login
  app.get '/logout', home.checkLogin, home.logout
  app.post '/google-auth', home.checkPwd, home.googleAuth
  app.get '/google-auth', home.checkPwd, home.googleAuthView

  # blog有关的路由
  blog = require '../app/controllers/blog'
  app.get '/blog', blog.blogPerpage
  app.get '/getBlogPerpage', blog.getBlogPerpage
  app.get '/blog/:id', blog.perBlog
  app.get '/post', home.checkLogin, blog.postView
  app.post '/post', home.checkLogin, blog.post
  app.post '/postimg', home.checkLogin, blog.postImg
  app.get '/editblog/:id', home.checkLogin, blog.editBlogView
  app.post '/editblog/:id', home.checkLogin, blog.editBlog
  app.get '/view', blog.viewIndex
  app.get '/deleteblog', home.checkLogin, blog.deleteBlog
  app.get '/settopblog', home.checkLogin, blog.setTop


  tag = require '../app/controllers/tag'
  app.get '/tag', tag.getAllTags
  app.get '/tag/:tag', tag.eachTag


  cover = require '../app/controllers/cover'
  app.get '/cover', cover.index
  app.get '/cover/:id', cover.eachCover
  app.get '/editcover/:id', home.checkLogin, cover.editCoverView
  app.post '/editcover/:id', home.checkLogin, cover.editCover
  app.get '/postcover', home.checkLogin, cover.postCoverView
  app.post '/postcover', home.checkLogin, cover.postCover
  app.get '/deletecover', home.checkLogin, cover.deleteCover
  app.get '/settopcover', home.checkLogin, cover.setTop



  return