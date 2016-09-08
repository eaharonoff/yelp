def reverse(str)
  if str.length == 1
    return str[0]
  else
    return str.slice(str.length-1) + reverse(str.slice(0..str.length-2)) 
  end
end
string = 'hola'
reverse(string)
