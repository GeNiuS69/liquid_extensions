module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            page = Page.all.where(title: name).first
            "<p>Создано: #{ page.created_at } </p>"
            "<p>Обновлено: #{ page.updated_at }</p>"

        end


      end

    end
  end
end
