class ApplicationComponent < ViewComponent::Base
  class ClassAndDataSlot < ViewComponent::Base
    attr_reader :classes, :data

    def initialize(classes: nil, data: nil)
      @classes = classes
      @data = data
    end

    def call
      content_tag :div, content
    end
  end

  def call
    content_tag :div, content
  end
end
