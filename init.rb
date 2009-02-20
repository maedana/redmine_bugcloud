require 'redmine'

Redmine::Plugin.register :redmine_bugcloud do
  name 'Redmine Bugcloud plugin'
  author 'maedana'
  description 'This is a plugin for Redmine. The view that displays the ticket like the tag cloud is added. '
  version '0.0.1'

  permission :bugcloud, { :bugcloud => [:index] }, :public => true
  menu :project_menu, :bugcloud, { :controller => 'bugcloud', :action => 'index' }, :caption => :bugcloud, :last => true
end
