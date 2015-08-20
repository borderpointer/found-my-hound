class Dog < ActiveRecord::Base

mount_uploader :avatar, AvatarUploader

end

# integer :id
    # string :name
    # integer :location
    # string :breed
    # string :age
    # string :gender
    # string :size
    # string :contact_email
    # string :avatar
    # datetime: created_at
    # datetime: updated_at