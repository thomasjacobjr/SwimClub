ActiveAdmin.register Page do
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  filter :menu_title
  permit_params [:menu_title, :title, :body]

  form do |f|
    f.inputs 'Details' do
      f.input :menu_title
      f.input :title
      f.input :body
    end
    f.actions
  end

  index do
    selectable_column
    column :menu_title
    column :title
    actions
  end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
