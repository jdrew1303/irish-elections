ActiveAdmin.register Candidate do
  permit_params [:first_name, :last_name]
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :alias
      f.input :date_of_birth, :as => :datetime_picker
      f.input :gender, :label => 'Gender', :as => :select, :collection => ["Male", "Female", "Other"]
      f.input :photo_url, as: :string
      f.input :party_profile_url, as: :string
      f.input :website_url, as: :string
      f.input :twitter_url, as: :string
      f.input :facebook_url, as: :string
      f.input :instagram_url, as: :string
      f.input :linkedin_url, as: :string
      f.input :youtube_url, as: :string
      f.input :source_url, as: :string
      f.input :voting_record_url, as: :string
      f.input :claimed_expenses, :step => 'any'
    end
    f.actions
  end

  index do
    column :first_name
    column :last_name
    column :alias
    column :party
    column :constituency
    column :current_td
  end
end
