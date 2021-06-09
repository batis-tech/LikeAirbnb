module PropertiesHelper
  def property_thumbnail property
    img = property.photo.present? ? property.photo.url : "placeholder.jpeg"
    image_tag img, class: "img-thumbnail rounded"
  end
  def property_photo property
    property.photo.present? ? property.photo.url :  assets("placeholder.jpeg")
  end
end
