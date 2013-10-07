module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        # not nil if processed from Wagon
        context_attribute :current_page

        def display(*options)
            ' #{ current_page.title } '
            ' #{ current_page } '
            ' #{ current_page.created_at } '


        end


      end

    end
  end
end
