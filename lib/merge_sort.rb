def mergesort(a)
  return a if a <= 1
  a2 = a.slice!((a.size/2).round, a.size)
  left = mergesort(a)
  right = mergesort(a2)
  merge(left, right)
end

def merge(l,r)
  array = []
  until l.empty? || r.empty?
    if l.first <= r.first
      array << l.shift
    else
      array << r.shift
    end
  end
  array + l + r
end

array = mergesort([3,5,7,12,87,3,345,89,34,9])
print array
