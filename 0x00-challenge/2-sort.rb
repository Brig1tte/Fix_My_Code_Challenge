###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted &#38;&#38; i &#60; l do
        if result[i] &#60; i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            break
        end
    end
    if !is_inserted &#38;&#38; (i == l || i_arg < result[i]))
        result.insert(0, i_arg)
    end
end

puts result
