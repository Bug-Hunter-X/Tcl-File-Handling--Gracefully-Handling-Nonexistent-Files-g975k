proc count_lines {filename} {
    if {[catch {open $filename r} fd]} {
        puts stderr "Error opening file: $filename\nError: $::errorInfo"
        return -1  ;# Or another suitable error indicator
    }
    set count 0
    while {[gets $fd line] >= 0} {
        incr count
    }
    close $fd
    return $count
}

set filename "my_file.txt"
set line_count [count_lines $filename]
if {$line_count >= 0} {
    puts "The file $filename has $line_count lines."
} else {
    puts "Error processing file $filename"
}
