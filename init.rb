Redmine::Plugin.register :redmine_portfolio_management do
  name 'Redmine Portfolio Management plugin'
  author 'Arean'
  description 'Plugin to enable the use of a project portfolio'
  version '1.0.2'
  url 'https://github.com/Arean82/redmine_portfolio_management'
  author_url 'https://github.com/Arean82'
  
  menu :top_menu, :portfolio_management, { :controller => 'portfolio_management', :action => 'index' }, :caption => :portfolio_management_menu
  settings default: { :portfolio_management_attribute => 'Portfolio name'}, :partial => 'settings/redmine_portfolio_management_settings'
  
end
