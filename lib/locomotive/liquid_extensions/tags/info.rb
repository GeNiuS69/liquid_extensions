module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            page = Page.all.where(title: name).first
            "<p>#{ page.created_at.in_time_zone('Moscow') } </p>"
            "<p> #{ page.updated_at }</p>"

        end


      end

    end
  end
end
