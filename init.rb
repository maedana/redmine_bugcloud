require 'redmine'

Redmine::Plugin.register :redmine_bugcloud do
  name 'Redmine Bugcloud plugin'
  author 'maedana'
  description 'This is a plugin for Redmine. The view that displays the ticket like the tag cloud is added. '
  version '0.0.2'

  # Configuring permissions for plugin's controllers.
  project_module :bugcloud do
    permission :view_bugcloud, { :bugcloud => [:index] }, :public => true
  end
 
  # Creating menu entry. It appears in project menu as the last entry.
  menu :project_menu, :bugcloud, { :controller => 'bugcloud', :action => 'index' }, :caption => :bugcloud, :last => true
end
