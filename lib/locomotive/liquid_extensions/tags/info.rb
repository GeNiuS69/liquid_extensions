module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        # not nil if processed from Wagon
        context_attribute :current_page

        def display(*options)
            ' Test '
        end


      end

    end
  end
end
