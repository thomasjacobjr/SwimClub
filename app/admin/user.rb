ActiveAdmin.register User do
  filter :email

  form do |f|
    inputs 'Details' do
      input :email
      input :admin
      actions 
    end
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model

  index do
    selectable_column
    column :email
    column :admin
    column :created_at
  end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
