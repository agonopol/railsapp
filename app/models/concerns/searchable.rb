module Searchable
    extend ActiveSupport::Concern

    included do
        # Add a "search" scope to the models
        def self.search (search)
            if search
                where('name LIKE ?', "%#{search}%")
            else
                scoped
            end
        end
    end

end