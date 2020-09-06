class CardComponent < ApplicationComponent
  def initialize(title:, wrapper_class: nil)
    @title = title
    @wrapper_class = wrapper_class
  end
end
