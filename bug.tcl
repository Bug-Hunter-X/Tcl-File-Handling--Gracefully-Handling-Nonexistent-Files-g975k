proc count_lines {filename} {
    set fd [open $filename r]
    set count 0
    while {[gets $fd line] >= 0} {
        incr count
    }
    close $fd
    return $count
}

set filename "my_file.txt"
set line_count [count_lines $filename]
puts "The file $filename has $line_count lines."