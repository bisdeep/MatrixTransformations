matrix = [[1,2,3],[4,5,6],[7,8,9]]

#switches order of rows/columns
matrix2 = matrix.transpose

#rotate simply moves down the first most row(s) 
#(it can take in an integer for the number of rows) to the bottom
matrix3 = matrix.rotate

#reverse swaps the rows
matrix4 = matrix.reverse

#---------------------------------------------------------------------
#rotate 90 degrees means we'll flip the transposed matrix
matrix = [[1,2,3],[4,5,6],[7,8,9]]

def rotate90Deg(matrix)
    matrix.reverse.transpose
end

# rotate90Deg(matrix).each {|row| p row}

def reflectMainDiag(matrix)
    matrix.transpose
end

# matrix.each {|row| p row}
# puts "---------------"
# reflectMainDiag(matrix).each {|row| p row}

def reflectSecDiag(matrix)
    matrix.transpose.reverse.transpose.reverse.transpose
end

# matrix.each {|row| p row}
# puts "---------------"
# reflectSecDiag(matrix).each {|row| p row}