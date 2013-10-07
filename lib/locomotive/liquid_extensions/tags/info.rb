module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            puts name
            " #{name} "
            page = Page.all.where(title: name).first
            puts page
            " #{ page.created_at } "

        end


      end

    end
  end
end
