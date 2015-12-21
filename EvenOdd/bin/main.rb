require '../core/array'
puts 'Using Inject on Array'
puts [10, 122, '3a', 3214, 75, 'sd', 7, 'lj34', 456, 'h', 'a', 215678].sort_hash_to_even_odd
puts
puts 'Using Inject on Hash'
print ({ 5 => [1, 4, 4, 'f'], 7 => ['897fghd'], 4 => ['oiku', 3421, 8976, 6533], 2 => ['er', 90, 'W2']}.sort_inject)