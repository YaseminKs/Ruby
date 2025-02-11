# easy to read but slower

def monte_carlo_pi( samples = 1_000_000 )
  inside_circle = ( 1..samples ).count { rand**2 + rand**2 <= 1 }
  4.0 * inside_circle / samples
end

puts "Estimated Pi: #{ monte_carlo_pi }"
