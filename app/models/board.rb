class Board < ApplicationRecord

    belongs_to :user

    validates :title, presence: true
    validates :landscaping_id, numericality: { only_integer: true, allow_nil: true}
    validates :hardscaping_id, numericality: { only_integer: true, allow_nil: true}
    validates :custom_pool_id, numericality: { only_integer: true, allow_nil: true}
    validates :artisan_masonry_id, numericality: { only_integer: true, allow_nil: true}
    validates :carpentry_id, numericality: { only_integer: true, allow_nil: true}
    validates :outdoor_lighting_id, numericality: { only_integer: true, allow_nil: true}
    validates :outdoor_kitchen_id, numericality: { only_integer: true, allow_nil: true}
    validates :outdoor_fireplace_id, numericality: { only_integer: true, allow_nil: true}
    validates :outdoor_kitchen_id, numericality: { only_integer: true, allow_nil: true}
    validates :water_feature_id, numericality: { only_integer: true, allow_nil: true}
    validates :fire_pit_id, numericality: { only_integer: true, allow_nil: true}

end
