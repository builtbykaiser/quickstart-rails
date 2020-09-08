class ApplicationComponent < ViewComponent::Base
  class ClassAndDataSlot < ViewComponent::Slot
    attr_reader :classes, :data

    def initialize(classes: nil, data: nil)
      @classes = classes
      @data = data
    end
  end
end
