/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Kevin Tusingwire
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        if (x == null || y == null || x <= y) {
            return null;
        }
        return 'Hello World!'; 
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        if (age == null || age < 18) {
            return false;
        }
        return true; 
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        if (num1 == null || num2 == null) {
            return null;
        }
        // Initialize largestNum as null
        Integer largestNum = (num1 >= num2) ? num1 : num2;

        return largestNum; 
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        if (a == null) {
            return null;
        } else if (a > 0) { 
            return 'Positive';
        } else if (a < 0) {
            return 'Negative';
        } else {
            return 'Zero';
        }  
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        if (a == null) {
            return null;
        }
        return (Math.mod(a, 2) == 0) ? 'Even' : 'Odd'; 
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        if (a == null) {
            return 'Null';
        }
        if (a == '') {
            return 'Empty';
        }
        return 'Contains Text'; 
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        if (score == null) {
            return null;
        }
        if (score >= 90) {
            return 'A';
        } else if (score >= 80) {
            return 'B';
        } else if (score >= 70) {
            return 'C';
        } else if (score >= 60) {
            return 'D';
        } else { 
        return 'F'; 
        }
    }


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        if (intLimit == null || intLimit < 1) {
            return 0;
        }
        Integer sum = 0;
         for (Integer i = 1; i <= intLimit; i++) {
            sum += i;   
        }
        return sum; 
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the result String
        String result = '';

        // Use a for loop to append 'Hello World!;' to the result string three times
        
         for (Integer i = 0; i < 3; i++) {
            result += 'Hello World!; ';
            
         }
        return result;
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        // Initialize the result String
        if (inputString == null || repeatCount == null || repeatCount <= 0) {
            return '';
        }

        // Use a for loop to append the inputString to the result string repeatCount times
        String result = '';
        for (Integer i = 0; i < repeatCount; i++) {
            result += inputString;
            if (i < repeatCount - 1) {
                result += '; ';
            }

            // If it is not the last iteration, add a semicolon to separate the strings
        }
        

        // Return the final result string
        return result; 
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
        List<Integer> intlist = new List<Integer>();

        // Add the integers 1, 2, and 3 to the list
        intlist.add(1);
        intlist.add(2);
        intlist.add(3);


        // Return the populated list
        return intList; 
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE

        // Remove the 3rd element (number 3) from the list
        numberList.remove(2);
        
        // Return the updated list
        return numberList; 
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers 
        List<Integer> intList = new List<Integer>();
        if (n == null || n < 1) {
            return intList;
        }
        for(Integer i = 1; i <= n; i++) {
            intList.add(i);
            //add integer to the list
        }
        return intList;
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>();

        //add strings to the set
        if (inputList != null) {
            stringSet.addAll(inputList);
        }
        return stringSet; 
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE

        Integer sum = 0;

        // Loop through the list of integers
        for (Integer num : numbers) {
            if (num < 0) {
                continue;
            }
            sum += num;
        }
        return sum; 
    }

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        for (Integer i = 0; i < words.size(); i++) {
            if (words[i] == wordtoFind) {
                return i;
            }
        }
        // The variable to store the index of the word

        // Loop through the list of words
            // If the current word is the word to find, exit the loop

        return -1; 
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
        Decimal total = 0;
        Decimal spendingLimit = 40;

        for (Decimal amount : moneyInWallet) {
            total += amount;
            if (total > spendingLimit) {
                break;
            }
        }
        return total; 
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
        Map<String, Integer> fruitQuantities = new Map<String, Integer>();

        // Add key-value pairs to the Map
        fruitQuantities.put('Apples', 5);
        fruitQuantities.put('Oranges', 10);
        fruitQuantities.put('Bananas', 15);
        fruitQuantities.put('Pears', 20);
        fruitQuantities.put('Grapes', 25);

        return fruitQuantities; 
    }

    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        final Integer JOHN_DOE_SALARY = 50000;
        final Integer JANE_SMITH_SALARY = 60000;
        final Integer SAM_BROWN_SALARY = 55000;
        final Integer ALICE_JOHNSON_SALARY = 65000;
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>{
            'John Doe'      => JOHN_DOE_SALARY,
            'Jane Smith'    => JANE_SMITH_SALARY,
            'Sam Brown'     => SAM_BROWN_SALARY,
            'Alice Johnson' => ALICE_JOHNSON_SALARY
        };

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000

        // Get the salary of the employee

        // Return the salary of the employee, or null if the employee is not found in the Map
        return employeeSalaries.get(employeeName); 
    }

    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        final Integer SALARY_THRESHOLD = 55000;
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();
        employeeSalaries.put('John Doe', 50000);
        employeeSalaries.put('Jane Smith', 60000);
        employeeSalaries.put('Sam Brown', 55000);
        employeeSalaries.put('Alice Johnson', 65000);
        

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000

        // Initialize a list to store the names of high paid employees
        List<String> highPaidEmployees = new List<String>(); 

        for (string employeeName : employeeSalaries.keySet()) {
            Integer salary = employeeSalaries.get(employeeName);
            if (salary > SALARY_THRESHOLD) {
                highPaidEmployees.add(employeeName);
            }
        }
        return highPaidEmployees;
        // Iterate over the Map using a for loop
            // Check if the salary of the employee is more than 55000
                // Add the employee to the list of high paid employees

        // Return the list of high paid employees
        
    }

}