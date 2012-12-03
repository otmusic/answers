-----------------------------------------------------Part1--------------------------------------------------------
def lambda_args
  lam = lambda { |a, b| puts "lambda with 2 arguments a:#{a}, b:#{b}" }
  lam.call( "first", "second")
  
  begin
    lam.call("first", "second", "third")
  rescue
    puts "   ArgumentError: wrong number of arguments (3 for 2)"
  end
    puts "lambda called with no arguments..."
  begin
    lam.call()
  rescue
    puts "   ArgumentError: wrong number of arguments (0 for 2)"
  end
end

def proc_args
  prc = Proc.new { |a, b| puts "Proc with 2 arguments a:#{(a.nil?) ? "nil" : a }, b:#{(b.nil?) ? "nil" : b }" }
  prc.call( "first", "second")
  prc.call("first", "second", "third")
  prc.call()
end
-----------------------------------------------------Part2--------------------------------------------------------
def lam_return
  my_lam = lambda { return 'Lambda has returned' }
  my_lam.call
  return 'lam_return method string returned'
end
 
def proc_return
  my_proc = Proc.new { return 'Proc string returned' }
  my_proc.call # this function returns and finishes here
  return 'proc_return method string returned' # the return is never called
end
------------------------------------------------------------------------------------------------------------------
