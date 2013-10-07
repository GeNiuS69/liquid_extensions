module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        # not nil if processed from Wagon
        context_attribute :page

        def display(*options)
            ' #{ page.title } '
            ' #{ page } '
            ' #{ page.created_at } '


        end


      end

    end
  end
end
