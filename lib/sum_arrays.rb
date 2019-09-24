class SumArrays

  def self.unique_names(array1, array2)
    if array1.class.eql?(Array) && array2.class.eql?(Array)
      array_final = array1 + array2
      array_final.uniq
    else
      "It cannot be added because the two arguments are not of the same type"
    end
  end

end
