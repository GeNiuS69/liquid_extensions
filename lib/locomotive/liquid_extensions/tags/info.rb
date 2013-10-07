#encoding: utf-8
module Locomotive
  module LiquidExtensions
    module Tags

      class Info < Solid::Tag

        # register the tag
        tag_name :info

        def display(name)
            page = Page.all.where(title: name).first
            if page.title = 'Главная'
            "#{page.title} #{ page.created_at.in_time_zone('Moscow').strftime('Создано: %R %d.%m.%Y') }" + "<br> #{ DateTime.parse(page.updated_at).in_time_zone('Moscow').strftime('Обновлено: %R %d.%m.%Y') }"
            else
            "#{page.title} #{ page.created_at.in_time_zone('Moscow').strftime('Создано: %R %d.%m.%Y') }" + "<br> #{ page.updated_at.in_time_zone('Moscow').strftime('Обновлено: %R %d.%m.%Y') }"

            end

        end


      end

    end
  end
end
