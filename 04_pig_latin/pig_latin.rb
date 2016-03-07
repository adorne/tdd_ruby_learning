def translate str
  if str[0] == ("a" || "o" || "e" || "i" || "u")
    str + "ay"
  elsif (str[0] && str[1] ) == ("a" || "o" || "e" || "i" || "u")
    str[0] = str.last
  else
    str[0] = str.last
    str + "ay"
  end
end
