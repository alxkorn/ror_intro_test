puts "Введите коэффициенты квадратного уравнения ax^2+bx+c=0"
puts "Введите коэффициент a: "
a = gets.to_f
puts "Введите коэффициент b: "
b = gets.to_f
puts "Введите коэффициент c: "
c = gets.to_f

while a == 0.0 do
    puts "Уравнение #{a}x^2+#{b}x+#{c}=0 не является квадратным уравнением."
    puts "Введите коэффициент a: "
    a = gets.to_f
end
D = b ** 2 - 4 * a * c 

if D > 0.0
    x1 = (-b + Math.sqrt(D))/(2 * a)
    x2 = (-b - Math.sqrt(D))/(2 * a)
    puts "Дискриминант:\nD = #{D}\nКорни:\nx1 = #{x1}\nx2 = #{x2}"
elsif D == 0.0
    x1 = -b/(2 * a)
    puts "Дискриминант:\nD = #{D}\nКорень:\nx1 = #{x1}"
else
    puts "Дискриминант:\nD = #{D}\nКорней нет."
end
