ActiveAdmin.register Bread do
  permit_params :title, :breadtype, :img_url
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :breadtype, :imgurl
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :breadtype, :imgurl]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
