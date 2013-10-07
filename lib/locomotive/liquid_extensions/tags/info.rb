module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            ' #{params} '
            page = Page.all.where(title: name).first
            ' #{ page.created_at } '

        end


      end

    end
  end
end
