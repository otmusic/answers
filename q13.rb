-----------------------------------------------------Part1--------------------------------------------------------
def multiplier(n)
  lambda {|data| data.collect{|x| x*n}}
end

#получаем lambda обект:
doubler = multiplier(2)
puts doubler.call([1, 2 ,3]) # получим 2,4,6
-----------------------------------------------------Part2--------------------------------------------------------
function createCounter() {
  var numberOfCalls = 0;
  return function() {
    return ++numberOfCalls;
  }
}
var fn = createCounter();
fn(); #1
fn(); #2
fn(); #3
------------------------------------------------------------------------------------------------------------------