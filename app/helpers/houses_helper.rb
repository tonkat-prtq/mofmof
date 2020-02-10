module HousesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      houses_path
    elsif action_name == 'edit'
      house_path
    end
  end

  def method_select
    @house.id ? 'patch' : 'post'
  end
end