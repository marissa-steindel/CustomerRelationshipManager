ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :notes, :image

  form do |f|
    # shows errors on :base
    f.semantic_errors

    # builds an input field for every attribute
    f.inputs

    # add additional inputs - based on formtastic gem
    f.inputs do
      f.input :image, as: :file
    end

    # adds the 'Submit' and 'Cancel' buttons
    f.actions
  end


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
