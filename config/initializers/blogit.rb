Blogit.configure do |config|
  # Do you want blogit to take care of comments for your blog too? Set to false if you 
  # don't want comments or would like to roll your own. 
  #config.include_comments = true

  # The name of the controller method we'll call to return the current blogger.
  # Change this if you use something other than current_user.
  # Eg. current_admin_user (if using ActiveAdmin)
  config.current_blogger_method = :current_user

  # What method do we call on blogger (User model) to show who they are?
  config.blogger_display_name_method = :username

  # Which DateTime::FORMATS format do we use to display blog and comment publish time
  config.datetime_format = :short

  # Should the controllers turn on page caching?
  config.cache_pages = false

  # No. of posts to show per page. (Uses kaminari for pagination)
  config.posts_per_page = 5

  # The name of the before filter we'll call to authenticate the current user.
  config.authentication_method = :login_required

  # If set to true, the comments form will POST and DELETE to the comments 
  # controller using AJAX calls.
  config.ajax_comments = true

  # If set to true, the create, edit, update and destroy actions
  # will be included on Blogit::PostsController. If set to false, you'll have to set these 
  # yourself elsewhere in the app. This is useful if you're using Active Admin for example.
  config.include_admin_actions = true

  # If set to true, links for new posts, editing posts and deleting comments
  # will be available. If set to false, you'll have to set these 
  # yourself in the templates.
  config.include_admin_links = true

  # The default format for parsing the blog content.
  config.default_parser = :markdown

  # If blog content contains code, this should be highlighted using
  # albino.
  config.highlight_code_syntax = true

  #ref https://github.com/KatanaCode/blogit/issues/8
  config.inline_main_app_named_routes = true

  # When using redcarpet as content parser, pass these options as defaults.
  # @see here for more options: https://github.com/tanoku/redcarpet
  #config.redcarpet_options = [:hard_wrap, :filter_html, :auto_link, :no_intraemphasis, :fenced_code, :gh_blockcode]
end