class Image < ApplicationRecord
    validates :img_name, presence: true
    validates :base64_img,
        presence: true,
        format: { without: /\s/}
end
