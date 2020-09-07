class CardComponent < ApplicationComponent
  with_content_areas :header, :simple_header, :body, :footer

  def initialize(classes: nil, data: nil)
    @classes = classes
    @data = data
  end
end
