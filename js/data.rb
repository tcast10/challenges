require 'active_support/all' #Lets us talk/convert between JS and Ruby #Only need to do in stand alone script, already in Rails

num = 1 #Integer
f = 1.0 #Decimal
string = "Hello!" 
sym = :symbol # "symbol" 

array = [1,2,3,4]

hash = {
  1 => "One",
  2 => "Two",
  3 => "Three",
  4 => "Four"
}
# Hash table: Key value pairs--Look up one value of one side to the other
# => : hash rocket

# puts hash[num] #With left hand side, find right hand side

#puts hash.to_json.inspect
json_string = '{"1":"One","2":"Two","3":"Three","4":"Four"}'

parsed = ActiveSupport::JSON.decode(json_string)
puts parsed.inspect

puts parsed["1"] # JSON value -> Ruby
puts hash[1].inspect






JS Stuff:
 <script>
          var num = 1;
          var num2 = 1.0;
          var string = "hello!";
          //Symbols don't exist in JavaScript
          var array = [1,2,3];
          var hash = {
            "1": "One",
            "2": "Two",
            "3": "Three",
            "4": "Four"
          };
          //JSON - Object notation, key value pairs
  </script>