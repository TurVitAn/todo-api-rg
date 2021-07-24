module Docs
  module V1
    module Descriptions
      module Registrations
        extend Dox::DSL::Syntax

        document :api do
          resource 'Users' do
            endpoint '/'
            group 'Registrations'
          end
        end

        document :create do
          action 'Create a user'
        end
      end
    end
  end
end
