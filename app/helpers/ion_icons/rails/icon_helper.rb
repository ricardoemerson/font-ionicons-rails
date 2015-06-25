module IonIcons
  module Rails
    module IconHelper
      # Creates an icon tag given an icon name and possible icon
      # modifiers.
      #
      # Examples
      #
      #   ion_icon "camera"
      #   # => <i class="ion-camera"></i>
      #
      #   ion_icon "camera", text: "Take a photo"
      #   # => <i class="ion-camera"></i> Take a photo
      #
      #   ion_icon "chevron-right", text: "Get started", right: true
      #   # => Get started <i class="ion-chevron-right"></i>
      #
      #   ion_icon "user", data: { id: 123 }
      #   # => <i class="ion-user" data-id="123"></i>
      #
      #   content_tag(:li, ion_icon("check li", text: "Bulleted list item"))
      #   # => <li><i class="ion-check fa-li"></i> Bulleted list item</li>
      def ion_icon(names = 'flag', options = {})
        classes = []
        classes.concat Private.icon_names(names)
        classes.concat Array(options.delete(:class))
        text = options.delete(:text)
        right_icon = options.delete(:right)
        icon = content_tag(:i, nil, options.merge(class: classes))
        Private.icon_join(icon, text, right_icon)
      end

      module Private
        extend ActionView::Helpers::OutputSafetyHelper

        def self.icon_join(icon, text, reverse_order = false)
          return icon if text.blank?
          elements = [icon, ERB::Util.html_escape(text)]
          elements.reverse! if reverse_order
          safe_join(elements, ' ')
        end

        def self.icon_names(names = [])
          array_value(names).map { |n| "ion-#{n}" }
        end

        def self.array_value(value = [])
          value.is_a?(Array) ? value : value.to_s.split(/\s+/)
        end
      end
    end
  end
end
