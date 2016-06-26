ActiveAdmin.register User do
  filter :email
  permit_params [:email, :admin, :password, :password_confirmation]

  form do |f|
    f.inputs 'Details' do
      f.input :email
      f.input :admin
      f.input :password
      f.input :password_confirmation
    end
    f.actions
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
    actions 
  end

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
