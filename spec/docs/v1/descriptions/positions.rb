module Docs
  module V1
    module Positions
      extend Dox::DSL::Syntax

      document :api do
        resource 'Position' do
          endpoint '/positions'
          group 'Tasks'
        end
      end

      document :update do
        action 'Update task position'
      end
    end
  end
end
