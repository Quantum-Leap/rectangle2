class Rectangle

  define_method(:initialize) do |length, width| #creates class called "Rectangle" and sets "length" and "width" as arguments to pass into the class.
    @length = length
    @width = width
  end

  define_method(:length) do
    @length
  end

  define_method(:width) do
    @width
  end

  define_method(:square?) do
    @result = @length.eql?(@width) #does length equal width? Returns "true" if yes and "false" if no.
    if @result == true
      puts "is"
    else
      puts "is not"
  end
end
