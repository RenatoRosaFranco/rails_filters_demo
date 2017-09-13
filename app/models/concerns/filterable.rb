module Filterable
 extend ActiveSupport::Concern

 module ::ClassMethods
   def filters(filter)
     results = where(nil)
     filter.each do |key, value|
       results = results.public_send(key, value) if present?(value)
     end
     results
   end
 end

 private

 def present?(obj)
  (obj.present?) ? true : false
 end

end
