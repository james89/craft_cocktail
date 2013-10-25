class BarsController < ApplicationController

def index
  @bars = Bar.all
  @json = @bars.to_gmaps4rails
  # @json = @bars.to_gmaps4rails do |bar, marker|
  # marker.infowindow render_to_string(:partial => "/bars/infowindow", :locals => { :bar => bar})
  #   marker.title "#{bar.name}"
  #   marker.json({ :address => bar.address})
  #   marker.picture({:picture => "http://mapicons.nicolasmollet.com/wp-content/uploads/mapicons/shape-default/color-3875d7/shapecolor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshadowstyle-dark/gradient-iphone/information.png",
  #                   :width => 32,
  # #                   :height => 32})
  # end
end

end
