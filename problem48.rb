1.upto(1000).map{|x| x**x}.inject(&:+) % 10**10
