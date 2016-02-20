import Foundation

func divadibleBy(div: Double) -> (Double -> Bool) {
    return { (number: Double) in
        let divided = number/div
        return floor(divided) == divided
    }
}

let array = [20.0, 23.0, 25.0, 120.0]


array.filter(divadibleBy(5.0))

array.filter { number in
    floor(number/5) == number/5
}


struct Person {}

struct Group {
    let persons: [Person]
}

func group() -> (Group, Person) -> Group {
    return { (group: Group, person: Person) -> Group in
        return Group(persons: group.persons + [person])
    }
}

let persons = [Person(), Person(), Person(), Person(), Person(), Person()]

let groups = persons.reduce(Group(persons: []), combine: group())
