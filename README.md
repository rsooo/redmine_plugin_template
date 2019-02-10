# redmine_plugin_template

## Overview
This is the redmine plugin example.
This plugin inclues:

 - Example of view hook and controller hook.
 - Example of getting issue data in controller hook.
 - Example of getting and editing custom field value in controller hook.
 - Example of setting and getting value from plugin config.

If you are beginner for developing redmine plugin and you want use
some hooks, convenient to clone this project and use hooks you want to use.

## How to use
This plugin does not customize db schema.
So you only need checkout this program in `redmine/plugins` directory

```
  cd redmine_dir/plugins
  git clone https://github.com/rsooo/redmine_plugin_template.git
```

after checkout, restart redmine.

## How to uninstall
Simply delete redmine_plugin_template in your plugins directory.

## Licence
MIT

## Redmine versions
This plugin was generated redmine ver `4.0.0`.

## Remark
 - All hooks are not listed in this plugin. If you can check all hooks, see hooks_list http://www.redmine.org/projects/redmine/wiki/Hooks_List
