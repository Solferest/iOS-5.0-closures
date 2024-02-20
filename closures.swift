import Foundation

// Написать сортировку массива с помощью замыкания, в одну сторону, затем в обратную
var arr = [38, 59, 2, -1, 232, 90, 0, 2]
var arr_sorted = arr.sorted(by: { a1, a2 in a1 < a2 })
var arr_sorted_reversed = arr.sorted(by: { a1, a2 in a1 > a2 })
//Вывести результат в консоль
print(arr_sorted)
print(arr_sorted_reversed)

//Создать метод, который принимает имена друзей, после этого имена положить в массив
func add_friends(names: String...) -> [String] 
{
    var friends = [String]()
    for name in names 
    {
        friends.append(name)
    }
    return friends
}

var friends = add_friends(names: "Isabela", "Thomas", "Alex", "Felix")
// Массив отсортировать по количеству букв в имени
friends=friends.sorted(by: { a1, a2 in a1.count < a2.count })
print(friends)

//Создать словарь (Dictionary), где ключ - кол-во символов в имени, а в значении - имя друга
var dict = [Int: String]()
for friend in friends 
{
    dict[friend.count] = friend
}
//Написать функцию, которая будет принимать ключ, выводить полученный ключ и значение
func print_name(key: Int) 
{
    if let name = dict[key] 
    {
        print("Ключ: \(key), Значение: \(name)")
    }
}
print_name(key: 6) 
print_name(key: 4)
print_name(key: 8) //такого значения нет - ничего не выводится

//Написать функцию, которая принимает 2 массива (один строковый, второй - числовой) и проверяет их на пустоту: если пустой - то добавьте любое значения и выведите массив в консоль
func are_arrays_empty(strings: [String], numbers: [Int]) 
{
    var strings = strings
    var numbers = numbers
    if strings.isEmpty 
    {
        strings.append("zero")
    }
    if numbers.isEmpty 
    {
        numbers.append(0)
    }
    print(strings)
    print(numbers)
}
are_arrays_empty(strings: [], numbers: [11, 22]) 
are_arrays_empty(strings: ["eleven", "twenty two"], numbers: []) 
