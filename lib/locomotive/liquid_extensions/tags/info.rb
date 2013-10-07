module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            page = Page.all.where(title: name).first
            "Создано: #{ page.created_at } "
            "Обновлено: #{ page.updated_at }"

        end


      end

    end
  end
end
