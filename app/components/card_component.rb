class CardComponent < ApplicationComponent
  include ViewComponent::Slotable

  with_slot :header, class_name: 'Header'
  with_slot :row, collection: true, class_name: 'Row'
  with_slot :footer, class_name: 'ClassAndDataSlot'
  with_slot :button, collection: true, class_name: 'Button'

  def initialize(classes: nil, data: nil)
    @classes = classes
    @data = data
  end

  class Header < ViewComponent::Slot
    attr_reader :title, :subtitle

    def initialize(title: nil, subtitle: nil)
      @title = title
      @subtitle = subtitle
    end
  end

  class Row < ViewComponent::Slot
    attr_reader :padding, :classes, :data

    def initialize(padding: true, classes: nil, data: nil)
      @padding = padding
      @classes = classes
      @data = data
    end
  end

  class Button < ViewComponent::Slot
    attr_reader :icon, :text, :classes, :data

    def initialize(icon: nil, text: nil, classes: nil, data: nil)
      @icon = icon
      @text = text
      @classes = classes
      @data = data
    end
  end
end
