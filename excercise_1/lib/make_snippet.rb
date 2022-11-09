def make_snippet(str)
    if str.split(" ").count > 5
      firstFive = str.split(" ").slice(0, 5).join(" ")
      return "#{firstFive}..."
    else
      return str
    end
end

puts make_snippet("1 2 3 4 5")
