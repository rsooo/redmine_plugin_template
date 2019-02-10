# register webhook listener
require_dependency 'hook_listener'

Redmine::Plugin.register :redmine_plugin_template do
  # default general settings
  name 'Redmine Plugin Template'
  author 'Alira Saito'
  description 'This is the template for creating new redmine plugin'
  version '0.1.0'
  url 'https://github.com/rsooo/redmine_plugin_template'
  author_url 'https://github.com/rsooo'

  # add plugin setting menu
  # reading partial view (app/views/settings/_config.html.erb)
  settings :default => {'empty' => true}, :partial => 'settings/config'
end
