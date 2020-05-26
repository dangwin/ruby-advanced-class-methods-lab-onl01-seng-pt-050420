class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    song = self.new
    song.save
    song 
end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song 
    end 
    
    def self.create_by_name(name)
      song = self.create 
      song.name = name 
      song 
    end 
      
      def self.find_by_name(name)
        song = self.all.select { |song| song.name == name }
        song[0]
      end 

    def self.find_or_create_by_name(name)
      if !find_by_name(name)
        create_by_name(name)
      else
        find_by_name(name)
      end

end 

    def self.alphabetical
      self.all.sort_by { |song| song.name[0] }
end 

    def self.new_from_filename(file)
      song_info = file.sub!(/.mp3/,'').split(' - ')
      song = self.new
       song.artist_name = song_info[0]
      song.name = song_info[1]
      song
      
end 

    def self.create_from_filename(file)
      song_info = file.sub!(/.mp3/,'').split(' - ')
      song = self.create
       song.artist_name = song_info[0]
      song.name = song_info[1]
      song
      
end 

    def self.destroy_all
      self.clear_all



end 



