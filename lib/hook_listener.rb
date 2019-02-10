class HookListener < Redmine::Hook::ViewListener

  def initialize
    Rails.logger.debug("Hook Listener was initialized.")

    # example to read config settings
    Rails.logger.debug("reading sample setting value: #{Setting.plugin_redmine_plugin_template[:sample1]}")
    Rails.logger.debug("reading sample setting value: #{Setting.plugin_redmine_plugin_template[:sample2]}")
    Rails.logger.debug("reading sample setting value: #{Setting.plugin_redmine_plugin_template[:sample3]}")
  end

  # plugin hook list
  # All ooks were not listed here.
  # You can check all webhook list: http://www.redmine.org/projects/redmine/wiki/Hooks_List

  # View hook
  def view_issues_history_journal_bottom(context = {})
    # Example to use partial view
    ret = context[:controller].send(:render_to_string, {
      :partial => "templates/partial",
      :locals => context
    })
  end

  def view_journals_notes_form_after_notes(context = {})
    return content_tag("p", "view_journals_notes_form_after_notes")
  end

  def view_issues_show_details_bottom(context = {})
    return content_tag("p", "view_issues_show_details_bottom")
  end

  def view_issues_show_description_bottom(context = {})
    return content_tag("p", "view_issues_show_description_bottom")
  end

  def view_layouts_base_sidebar(context = {})
    return content_tag("p", "view_layouts_base_sidebar")
  end

  def view_layouts_base_content(context = {})
    return content_tag("p", "view_layouts_base_content")
  end

  def view_projects_show_left(context = {})
    #return content_tag("p", "Custom content added to the left!!!")
    return content_tag("p", "view_projects_show_left")
  end

  def view_projects_show_right(context = {})
    return content_tag("p", "Custom content added to the right")
  end

  # Controller hook
  def controller_issues_new_before_save(context={})
    Rails.logger.debug("controller webhook: controller_issues_new_before_save")
  end

  def controller_issues_new_after_save(context={})
    Rails.logger.debug("controller webhook: controller_issues_new_after_save")
  end

  def controller_issues_edit_before_save(context={})
    Rails.logger.debug("controller webhook: controller_issues_edit_before_save")

    # Example Usage
    issue = context[:issue]

    sample_custom_field_id = 1
    custom_field_value = issue.custom_field_value(sample_custom_field_id)
    Rails.logger.debug("In issue: #{issue.id}, custom field id: #{sample_custom_field_id} value is #{custom_field_value}")

    # You can also take custom field by using find
    custom_field = issue.custom_field_values.find{|f| f.custom_field.id == sample_custom_field_id}
    custom_field.value = "edited values" unless custom_field.nil?
   end

  def controller_issues_edit_after_save(context={})
    Rails.logger.debug("controller webhook: controller_issues_edit_after_save")
  end

  # Model hook

  # Helper hook

end
