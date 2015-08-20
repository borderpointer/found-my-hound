class Search < ActiveRecord::Base

   def search_dogs
   
   dogs = Dog.all
   
   dogs = dogs.where("location like ?", "%#{location}%") if location.present?
   dogs = dogs.where("breed like ?", "%#{breed}%") if breed.present?
   dogs = dogs.where("age like ?", age) if age.present?
   dogs = dogs.where("gender like ?", gender) if gender.present?
   dogs = dogs.where("size like ?", size) if size.present?
   
   validates_presence_of :location

   return dogs

   end

   belongs_to :user

end
