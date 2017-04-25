class Places
  @@place_array=[]

  define_method(:initialize)do |place_input|
  @place_input= place_input
end
define_method(:place_input) do
@place_input
end
define_method(:save) do
  @@place_array.push(self)
end
define_singleton_method(:p_array) do
  @@place_array
end
end
