ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :notes
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :phone, :email, :notes
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :phone, :email, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
