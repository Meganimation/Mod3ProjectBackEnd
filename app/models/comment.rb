class Comment < ApplicationRecord
    belongs_to :bread, optional: true
end
