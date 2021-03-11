class Card::Component < ApplicationComponent
  include ViewComponent::SlotableV2

  renders_one :header, 'Header'
  renders_many :buttons, 'Button'
  renders_many :rows, 'Row'
  renders_one :footer, ClassAndDataSlot

  def initialize(classes: nil, data: nil)
    @classes = classes
    @data = data
  end

  class Header < ApplicationComponent
    attr_reader :title, :subtitle

    def initialize(title: nil, subtitle: nil)
      @title = title
      @subtitle = subtitle
    end
  end

  class Row < ApplicationComponent
    attr_reader :padding, :classes, :data

    def initialize(padding: true, classes: nil, data: nil)
      @padding = padding
      @classes = classes
      @data = data
    end

    def call
      content_tag :div, content, { class: classes }
    end
  end

  class Button < ApplicationComponent
    attr_reader :icon, :text, :classes, :data

    def initialize(icon: nil, text: nil, classes: nil, data: nil)
      @icon = icon
      @text = text
      @classes = classes
      @data = data
    end
  end
end
