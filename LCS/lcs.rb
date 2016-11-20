def lcs(array_x, array_y)
	n = array_x.size
	m = array_y.size
	l = Array.new(n+1) { Array.new(m+1) }
	(0..n).each do |i|
		l[i][0] = 0
	end
	(1..m).each do |j|
		l[0][j] = 0
	end
	(1..n).each do |i|
		(1..m).each do |j|
			if array_x[i-1] == array_y[j-1]
				l[i][j] = l[i-1][j-1] + 1
			else
				l[i][j] = [l[i-1][j],l[i][j-1]].max
			end
		end
	end
	return l
end

y = "SOMEONETQUNSCH".split("")
x = "COMMONSEQUENCE".split("")
a = lcs(x,y)
(0..a.size-1).each do |i|
	(0..a[0].size-1).each do |j|
		print "#{a[i][j]} "
	end
	puts 
end