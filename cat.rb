#! /usr/bin/env ruby

nopt=false
if "-n" == ARGV[0]
    nopt=true
    file=ARGV[1]
else
    nopt=false
    file=ARGV[0]
end
linenum=1
File.open(file, "r") do |f|
    while line = f.gets
        printf "%02d ",linenum if nopt
            linenum+=1
            puts line
    end
end
