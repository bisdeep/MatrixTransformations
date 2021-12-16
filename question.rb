#Given a sqpare matrix of integers a and an array of queries q,
#if q[i] = 0, rotate the matrix 90 degrees
def rotate90Deg(matrix)
    matrix.reverse.transpose
end
#if q[i] = 1, reflect along main diagonal
def reflectMainDiag(matrix)
    matrix.transpose
end
#if q[i] = 1, reflect along secondary diagonal
def reflectSecDiag(matrix)
    matrix.transpose.reverse.transpose.reverse.transpose
end



def main(matrix, q)
    q.each do |el|
        case (el)
            when 0
                matrix = rotate90Deg(matrix)
            when 1
                matrix = reflectMainDiag(matrix)
            when 2
                matrix = reflectSecDiag(matrix)
        end
    end
    return matrix
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
q = [0,1,2]

matrix2 = [[5,5],[1,2]]
q2 = [2,0,2,0,1]

matrix3 = [[11,2,9,1],[17,4,0,32],[1,7,10,6],[80,3,5,14]]
q3 = [0,1,2,0]

[[1,2,3],[4,5,6],[7,8,9]].each {|row| p row}
puts "transforms into:"
main(matrix, q).each {|row| p row}
puts "---------------------------"
[[5,5],[1,2]].each {|row| p row}
puts "transforms into:"
main(matrix2, q2).each {|row| p row}
puts "---------------------------"
[[11,2,9,1],[17,4,0,32],[1,7,10,6],[80,3,5,14]].each {|row| p row}
puts "transforms into:"
main(matrix3, q3).each {|row| p row}
puts "---------------------------"