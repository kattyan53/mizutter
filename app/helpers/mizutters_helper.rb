module MizuttersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_mizutters_path
    elsif action_name == 'edit'
      mizutter_path
    end
  end
end
