import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'api.dart';

class Controller extends GetxController {

  Future fetchQuestions() async {
    try {
      await http.Client().get(
        Uri.parse('https://usamasarwar.github.io/assessment-api/api.json'),
        headers: {"Accept": "application/json"},
      ).then((response) {
        // if (kDebugMode) {
        //   print(response.body);
        // }
        if (response.statusCode.isEqual(200)) {
          try {
            questionList =
                Questions.fromJson(response.body as Map<String, List<dynamic>>)
                    as Map<String, List<dynamic>>;
            // if (kDebugMode) {
            //   print(questionList);
            // }
          } catch (e) {
            printError(info: e.toString());
          }
        } else {
          Get.showSnackbar(GetSnackBar(
            title: "something got wrong",
            message: "API status code: ${response.statusCode}",
          ));
        }
      });
    } catch (e) {
      printError(info: e.toString());
    }
  }
    Map<String, List<dynamic>> questionList ={
    "html": [
        {
            "id": 0,
            "booklet": "HTML",
            "question": "The best statement about HTML Tags:",
            "question_image_url": "null",
            "answer_choices": [
                "HTML tags are composed of three things: an opening tag, content and ending tag.",
                "Some tags are unclosed tags.",
                "A & B",
                "When a web browser reads an HTML document, the browser reads it from top to bottom and right to left."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "HTML",
            "question": "Do all HTML tags have an end tag?",
            "question_image_url": "null",
            "answer_choices": [
                "Yes",
                "No",
                "Maybe",
                "I'm not sure"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 2,
            "booklet": "HTML",
            "question": "How many levels of heading does an HTML contain?",
            "question_image_url": "null",
            "answer_choices": [
                "<h1> to <h3>",
                "<h1> to <h4>",
                "<h1> to <h5>",
                "<h1> to <h6>"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "HTML",
            "question": "Which of the following is not a valid HTML tabular tag?",
            "question_image_url": "null",
            "answer_choices": [
                "<table>",
                "<br>",
                "<tr>",
                "<th>"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "HTML",
            "question": "Which one is diffrent from rest:",
            "question_image_url": "null",
            "answer_choices": [
                "Ordered list",
                "Unordered list",
                "Definition list",
                "Bullet List"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "HTML",
            "question": "What best describes semantic HTML?",
            "question_image_url": "null",
            "answer_choices": [
                "<b> and <i>",
                "<strong> and <em>",
                "A & B",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "HTML",
            "question": "A hyperlink can be applied to:",
            "question_image_url": "null",
            "answer_choices": [
                "Text",
                "Image",
                "A & B",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "HTML",
            "question": "What is a marquee?",
            "question_image_url": "null",
            "answer_choices": [
                "Scrolling Text",
                "Scrolling Image",
                "Scrolling Text or Image",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "HTML",
            "question": "What are empty elements?",
            "question_image_url": "null",
            "answer_choices": [
                "<br>",
                "<hr>",
                "<fr>",
                "A & B"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "HTML",
            "question": "Which type of video formats are supported by HTML5?",
            "question_image_url": "null",
            "answer_choices": [
                "mp4, ogg, webm",
                "mp4, ogg, webm, flv",
                "mp4, ogg, webm, flv, avi",
                "mp4, ogg, webm, flv, avi, wmv"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        }
    ],
    "css": [
        {
            "id": 0,
            "booklet": "CSS",
            "question": "What is/are the CSS framework(s)?",
            "question_image_url": "null",
            "answer_choices": [
                "Bootstrap",
                "Foundation",
                "Semantic UI",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "CSS",
            "question": "Valid types of CSS selectors?",
            "question_image_url": "null",
            "answer_choices": [
                "Element, Class, ID, Universal, Group",
                "Class, Methods, Constants, Variables, Functions",
                "A & B",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 2,
            "booklet": "CSS",
            "question": "Which one is CSS style component?",
            "question_image_url": "null",
            "answer_choices": [
                "Selector",
                "Property",
                "Value",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "CSS",
            "question": "Which command is used for the selection of all the elements of a paragraph?",
            "question_image_url": "null",
            "answer_choices": [
                "p[lang]",
                "lang[p]",
                "l[pang]",
                "pang[l]"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "CSS",
            "question": "Name the property used to specify the background color of an element.",
            "question_image_url": "null",
            "answer_choices": [
                "backgroud",
                "backgroud-color",
                "color",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "CSS",
            "question": "Following image represents",
            "question_image_url": "https://i.imgur.com/6GEZz6D.png",
            "answer_choices": [
                "HTML Block",
                "styleset",
                "ruleset",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "CSS",
            "question": "What is RWD?",
            "question_image_url": "null",
            "answer_choices": [
                "Raw Web Design",
                "Responsive Web Design",
                "Rational Web Design",
                "Rendering Web Design"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "CSS",
            "question": "CSS sprites are used to:",
            "question_image_url": "null",
            "answer_choices": [
                "Reduce the loading time for a web page",
                "To combine the various small images into one image",
                "Reduces the number of HTTP requests",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "CSS",
            "question": "Given image represents",
            "question_image_url": "https://i.imgur.com/HRR0EGr.png",
            "answer_choices": [
                "CSS Style Model",
                "CSS Grid Model",
                "CSS Box Model",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "CSS",
            "question": "Tweening is used to:",
            "question_image_url": "null",
            "answer_choices": [
                "generate intermediate frames between two images",
                "give the impression that the first image has smoothly evolved into the second one",
                "A & B",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        }
    ],
    "general_coding": [
        {
            "id": 0,
            "booklet": "General Coding",
            "question": "A positive number 20 is given. Find the number of trailing zeros that are present in the binary representation of the number.",
            "question_image_url": "null",
            "answer_choices": [
                "1",
                "2",
                "3",
                "4"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 1,
            "booklet": "General Coding",
            "question": "Translator which is used to convert codes of assembly language into machine language is termed as",
            "question_image_url": "null",
            "answer_choices": [
                "assembler",
                "compiler",
                "attempter",
                "debugger"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "General Coding",
            "question": "Diagram which shows relationship between classes is termed as",
            "question_image_url": "null",
            "answer_choices": [
                "Class Diagram",
                "Sequential Diagram",
                "Use Case Diagram",
                "Communication Diagram"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "General Coding",
            "question": "Diagram which shows how objects communicate with each other regarding a sequence of messages is called",
            "question_image_url": "null",
            "answer_choices": [
                "Object Diagram",
                "Sequential Diagram",
                "Use Case Diagram",
                "Communication Diagram"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "General Coding",
            "question": "Language in which single statements can be written to accomplish substantial tasks is termed as",
            "question_image_url": "null",
            "answer_choices": [
                "machine language",
                "assembly language",
                "high level language",
                "medium level language"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "General Coding",
            "question": "Procedural language contains systematic order of",
            "question_image_url": "null",
            "answer_choices": [
                "statements",
                "objects",
                "classes",
                "operations"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "General Coding",
            "question": "Dividing a program into functions and modules is one of the main feature of",
            "question_image_url": "null",
            "answer_choices": [
                "machine language",
                "interpreted language",
                "structural language",
                "markup language"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "General Coding",
            "question": "A computer is a device that can perform computations and make",
            "question_image_url": "null",
            "answer_choices": [
                "Sequential Statements",
                "Arithmetic Statements",
                "Logical Statements",
                "Algebric Statements"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "General Coding",
            "question": "Variable declared outside of a function or a block is called",
            "question_image_url": "null",
            "answer_choices": [
                "local variable",
                "global variable",
                "variable",
                "string"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "General Coding",
            "question": "The problem with procedural paradigm is that it leads to an even large number of potential connections between",
            "question_image_url": "null",
            "answer_choices": [
                "function and constant",
                "function and loop",
                "function and data",
                "data and string"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 3.0
        }
    ],
    "algorithms": [
        {
            "id": 0,
            "booklet": "Algorithms",
            "question": "Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?",
            "question_image_url": "null",
            "answer_choices": [
                "Insertion Sort",
                "Quick Sort",
                "Heap Sort",
                "Merge Sort"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 1,
            "booklet": "Algorithms",
            "question": "Which of the following is true about linked list implementation of stack?",
            "question_image_url": "null",
            "answer_choices": [
                "In push operation, if new nodes are inserted at the beginning of linked list, then in pop operation, nodes must be removed from end.",
                "In push operation, if new nodes are inserted at the end, then in pop operation, nodes must be removed from the beginning.",
                "A & B",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Algorithms",
            "question": "Suppose a circular queue of capacity (n – 1) elements is implemented with an array of n elements. Assume that the insertion and deletion operation are carried out using REAR and FRONT as array index variables, respectively. Initially, REAR = FRONT = 0. The conditions to detect queue full and queue empty are",
            "question_image_url": "null",
            "answer_choices": [
                "Full: (REAR+1) mod n == FRONT, empty: REAR == FRONT",
                "Full: (REAR+1) mod n == FRONT, empty: (FRONT+1) mod n == REAR",
                "Full: REAR == FRONT, empty: (REAR+1) mod n == FRONT",
                "Full: (FRONT+1) mod n == REAR, empty: REAR == FRONT"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 3,
            "booklet": "Algorithms",
            "question": "A hash table of length 10 uses open addressing with hash function h(k)=k mod 10, and linear probing. After inserting 6 values into an empty hash table, the table is as shown below. Which one of the following choices gives a possible order in which the key values could have been inserted in the table?",
            "question_image_url": "https://i.imgur.com/FtMSiwT.gif",
            "answer_choices": [
                "46, 42, 34, 52, 23, 33",
                "34, 42, 23, 52, 33, 46",
                "46, 34, 42, 23, 52, 33",
                "42, 46, 33, 23, 34, 52"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 4,
            "booklet": "Algorithms",
            "question": "A program P reads in 500 integers in the range [0..100] representing the scores of 500 students. It then prints the frequency of each score above 50. What would be the best way for P to store the frequencies?",
            "question_image_url": "null",
            "answer_choices": [
                "An array of 50 numbers",
                "An array of 100 numbers",
                "An array of 500 numbers",
                "A dynamically allocated array of 550 numbers"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 5,
            "booklet": "Algorithms",
            "question": "The keys 12, 18, 13, 2, 3, 23, 5 and 15 are inserted into an initially empty hash table of length 10 using open addressing with hash function h(k) = k mod 10 and linear probing. What is the resultant hash table?",
            "question_image_url": "https://i.imgur.com/OtM1dSz.png",
            "answer_choices": [
                "A",
                "B",
                "C",
                "D"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 6,
            "booklet": "Algorithms",
            "question": "Suppose the numbers 7, 5, 1, 8, 3, 6, 0, 9, 4, 2 are inserted in that order into an initially empty binary search tree. The binary search tree uses the usual ordering on natural numbers. What is the in-order traversal sequence of the resultant tree?",
            "question_image_url": "null",
            "answer_choices": [
                "7 5 1 0 3 2 4 6 8 9",
                "0 2 4 3 1 6 5 9 8 7",
                "0 1 2 3 4 5 6 7 8 9",
                "9 8 6 4 2 3 0 1 5 7"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Algorithms",
            "question": "In the worst case, the number of comparisons needed to search a singly linked list of length n for a given element is",
            "question_image_url": "null",
            "answer_choices": [
                "log 2 n",
                "n/2",
                "log 2 n – 1",
                "n"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Algorithms",
            "question": "What is the worst case possible height of AVL tree? (Assume base of log is 2)",
            "question_image_url": "null",
            "answer_choices": [
                "2Logn",
                "1.44log n",
                "Depends upon implementation",
                "Theta(n)"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Algorithms",
            "question": "Let A be a square matrix of size n x n. Consider the following program. What is the expected output?",
            "question_image_url": "https://i.imgur.com/fngyOLo.png",
            "answer_choices": [
                "The matrix A itself",
                "Transpose of matrix A",
                "Adding 100 to the upper diagonal elements and subtracting 100 from diagonal elements of A",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 10,
            "booklet": "Algorithms",
            "question": "If there are n integers to sort, each integer has d digits and each digit is in the set {1, 2, ..., k}, radix sort can sort the numbers in :",
            "question_image_url": "null",
            "answer_choices": [
                "O(d n k)",
                "O(d nk)",
                "O((d +n) k)",
                "O(d (n + k))"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 11,
            "booklet": "Algorithms",
            "question": "The maximum number of comparisons needed to sort 9 items using radix sort is (assume each item is 5 digit octal number):",
            "question_image_url": "null",
            "answer_choices": [
                "45",
                "72",
                "360",
                "450"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 12,
            "booklet": "Algorithms",
            "question": "Given an array where numbers are in the range from 1 to n^6, which sorting algorithm can be used to sort these numbers in linear time?",
            "question_image_url": "null",
            "answer_choices": [
                "Not possible to sort in linear time",
                "Radix Sort",
                "Counting Sort",
                "Quick Sort"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 13,
            "booklet": "Algorithms",
            "question": "If we use Radix Sort to sort n integers in the range (n^(k/2),n^k), for some k>0 which is independent of n, the time taken would be?",
            "question_image_url": "null",
            "answer_choices": [
                "Θ(n)",
                "Θ(kn)",
                "Θ(nlogn)",
                "Θ(n2)"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 14,
            "booklet": "Algorithms",
            "question": "Suppose we have a O(n) time algorithm that finds median of an unsorted array. Now consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. What will be the worst case time complexity of this modified QuickSort.",
            "question_image_url": "null",
            "answer_choices": [
                "O(n^2 Logn)",
                "O(n^2)",
                "O(n Logn Logn)",
                "O(nLogn)"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 15,
            "booklet": "Algorithms",
            "question": "Randomized quicksort is an extension of quicksort where the pivot is chosen randomly. What is the worst case complexity of sorting n numbers using randomized quicksort?",
            "question_image_url": "null",
            "answer_choices": [
                "O(n)",
                "O(n Log n)",
                "O(n2)",
                "O(n!)"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 16,
            "booklet": "Algorithms",
            "question": "Given an array where numbers are in range from 1 to n6, which sorting algorithm can be used to sort these number in linear time?",
            "question_image_url": "null",
            "answer_choices": [
                "Not possible to sort in linear time",
                "Radix Sort",
                "Counting Sort",
                "Quick Sort"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 17,
            "booklet": "Algorithms",
            "question": "You have an array of n elements. Suppose you implement quicksort by always choosing the central element of the array as the pivot. Then the tightest upper bound for the worst case performance is",
            "question_image_url": "null",
            "answer_choices": [
                "O(n2)",
                "O(nLogn)",
                "Theta(nLogn)",
                "O(n3)"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 18,
            "booklet": "Algorithms",
            "question": "Consider a list of recursive algorithms and a list of recurrence relations as shown below. Each recurrence relation corresponds to exactly one algorithm and is used to derive the time complexity of the algorithm.",
            "question_image_url": "https://i.imgur.com/H5Ws0vi.png",
            "answer_choices": [
                "P-II, Q-III, R-IV, S-I",
                "P-IV, Q-III, R-I, S-II",
                "P-III, Q-II, R-IV, S-I",
                "P-IV, Q-II, R-I, S-III"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 19,
            "booklet": "Algorithms",
            "question": "Let C1 and C2 be the number of comparisons made for A and B respectively. Then",
            "question_image_url": "https://i.imgur.com/kDo0mYb.png",
            "answer_choices": [
                "C1 > C2",
                "C1 = C2",
                "C1 < C2",
                "Cannot say anything for arbitrary n"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 20,
            "booklet": "Algorithms",
            "question": "Which one of the following in place sorting algorithms needs the minimum number of swaps?",
            "question_image_url": "null",
            "answer_choices": [
                "Quick sort",
                "Insertion sort",
                "Selection sort",
                "Heap sort"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 21,
            "booklet": "Algorithms",
            "question": "Suppose we have a O(n) time algorithm that finds median of an unsorted array. Now consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. What will be the worst case time complexity of this modified QuickSort.",
            "question_image_url": "null",
            "answer_choices": [
                "O(n^2 Logn)",
                "O(n^2)",
                "O(n Logn Logn)",
                "O(nLogn)"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 22,
            "booklet": "Algorithms",
            "question": "Which one of the following is the recurrence equation for the worst case time complexity of the Quicksort algorithm for sorting n(≥ 2) numbers? In the recurrence equations given in the options below, c is a constant.",
            "question_image_url": "null",
            "answer_choices": [
                "T(n) = 2T (n/2) + cn",
                "T(n) = T(n – 1) + T(0) + cn",
                "T(n) = 2T (n – 2) + cn",
                "T(n) = T(n/2) + cn"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 23,
            "booklet": "Algorithms",
            "question": "A machine needs a minimum of 100 sec to sort 1000 names by quick sort. The minimum time needed to sort 100 names will be approximately",
            "question_image_url": "null",
            "answer_choices": [
                "50.2 sec",
                "6.7 sec",
                "72.7 sec",
                "11.2 sec"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 24,
            "booklet": "Algorithms",
            "question": "Which of the following sorting algorithms in its typical implementation gives best performance when applied on an array which is sorted or almost sorted (maximum 1 or two elements are misplaced).",
            "question_image_url": "null",
            "answer_choices": [
                "Quick Sort",
                "Heap Sort",
                "Merge Sort",
                "Insertion Sort"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 25,
            "booklet": "Algorithms",
            "question": "Given an unsorted array. The array has this property that every element in array is at most k distance from its position in sorted array where k is a positive integer smaller than size of array. Which sorting algorithm can be easily modified for sorting this array and what is the obtainable time complexity?",
            "question_image_url": "null",
            "answer_choices": [
                "Insertion Sort with time complexity O(kn)",
                "Heap Sort with time complexity O(nLogk)",
                "Quick Sort with time complexity O(kLogk)",
                "Merge Sort with time complexity O(kLogk)"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 26,
            "booklet": "Algorithms",
            "question": "Let C1 and C2 be the number of comparisons made for the inputs (i) and (ii) respectively. Then,",
            "question_image_url": "https://i.imgur.com/6AHROcP.png",
            "answer_choices": [
                "C1 < C2",
                "C1 > C2",
                "C1 = C2",
                "We cannot say anything for arbitrary n"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 27,
            "booklet": "Algorithms",
            "question": "Which of the following is true about merge sort?",
            "question_image_url": "null",
            "answer_choices": [
                "Merge Sort works better than quick sort if data is accessed from slow sequential memory.",
                "Merge Sort is stable sort by nature",
                "Merge sort outperforms heap sort in most of the practical situations",
                "All of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 28,
            "booklet": "Algorithms",
            "question": "Consider the Quicksort algorithm. Suppose there is a procedure for finding a pivot element which splits the list into two sub-lists each of which contains at least one-fifth of the elements. Let T(n) be the number of comparisons required to sort n elements. Then",
            "question_image_url": "null",
            "answer_choices": [
                "T(n) <= 2T(n/5) + n",
                "T(n) <= T(n/5) + T(4n/5) + n",
                "T(n) <= 2T(4n/5) + n",
                "T(n) <= 2T(n/2) + n"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 29,
            "booklet": "Algorithms",
            "question": "Let P be a QuickSort Program to sort numbers in ascending order using the first element as pivot. Let t1 and t2 be the number of comparisons made by P for the inputs {1, 2, 3, 4, 5} and {4, 1, 5, 3, 2} respectively. Which one of the following holds?",
            "question_image_url": "null",
            "answer_choices": [
                "t1 = 5",
                "t1 < t2",
                "t1 > t2",
                "t1 = t2"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        }
    ],
    "javascript": [
        {
            "id": 0,
            "booklet": "Javascript",
            "question": "Which type of JavaScript language is",
            "question_image_url": "null",
            "answer_choices": [
                "Object-Oriented",
                "Object-Based",
                "Assembly-language",
                "High-level"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "Javascript",
            "question": "Which of the following is the correct output for the following JavaScript code:",
            "question_image_url": "https://i.imgur.com/eGWSzaM.png",
            "answer_choices": [
                "1",
                "Error",
                "10",
                "5"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        },
        {
            "id": 2,
            "booklet": "Javascript",
            "question": "Which one of the following also known as Conditional Expression:",
            "question_image_url": "null",
            "answer_choices": [
                "Alternative to if-else",
                "Switch statement",
                "If-then-else statement",
                "immediate if"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 3,
            "booklet": "Javascript",
            "question": "In JavaScript, what is a block of statement?",
            "question_image_url": "null",
            "answer_choices": [
                "Conditional block",
                "block that combines a number of statements into a single compound statement",
                "both conditional block and a single statement",
                "block that contains a single statement"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 4,
            "booklet": "Javascript",
            "question": "When interpreter encounters an empty statements, what it will do:",
            "question_image_url": "null",
            "answer_choices": [
                "Shows a warning",
                "Prompts to complete the statement",
                "Throws an error",
                "Ignores the statements"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Javascript",
            "question": "The 'function' and 'var' are known as:",
            "question_image_url": "null",
            "answer_choices": [
                "Keywords",
                "Data types",
                "Declaration statements",
                "Prototypes"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 6,
            "booklet": "Javascript",
            "question": "In the following given syntax of the switch statement, the Expression is compared with the labels using which one of the following operators?",
            "question_image_url": "https://i.imgur.com/i712cof.png",
            "answer_choices": [
                "===",
                "equals",
                "==",
                "equals"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 0,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Javascript",
            "question": "What will happen, if the following JavaScript code is executed?",
            "question_image_url": "https://i.imgur.com/HHFfWZi.png",
            "answer_choices": [
                "An error is displayed",
                "An exception is thrown",
                "The values of count variable are logged or stored in a particular location or storage",
                "The value of count from 0 to 9 is displayed in the console"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 8,
            "booklet": "Javascript",
            "question": "Which of the following is the correct output for the following JavaScript code:",
            "question_image_url": "https://i.imgur.com/V6V73lL.png",
            "answer_choices": [
                "9",
                "0",
                "8",
                "Undefined"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 9,
            "booklet": "Javascript",
            "question": "In the JavaScript, which one of the following is not considered as an error:",
            "question_image_url": "null",
            "answer_choices": [
                "Syntax error",
                "Missing of semicolons",
                "Division by zero",
                "Missing of Bracket"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 10,
            "booklet": "Javascript",
            "question": "Which method converts JSON data to a JavaScript object?",
            "question_image_url": "null",
            "answer_choices": [
                "JSON.fromString();",
                "JSON.parse()",
                "JSON.toObject()",
                "JSON.stringify()"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 11,
            "booklet": "Javascript",
            "question": "For the following class, how do you get the value of 42 from \"X\" ?",
            "question_image_url": "https://i.imgur.com/Mp6qtOD.png",
            "answer_choices": [
                "x.Y",
                "x.Y()",
                "x.get('Y')",
                "x.get().Y"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 12,
            "booklet": "Javascript",
            "question": "What will be logged to the console?",
            "question_image_url": "https://i.imgur.com/jlQmKQd.png",
            "answer_choices": [
                "4",
                "100",
                "101",
                "3"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 13,
            "booklet": "Javascript",
            "question": "What is the result of running this statement?",
            "question_image_url": "https://i.imgur.com/jVqopFz.png",
            "answer_choices": [
                "'float'",
                "'value'",
                "'number'",
                "'integer'"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 14,
            "booklet": "Javascript",
            "question": "How would you use the TaxCalculator to determine the amount of tax on \$50?",
            "question_image_url": "https://i.imgur.com/FB3Fxx8.png",
            "answer_choices": [
                "calculate(50);",
                "new TaxCalculator().calculate(\$50);",
                "TaxCalculator.calculate(50);",
                "new TaxCalculator().calculate(50);"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 15,
            "booklet": "Javascript",
            "question": "When would 'results shown' be logged to the console?",
            "question_image_url": "https://i.imgur.com/YUCcrpp.png",
            "answer_choices": [
                "immediately",
                "after results are received from the HTTP request",
                "after 10 second",
                "after 10,000 seconds"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 16,
            "booklet": "Javascript",
            "question": "How many prototype objects are in the chain for the following array?",
            "question_image_url": "https://i.imgur.com/8ukuLD4.png",
            "answer_choices": [
                "3",
                "2",
                "0",
                "1"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 17,
            "booklet": "Javascript",
            "question": "What will the value of y be in this code:",
            "question_image_url": "https://i.imgur.com/5um0HfN.png",
            "answer_choices": [
                "One",
                "undefined",
                "TRUE",
                "Two"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 18,
            "booklet": "Javascript",
            "question": "What will this code print?",
            "question_image_url": "https://i.imgur.com/BwFQ29z.png",
            "answer_choices": [
                "2",
                "1",
                "Nothing - this code will throw an error.",
                "undefined"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 19,
            "booklet": "Javascript",
            "question": "What would be the result in the console of running this code?",
            "question_image_url": "https://i.imgur.com/W3T2M74.png",
            "answer_choices": [
                "12345",
                "1234",
                "01234",
                "012345"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 20,
            "booklet": "Javascript",
            "question": "What does the following expression evaluate to?",
            "question_image_url": "https://i.imgur.com/gpnM91R.png",
            "answer_choices": [
                "True",
                "undefined",
                "[]",
                "False"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 21,
            "booklet": "Javascript",
            "question": "What will this code log in the console?",
            "question_image_url": "https://i.imgur.com/HN1A2cY.png",
            "answer_choices": [
                "undefined",
                "hello",
                "an object with a constructor property",
                "an error message"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 22,
            "booklet": "Javascript",
            "question": "This program has a problem. What is it?",
            "question_image_url": "https://i.imgur.com/PfHAkgA.png",
            "answer_choices": [
                "You cannot use a ternary operator in the right-hand side of an assignment.",
                "You cannot define a variable without initializing it first.",
                "The condition in the ternary statement is using the assignment operator.",
                "The code is using the deprecated var keyword."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 23,
            "booklet": "Javascript",
            "question": "Which statement creates a new function called discountPrice?",
            "question_image_url": "null",
            "answer_choices": [
                "let discountPrice = function(price) { return price * 0.85; };",
                "let discountPrice(price) { return price * 0.85; };",
                "let function = discountPrice(price) { return price * 0.85; };",
                "discountPrice = function(price) { return price * 0.85; };"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 24,
            "booklet": "Javascript",
            "question": "How do you import the lodash library making it top-level Api available as the \"_\" variable?",
            "question_image_url": "null",
            "answer_choices": [
                "import _ from 'lodash';",
                "import 'lodash' as _;",
                "import '_' from 'lodash;",
                "import lodash as _ from 'lodash';"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 25,
            "booklet": "Javascript",
            "question": "What will be logged to the console?",
            "question_image_url": "https://i.imgur.com/v2EPonj.png",
            "answer_choices": [
                "undefined",
                "function",
                "windows",
                "{desc: \"logger\"}"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 26,
            "booklet": "Javascript",
            "question": "What type of scope does the end variable have in the code shown?",
            "question_image_url": "https://i.imgur.com/Kr3WApq.png",
            "answer_choices": [
                "conditional",
                "block",
                "global",
                "function"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 27,
            "booklet": "Javascript",
            "question": "What is the value of dessert.type after executing this code?",
            "question_image_url": "https://i.imgur.com/o52pFyS.png",
            "answer_choices": [
                "pie",
                "The code will throw an error.",
                "pudding",
                "undefined "
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 28,
            "booklet": "Javascript",
            "question": "When would the final statement in the code shown be logged to the console?",
            "question_image_url": "https://i.imgur.com/x988qRK.png",
            "answer_choices": [
                "after 10 second",
                "after results are received from the HTTP request",
                "after 10000 seconds",
                "immediately"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 29,
            "booklet": "Javascript",
            "question": "What is the result of running the statement shown?",
            "question_image_url": "https://i.imgur.com/Vqr87Ey.png",
            "answer_choices": [
                "4",
                "10",
                "6",
                "5"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ],
    "python": [
        {
            "id": 0,
            "booklet": "Python",
            "question": "Which of the following statements is correct regarding the object-oriented programming concept in Python?",
            "question_image_url": "null",
            "answer_choices": [
                "Classes are real-world entities while objects are not real",
                "Objects are real-world entities while classes are not real",
                "Both objects and classes are real-world entities",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "Python",
            "question": "Which of the following declarations is incorrect?",
            "question_image_url": "null",
            "answer_choices": [
                "_x = 2",
                "__x = 3",
                "__xyz__ = 5",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 2,
            "booklet": "Python",
            "question": "Why does the name of local variables start with an underscore discouraged?",
            "question_image_url": "null",
            "answer_choices": [
                "To identify the variable",
                "It confuses the interpreter",
                "It indicates a private variable of a class",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "Python",
            "question": "Which of the following declarations is incorrect in python language?",
            "question_image_url": "null",
            "answer_choices": [
                "xyzp = 5,000,000",
                "x y z p = 5000 6000 7000 8000",
                "x,y,z,p = 5000, 6000, 7000, 8000",
                "x_y_z_p = 5,000,000"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 0,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "Python",
            "question": "Which of the following operators is the correct option for power(ab)?",
            "question_image_url": "null",
            "answer_choices": [
                "a ^ b",
                "a**b",
                "a ^ ^ b",
                "a ^ * b"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "Python",
            "question": "Which of the following precedence order is correct in Python?",
            "question_image_url": "null",
            "answer_choices": [
                "Parentheses, Exponential, Multiplication, Division, Addition, Subtraction",
                "Multiplication, Division, Addition, Subtraction, Parentheses, Exponential",
                "Division, Multiplication, Addition, Subtraction, Parentheses, Exponential",
                "Exponential, Parentheses, Multiplication, Division, Addition, Subtraction"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "Python",
            "question": "Which of the following is correctly evaluated for this function pow(x,y,z)?",
            "question_image_url": "null",
            "answer_choices": [
                "(x**y) / z",
                "(x / y) * z",
                "(x / y) / z",
                "(x**y) % z"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "Python",
            "question": "What will be the output of this code?",
            "question_image_url": "https://i.imgur.com/nNO3F7j.png",
            "answer_choices": [
                "error",
                "2 1",
                "0 3 1",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Python",
            "question": "Which one of the following syntaxes is the correct syntax to read from a simple text file stored in 'd:\\java.txt'?",
            "question_image_url": "null",
            "answer_choices": [
                "Infile = open.file('d:\\java.txt','r')",
                "Infile = open('d:\\java.txt'','r')",
                "Infile = open(file='d:\\java.txt', 'r')",
                "Infile = open('d:\\java.txt', 'r')"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "Python",
            "question": "What will be the output of this code?",
            "question_image_url": "https://i.imgur.com/8AxZvH1.png",
            "answer_choices": [
                "Ann Bob",
                "Ann Nick",
                "Wick Bob",
                "Wick Nick"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 2,
            "duration_in_minutes": 4.0
        }
    ],
    "nodejs": [
        {
            "id": 0,
            "booklet": "Node.js",
            "question": "Which of the following is used to test if two nodes are equal?",
            "question_image_url": "null",
            "answer_choices": [
                "==",
                "equal()",
                "isEqualNode()",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 1,
            "booklet": "Node.js",
            "question": "Which of the following tool is used to automate the various tasks of the Node.js application?",
            "question_image_url": "null",
            "answer_choices": [
                "Express.js",
                "GruntJS",
                "NPM",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Node.js",
            "question": "Which of the following areas, Node.js, is not advised to be used?",
            "question_image_url": "null",
            "answer_choices": [
                "Single Page Applications",
                "JSON APIs based Applications",
                "CPU intensive applications",
                "Data-Intensive Real-time Applications (DIRT)"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 3,
            "booklet": "Node.js",
            "question": "Which of the following route parameter formats are valid?",
            "question_image_url": "null",
            "answer_choices": [
                "/books/!:from-:to",
                "/flights/:from-:to",
                "/users/:userId/books/:bookId",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 4,
            "booklet": "Node.js",
            "question": "Which of the following method is used to compare the placement of two nodes in the DOM hierarchy (document)?",
            "question_image_url": "null",
            "answer_choices": [
                "cloneNode()",
                "compareDocumentPosition()",
                "getFeature()",
                "getUserData()"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Node.js",
            "question": "Which of the following keyword is used to make properties and methods available outside the module file?",
            "question_image_url": "null",
            "answer_choices": [
                "import",
                "module",
                "exports",
                "require"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 6,
            "booklet": "Node.js",
            "question": "Which of the following Node.js object property is used to return the node immediately before a node?",
            "question_image_url": "null",
            "answer_choices": [
                "localName",
                "index",
                "previousSibling",
                "textContent"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Node.js",
            "question": "Which of the following is a GUI-based debugging tool for Node.js?",
            "question_image_url": "null",
            "answer_choices": [
                "Core node debugger",
                "Console",
                "REPL",
                "Node Inspector"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Node.js",
            "question": "What is the use of underscore variable in REPL session in Node.js?",
            "question_image_url": "null",
            "answer_choices": [
                "It is used to store the result.",
                "It is used to get the last command used.",
                "It is used to get the last result.",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Node.js",
            "question": "Which of the following is the correct syntax to initiate the Node.js File?",
            "question_image_url": "null",
            "answer_choices": [
                "filename.js",
                "javascript filename.js",
                "node filename.js",
                "node filename"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 10,
            "booklet": "Node.js",
            "question": "Which of the following statement is valid to use a Node module http in a Node based application?",
            "question_image_url": "null",
            "answer_choices": [
                "var http = require(\"http\");",
                "var http = import(\"http\");",
                "package http;",
                "import http;"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 11,
            "booklet": "Node.js",
            "question": "Which of the following API creates a client?",
            "question_image_url": "null",
            "answer_choices": [
                "net.createServer([options][, connectionListener])",
                "net.connect(options[, connectionListener])",
                "net.createConnection(port[, host][, connectListener])",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 12,
            "booklet": "Node.js",
            "question": "Which function is used to include the modules in Node.js",
            "question_image_url": "null",
            "answer_choices": [
                "include();",
                "attach();",
                "require();",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 13,
            "booklet": "Node.js",
            "question": "How Node.js modules are available externally",
            "question_image_url": "null",
            "answer_choices": [
                "module.exports",
                "module.spread",
                "module.expose",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 14,
            "booklet": "Node.js",
            "question": "Which statement is valid in using a Node module fs in a Node based application?",
            "question_image_url": "null",
            "answer_choices": [
                "import fs",
                "package fs",
                "var fs = require(\"fs\")",
                "var fs = import(\"fs\")"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 15,
            "booklet": "Node.js",
            "question": "Which of the following route parameter formats are valid?",
            "question_image_url": "null",
            "answer_choices": [
                "/books/!:from-:to",
                "/flights/:from-:to",
                "/users/:userId/books/:bookId",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 16,
            "booklet": "Node.js",
            "question": "The Express method that allows us to open a server on port 3000 is",
            "question_image_url": "null",
            "answer_choices": [
                "app.server({ port : 3000 })",
                "app.start({ port : 3000 })",
                "app.on(3000)",
                "app.listen(3000)"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 17,
            "booklet": "Node.js",
            "question": "The reason Node.js uses event callbacks is",
            "question_image_url": "null",
            "answer_choices": [
                "not to have to wait for blocking I/O",
                "its creator didn't know how to use async/await",
                "not to perform any I/O tasks from Node.js",
                "to make it possible to work with promises"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 18,
            "booklet": "Node.js",
            "question": "From the request object we can obtain:",
            "question_image_url": "null",
            "answer_choices": [
                "params, data, method",
                "params, query, variables",
                "params, query, body",
                "params, actions, body"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 19,
            "booklet": "Node.js",
            "question": "The parameters in order that a middleware function receives are:",
            "question_image_url": "null",
            "answer_choices": [
                "next, res, req",
                "req, res, next",
                "es, req, next",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 20,
            "booklet": "Node.js",
            "question": "Node.js runs on :",
            "question_image_url": "null",
            "answer_choices": [
                "Browser",
                "Client",
                "Server",
                "All of above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 21,
            "booklet": "Node.js",
            "question": "What is the advantage of using node.js?",
            "question_image_url": "null",
            "answer_choices": [
                "Great concurrency",
                "Generally fast",
                "It provides an easy way to build scalable network programs",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 22,
            "booklet": "Node.js",
            "question": "This is a software service that allows 2 applications to talk to each other.",
            "question_image_url": "null",
            "answer_choices": [
                "SOAP",
                "REST",
                "API",
                "Internet"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 23,
            "booklet": "Node.js",
            "question": "Which of the following method of fs module is used to get file information?",
            "question_image_url": "null",
            "answer_choices": [
                "fs.open(path, flags[, mode], callback)",
                "fs.stat(path, callback)",
                "fs.readFile(path, flags[, mode], callback)",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 24,
            "booklet": "Node.js",
            "question": "What does the fs module stand for?",
            "question_image_url": "null",
            "answer_choices": [
                "File Service",
                "File System",
                "File Store",
                "File Sharing"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 25,
            "booklet": "Node.js",
            "question": "Which of the following method of fs module is used to truncate a file?",
            "question_image_url": "null",
            "answer_choices": [
                "fs.delete(fd, len, callback)",
                "fs.remove(fd, len, callback)",
                "fs.ftruncate(fd, len, callback)",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 26,
            "booklet": "Node.js",
            "question": "Which of the following template engines can be used with Node.js?",
            "question_image_url": "null",
            "answer_choices": [
                "Jade",
                "Vash",
                "Handlebars",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id":27 ,
            "booklet": "Node.js",
            "question": "Which of the following code print the platform of operating system?",
            "question_image_url": "null",
            "answer_choices": [
                "console.log('platform : ' + os.platform);",
                "console.log('platform : ' + os.platform());",
                "console.log('platform : ' + os.getPlatform());",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 28,
            "booklet": "Node.js",
            "question": "Which of the following method is used to return the current working directory of the process?",
            "question_image_url": "null",
            "answer_choices": [
                "cwd();",
                "cwd();",
                "pwd();",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id":29 ,
            "booklet": "Node.js",
            "question": "Which of the following tool is used to automate the various tasks of the Node.js application?",
            "question_image_url": "null",
            "answer_choices": [
                "Express.js",
                "GruntJS",
                "NPM",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ],
    "react": [
        {
            "id": 0,
            "booklet": "React",
            "question": "Which of the following are the advantages of React.js?",
            "question_image_url": "null",
            "answer_choices": [
                "React.js can increase the application's performance with Virtual DOM.",
                "React.js is easy to integrate with other frameworks such as Angular, BackboneJS since it is only a view library.",
                "React.js can render both on client and server side.",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "React",
            "question": "Which of the following command is used to install create-react-app?",
            "question_image_url": "null",
            "answer_choices": [
                "npm install -g create-react-app",
                "npm install create-react-app",
                "npm install -f create-react-app",
                "install -g create-react-app"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 2,
            "booklet": "React",
            "question": "What of the following is used in React.js to increase performance?",
            "question_image_url": "null",
            "answer_choices": [
                "Original DOM",
                "Virtual DOM",
                "Both A and B.",
                "None of the above."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "React",
            "question": "Which of the following acts as the input of a class-based component?",
            "question_image_url": "null",
            "answer_choices": [
                "Class",
                "Factory",
                "Render",
                "Props"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "React",
            "question": "Which of the following keyword is used to create a class inheritance?",
            "question_image_url": "null",
            "answer_choices": [
                "Create",
                "Inherits",
                "Extends",
                "This"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "React",
            "question": "What would be the output of the following example?",
            "question_image_url": "https://i.imgur.com/5AdHJ3M.png",
            "answer_choices": [
                "Hello World 1",
                "Hello World 2",
                "Hello World 1 Hello World 2",
                "Error"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "React",
            "question": "What is the default port where webpack-server runs?",
            "question_image_url": "null",
            "answer_choices": [
                "3000",
                "8080",
                "3030",
                "6060"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "React",
            "question": "What is the declarative way to render a dynamic list of components based on values in an array?",
            "question_image_url": "null",
            "answer_choices": [
                "Using the reduce array method",
                "Using the <Each /> component",
                "Using the Array.map() method",
                "With a for/while loop"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "React",
            "question": "What are the two ways to handle data in React?",
            "question_image_url": "null",
            "answer_choices": [
                "State & Props",
                "Services & Components",
                "State & Services",
                "State & Component"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "React",
            "question": "Which of the following is used to pass data to a component from outside in React.js?",
            "question_image_url": "null",
            "answer_choices": [
                "SetState",
                "Render with arguments",
                "Props",
                "PropTypes"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 10,
            "booklet": "React",
            "question": "Consider the below statement – Which method will be used at the place of blank space (____)?",
            "question_image_url": "https://i.imgur.com/6Z0N0vn.png",
            "answer_choices": [
                "renderDOM()",
                "renderComponent()",
                "render()",
                "renderer()"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 11,
            "booklet": "React",
            "question": "If you created a component called Dish and rendered it to the DOM, what type of element would be rendered?",
            "question_image_url": "https://i.imgur.com/8yxFiS3.png",
            "answer_choices": [
                "div",
                "section",
                "component",
                "h1"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 12,
            "booklet": "React",
            "question": "Which attribute do you use to replace innerHTML in the browser DOM?",
            "question_image_url": "null",
            "answer_choices": [
                "injectHTML",
                "dangerouslySetInnerHTML",
                "weirdSetInnerHTML",
                "strangeHTML"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 13,
            "booklet": "React",
            "question": "Which Hook could be used to update the document's title?",
            "question_image_url": "null",
            "answer_choices": [
                "useEffect(function updateTitle() { document.title = name + ' ' + lastname; });",
                "useEffect(() => { title = name + ' ' + lastname; });",
                "useEffect(function updateTitle() { name + ' ' + lastname; });",
                "useEffect(function updateTitle() { title = name + ' ' + lastname; });"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 14,
            "booklet": "React",
            "question": "What does this React element look like given the following function? (Alternative: Given the following code, what does this React element look like?)",
            "question_image_url": "https://i.imgur.com/L12WXI7.png",
            "answer_choices": [
                "<h1 props={null}>What's happening?</h1>",
                "<h1>What's happening?</h1>",
                "<h1 id=\"component\">What's happening?</h1>",
                " <h1 id=\"element\">What's happening?</h1>"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 15,
            "booklet": "React",
            "question": "Consider the following component. What is the default color for the star?",
            "question_image_url": "https://i.imgur.com/XhLXIbv.png",
            "answer_choices": [
                "black",
                "red",
                "grey",
                "white"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 16,
            "booklet": "React",
            "question": "Consider the following code from React Router. What do you call :id in the path prop?",
            "question_image_url": "https://i.imgur.com/0pnjcr1.png",
            "answer_choices": [
                "This is a route modal",
                "This is a route parameter",
                "This is a route splitter",
                "This is a route link"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 17,
            "booklet": "React",
            "question": "Why might you use useReducer over useState in a React component?",
            "question_image_url": "null",
            "answer_choices": [
                "when you want to replace Redux",
                "when you need to manage more complex state in an app",
                "when you want to improve performance",
                "when you want to break your production app"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 18,
            "booklet": "React",
            "question": "Which library does the fetch() function come from?",
            "question_image_url": "null",
            "answer_choices": [
                "FetchJS",
                "ReactDOM",
                "No library. fetch() is supported by most browsers.",
                "React"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 19,
            "booklet": "React",
            "question": "What is the name of the tool used to take JSX and turn it into createElement calls?",
            "question_image_url": "null",
            "answer_choices": [
                "JSX Editor",
                "ReactDOM",
                "Browser Buddy",
                "Babel"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 20,
            "booklet": "React",
            "question": "What do you need to change about this code to get it to run?",
            "question_image_url": "https://i.imgur.com/NbRTmGR.png",
            "answer_choices": [
                "Add quotes around the return value",
                "Remove this",
                "Remove the render method",
                "Capitalize clock"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 21,
            "booklet": "React",
            "question": "You have written the following code but nothing is rendering. How do you fix this problem?",
            "question_image_url": "https://i.imgur.com/uLJDIRI.png",
            "answer_choices": [
                "Add a render function",
                "Change the curly braces to parentheses or add a return statement before the h1 tag.",
                "Move the h1 to another component.",
                "Surround the h1 in a div."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 22,
            "booklet": "React",
            "question": "If you wanted to display the count state value in the component, what do you need to add to the curly braces in the h1?",
            "question_image_url": "https://i.imgur.com/LU5MPE3.png",
            "answer_choices": [
                "this.state.count",
                "count",
                "state",
                "state.count"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 23,
            "booklet": "React",
            "question": "What is [e.target.id] called in the following code snippet?",
            "question_image_url": "https://i.imgur.com/b9sWtaK.png",
            "answer_choices": [
                "a computed property name",
                "a set value",
                "a dynamic key",
                "a JSX code string"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 24,
            "booklet": "React",
            "question": "You have created a new method in a class component called handleClick, but it is not working. Which code is missing?",
            "question_image_url": "https://i.imgur.com/wQKG0jF.png",
            "answer_choices": [
                "this.handleClick.bind(this);",
                "props.bind(handleClick);",
                "this.handleClick.bind();",
                "this.handleClick = this.handleClick.bind(this);"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 25,
            "booklet": "React",
            "question": "To get the first item from the array (\"cooking\") using array destructuring, how do you adjust this line?",
            "question_image_url": "https://i.imgur.com/9XslHRL.png",
            "answer_choices": [
                " const first = [\"cooking\", \"art\", \"history\"]",
                "const [] = [\"cooking\", \"art\", \"history\"]",
                " const [, first][\"cooking\", \"art\", \"history\"]",
                "const [first] = [\"cooking\", \"art\", \"history\"]"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 26,
            "booklet": "React",
            "question": "",
            "question_image_url": "https://i.imgur.com/M3CcThH.png",
            "answer_choices": [
                "React Hooks",
                "stateful components",
                "math",
                "class components"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 27,
            "booklet": "React",
            "question": "How do you destructure the properties that are sent to the Dish component?",
            "question_image_url": "https://i.imgur.com/7wNZTk4.png",
            "answer_choices": [
                "function Dish([name, cookingTime]) { return <h1>{name} {cookingTime}</h1>; }",
                " function Dish({name, cookingTime}) { return <h1>{name} {cookingTime}</h1>; }",
                "function Dish(props) { return <h1>{name} {cookingTime}</h1>; }",
                "function Dish(...props) { return <h1>{name} {cookingTime}</h1>; }"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 28,
            "booklet": "React",
            "question": "What value of button will allow you to pass the name of the person to be hugged?",
            "question_image_url": "https://i.imgur.com/mLz6XFQ.png",
            "answer_choices": [
                "<button onClick={(name) => this.hug(name)>Hug Button</button>",
                "<button onClick={this.hug(e, name)}>Hug Button</button>",
                "<button onClick={(e) => hug(e, name)}>Hug Button</button>",
                " <button onClick={(e) => this.hug(name, e)}>Hug Button</button>"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 29,
            "booklet": "React",
            "question": "You have added a style property to the h1 but there is an unexpected token error when it runs. How do you fix this?",
            "question_image_url": "https://i.imgur.com/G2Uo9yk.png",
            "answer_choices": [
                "const element = <h1 style=\"backgroundColor: \"blue\"\"}>Hi</h1>; ",
                "const element = <h1 style={{backgroundColor: \"blue\"}}>Hi</h1>; ",
                " const element = <h1 style={blue}>Hi</h1>;",
                "const element = <h1 style=\"blue\">Hi</h1>;"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ],
    "api": [
        {
            "id": 0,
            "booklet": "API",
            "question": "Web API supports which of the following protocol?",
            "question_image_url": "null",
            "answer_choices": [
                "TCP",
                "HTTP",
                "Soap",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "API",
            "question": "Web API supports which of the following request/response data formats by default?",
            "question_image_url": "null",
            "answer_choices": [
                "JSON",
                "XML",
                "BSON",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 2,
            "booklet": "API",
            "question": "Web API uses which of the following open-source library for JSON serialization?",
            "question_image_url": "null",
            "answer_choices": [
                "Json.NET",
                "JsonFormatter.NET",
                "GetJson.NET",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "API",
            "question": "Which of the following types of routing is supported in Web API?",
            "question_image_url": "null",
            "answer_choices": [
                "Attribute Routing",
                "Convention-based Routing",
                "Both of the above",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "API",
            "question": "Which of the following types are valid response types of Web API action method?",
            "question_image_url": "null",
            "answer_choices": [
                "HttpResponseMessage",
                "IHttpActionResult",
                "Custom Types",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "API",
            "question": "Which of the following action method names are valid to handle HTTP GET request?",
            "question_image_url": "null",
            "answer_choices": [
                "Get()",
                "GetAllStudents()",
                "GetStudent()",
                "All of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "API",
            "question": "Web API sends which of the following status code on successful execution?",
            "question_image_url": "null",
            "answer_choices": [
                "200",
                "201",
                "500",
                "404"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "API",
            "question": "Which of the following is a formatter class for JSON?",
            "question_image_url": "null",
            "answer_choices": [
                "JsonMediaTypeFormatter",
                "JsonMediaFormatter",
                "Json.Net",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "API",
            "question": "Which of the following property returns all the formatters in Web API?",
            "question_image_url": "null",
            "answer_choices": [
                "GlobalConfiguration.Configuration.Formatters",
                "Configuration.Formatters",
                "GlobalConfiguration.Configuration.JsonFormatter",
                "GlobalConfiguration.Formatters"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "API",
            "question": "Web API Filters are used:",
            "question_image_url": "null",
            "answer_choices": [
                "to add an extra logic before and after the action method executes",
                "to provide authorization and authentication",
                "to Launch Web API",
                "to host Web API"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        }
    ],
    "databases": [
        {
            "id": 0,
            "booklet": "Databases",
            "question": "Which of the following is generally used for performing tasks like creating the structure of the relations, deleting relation?",
            "question_image_url": "null",
            "answer_choices": [
                "DML(Data Manipulation Language)",
                "Query",
                "Relational Schema",
                "DDL(Data Definition Language)"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "Databases",
            "question": "Which one of the following given statements possibly contains the error?",
            "question_image_url": "null",
            "answer_choices": [
                "select * from emp where empid = 10003;",
                "select empid from emp where empid = 10006;",
                "select empid from emp;",
                "select empid where empid = 1009 and Lastname = 'GELLER';"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Databases",
            "question": "What do you mean by one to many relationships?",
            "question_image_url": "null",
            "answer_choices": [
                "One class may have many teachers",
                "One teacher can have many classes",
                "Many classes may have many teachers",
                "Many teachers may have many classes"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "Databases",
            "question": "Which of the following can be considered as the maximum size that is supported by FAT?",
            "question_image_url": "null",
            "answer_choices": [
                "8GB",
                "4GB",
                "4TB",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "Databases",
            "question": "The term 'NTFS' refers to which one of the following?",
            "question_image_url": "null",
            "answer_choices": [
                "New Technology File System",
                "New Tree File System",
                "New Table type File System",
                "Both A and C"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 5,
            "booklet": "Databases",
            "question": "A huge collection of the information or data accumulated form several different sources is known as",
            "question_image_url": "null",
            "answer_choices": [
                "Data Management",
                "Data Mining",
                "Data Warehouse",
                "Both B and C"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "Databases",
            "question": "Which one of the following commands is used to modify a column inside a table?",
            "question_image_url": "null",
            "answer_choices": [
                "Edit",
                "Update",
                "Alter",
                "Modify"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 7,
            "booklet": "Databases",
            "question": "Which one of the following keyword is used to find out the number of values in a column?",
            "question_image_url": "null",
            "answer_choices": [
                "TOTAL",
                "COUNT",
                "SUM",
                "ADD"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 8,
            "booklet": "Databases",
            "question": "Which of the following keys is generally used to represents the relationships between the tables?",
            "question_image_url": "null",
            "answer_choices": [
                "Primary key",
                "Foreign key",
                "Secondary key",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 9,
            "booklet": "Databases",
            "question": "The term 'ODBC' stands for",
            "question_image_url": "null",
            "answer_choices": [
                "Oral database connectivity",
                "Oracle database connectivity",
                "Open database connectivity",
                "Object database connectivity"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 10,
            "booklet": "Databases",
            "question": "You are importing data as JSON into a new table. You run CREATE TABLE json_data ( city JSON ); and insert rows into this table. What is the correct syntax to see the list of cities?",
            "question_image_url": "null",
            "answer_choices": [
                "SELECT city FROM json_data;",
                "SELECT city->>'\$.name' city FROM json_data; ",
                "SELECT city.name city FROM json_data; ",
                "SELECT city->'\$.name' city FROM json_data; <= this is valid too but the results will be enclosed with quotation marks"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 11,
            "booklet": "Databases",
            "question": "In data migration, there is often a need to delete duplicate rows as part of data cleanup. Which statement works best?",
            "question_image_url": "null",
            "answer_choices": [
                "DELETE DUPS",
                "DELETE DISTINCT",
                "DELETE JOIN",
                "DELETE WITH"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 12,
            "booklet": "Databases",
            "question": "Which is the correct syntax of an extended insert statement?",
            "question_image_url": "null",
            "answer_choices": [
                "insert into cars (make, model, year) values ('Ford', 'Mustang', 2002) ('Mercedes', 'C', 2003)",
                "insert into cars (make, model, year) values ('Ford', 'Mustang', 2002) values ('Mercedes', 'C', 2003)",
                "insert into cars (make, model, year) extended ('Ford', 'Mustang', 2002), ('Mercedes', 'C', 2003)",
                "insert into cars (make, model, year) values ('Ford', 'Mustang', 2002), ('Mercedes', 'C', 2003)"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 13,
            "booklet": "Databases",
            "question": "Which command will return a list of triggers in the current database?",
            "question_image_url": "null",
            "answer_choices": [
                "DISPLAY TRIGGERS;",
                "SHOW TRIGGERS;",
                "SELECT ALL TRIGGERS;",
                "SELECT * FROM information_schema.triggers;"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 14,
            "booklet": "Databases",
            "question": "You are working with very large tables in your database. Which SQL clause do you use to prevent exceedingly large query results?",
            "question_image_url": "null",
            "answer_choices": [
                "UNIQUE",
                "LIMIT",
                "DISTINCT",
                "CONSTRAINT"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 15,
            "booklet": "Databases",
            "question": "If you were building a table schema to store student grades as a letter (A, B, C, D, or F) which column type would be the best choice?",
            "question_image_url": "null",
            "answer_choices": [
                "ENUM",
                "OTEXT",
                "VARCHAR",
                "LONGTEXT"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 16,
            "booklet": "Databases",
            "question": "You need to export the data in the customers table into a CSV file, with columns headers in the first row. Which clause do you add to your MySQL command?",
            "question_image_url": "null",
            "answer_choices": [
                "JOIN",
                "WITH HEADERS",
                "UNION",
                "WITH COLUMNS"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 17,
            "booklet": "Databases",
            "question": "In MySQL, queries are always followed by what character?",
            "question_image_url": "null",
            "answer_choices": [
                "line break",
                "colon",
                "semicolon",
                "period"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 18,
            "booklet": "Databases",
            "question": "Which MySQL command modifies data records in a table?",
            "question_image_url": "null",
            "answer_choices": [
                "UPDATE",
                "MODIFY",
                "CHANGE",
                "ALTER"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 19,
            "booklet": "Databases",
            "question": "Which choice is NOT a statement you would use to filter data?",
            "question_image_url": "null",
            "answer_choices": [
                "GROUP_BY",
                "WHERE",
                "LIMIT",
                "LIKE"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 20,
            "booklet": "Databases",
            "question": "What is the default port for MySQL Server?",
            "question_image_url": "null",
            "answer_choices": [
                "25",
                "990",
                "0",
                "3306"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 21,
            "booklet": "Databases",
            "question": "Management has requested that you build an employee database. You need to include each employee's current position and salary, as well as all prior positions and salaries with the company. You decide to use a one-to-many structure: an employee table with the main information such as name and address, and an employment table with position and salary history. You can use the employeeID field to connect them. What is employment.employeeID an example of?",
            "question_image_url": "null",
            "answer_choices": [
                "primary key;",
                "secondary key;",
                "foreign key;",
                "alternate key;"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 22,
            "booklet": "Databases",
            "question": "What is one reason to introduce data redundancy into a normalized database design?",
            "question_image_url": "null",
            "answer_choices": [
                "to reduce corruption in data ",
                "to reduce storage space ",
                "to make the system faster",
                "to prevent data anomalies"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 23,
            "booklet": "Databases",
            "question": "How can you remove a record using MySQL?",
            "question_image_url": "null",
            "answer_choices": [
                "DELETE",
                "DELETE FROM",
                "REMOVE",
                "REMOVE FROM"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 24,
            "booklet": "Databases",
            "question": "In SELECT * FROM clients; what does clients represent?",
            "question_image_url": "null",
            "answer_choices": [
                "a SQL query",
                "a SQL statement",
                "a database",
                "a table"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 25,
            "booklet": "Databases",
            "question": "You are loading data into a table. Which command can you use to make sure that all data is inserted and duplicated rows are discarded?",
            "question_image_url": "null",
            "answer_choices": [
                "INSERT IGNORE",
                "INSERT UNIQUE",
                "INSERT INTO",
                "INSERT DISTINCT"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 26,
            "booklet": "Databases",
            "question": "Which query would NOT be used to administer a MySQL server?",
            "question_image_url": "null",
            "answer_choices": [
                "USE db",
                "SELECT column FROM tbl ",
                "SHOW COLUMNS FROM tbl",
                "SHOW TABLES"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 27,
            "booklet": "Databases",
            "question": "After installing MySQL, it may be necessary to initialize the __ which may be done automatically with some MySQL installation methods.",
            "question_image_url": "null",
            "answer_choices": [
                "storage engine",
                "user accounts",
                "grant tables",
                "data directory"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 28,
            "booklet": "Databases",
            "question": "You need to run a complex query with recursive subqueries but without creating a stored procedure or a function. Which command or clause do you use?",
            "question_image_url": "null",
            "answer_choices": [
                "collate",
                "union",
                "full join",
                "with"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 29,
            "booklet": "Databases",
            "question": " MySQL server can operate in different SQL modes, depending on the value of the sql_mode system variable. Which mode changes syntax and behavior to conform more closely to standard SQL?",
            "question_image_url": "null",
            "answer_choices": [
                "TRADITIONAL",
                "ANSI",
                "MSSQL",
                "STRICT"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ],
    "sales": [
        {
            "id": 0,
            "booklet": "Sales",
            "question": "Present new idea to decision-makers is ____skills of sales executive",
            "question_image_url": "null",
            "answer_choices": [
                "Communication",
                "Influence and persuasion",
                "Negotiation",
                "Prioritizing and goal setting."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 1,
            "booklet": "Sales",
            "question": "Communicate the high value of services over the competition is a part of",
            "question_image_url": "null",
            "answer_choices": [
                "Communication",
                "Influence and persuasion",
                "Negotiation",
                "Prioritizing and goal setting."
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Sales",
            "question": "A key factor in the retail purchase of jewellery is the customer‟s confidence in the____",
            "question_image_url": "null",
            "answer_choices": [
                "store",
                "durability",
                "Availability",
                "sales associate"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 3,
            "booklet": "Sales",
            "question": "Budgeting is closely connected with____",
            "question_image_url": "null",
            "answer_choices": [
                "Planning",
                "Implementation",
                "control",
                "Directing"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 4,
            "booklet": "Sales",
            "question": "Inbound logistics is",
            "question_image_url": "null",
            "answer_choices": [
                "a flow material from manufacturer to distributor",
                "a flow of material from distributor to retailer",
                "a flow of goods from retailer to consumer",
                "a flow of raw materials from suppliers to manufacturers"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Sales",
            "question": "____ plays a dominant role in SCM",
            "question_image_url": "null",
            "answer_choices": [
                "Production",
                "Product development",
                "Logistics",
                "Competitors"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 2.0
        },
        {
            "id": 6,
            "booklet": "Sales",
            "question": "____ marketing is responsible for ensuring that product in distributor and reseller locations gets sold out.",
            "question_image_url": "null",
            "answer_choices": [
                "Channel",
                "Tele",
                "Online",
                "POS"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Sales",
            "question": "A channel marketing manager is typically responsible for the ____ function.",
            "question_image_url": "null",
            "answer_choices": [
                "sell in",
                "Sell-through",
                "sales budgeting",
                "sales control"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Sales",
            "question": "____ supply chains have an agenda to produce to optimize capacity and labour.",
            "question_image_url": "null",
            "answer_choices": [
                "Self-monitored supply chains",
                "Outsourced supply chains",
                "Production oriented supply chains",
                "financial oriented supply chain"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Sales",
            "question": "Number of FTE terminations divided by the total number of FTE at the beginning of the performance period is",
            "question_image_url": "null",
            "answer_choices": [
                "Revenue per full-time equivalent",
                "Compensation cost as a percentage of revenue",
                "Turnover percentage",
                "Operating profit percentage"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        }
    ],
    "product_marketing": [
        {
            "id": 0,
            "booklet": "Product Marketing",
            "question": "What is the general term for products that have a physical form (i.e. you can touch them)?",
            "question_image_url": "null",
            "answer_choices": [
                "services",
                "goods",
                "components",
                "raw materials"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 1,
            "booklet": "Product Marketing",
            "question": "What is the core product or benefit of a winter coat?",
            "question_image_url": "null",
            "answer_choices": [
                "the material it is made of",
                "the employment its manufacture provides",
                "the warmth it provides",
                "the brand"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Product Marketing",
            "question": "Where does after-sales service fit into the total product offering?",
            "question_image_url": "null",
            "answer_choices": [
                "core product",
                "core benefit",
                "basic product",
                "augmented product"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 3,
            "booklet": "Product Marketing",
            "question": "Where does brand image fit into the total product offering?",
            "question_image_url": "null",
            "answer_choices": [
                "perceived product",
                "augmented product",
                "basic product",
                "core product"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 4,
            "booklet": "Product Marketing",
            "question": "Which of the following could be classed as a durable good?",
            "question_image_url": "null",
            "answer_choices": [
                "washing machine",
                "T-shirt",
                "consultancy",
                "shampoo"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Product Marketing",
            "question": "What is a staple product?",
            "question_image_url": "null",
            "answer_choices": [
                "office stationery",
                "something people always like to have and so purchase regularly (e.g. soap)",
                "something that is essential for another product to work (e.g. a keyboard for a PC)",
                "a basic, unsophisticated product (e.g. paper clips)"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 6,
            "booklet": "Product Marketing",
            "question": "Mary is getting married and she wants everything on the day to be perfect, especially the dress. What kind of product is a wedding dress?",
            "question_image_url": "null",
            "answer_choices": [
                "speciality",
                "convenience",
                "white goods",
                "accessory"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Product Marketing",
            "question": "Coca-Cola has an easily identified logo (its name written in a flowing script) and is usually packaged in a red can or its famously curvy bottle. What do these elements combine to form?",
            "question_image_url": "null",
            "answer_choices": [
                "brand image",
                "brand identity",
                "brand values",
                "brand equity"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Product Marketing",
            "question": "What is the final stage of the new product development process?",
            "question_image_url": "null",
            "answer_choices": [
                "business analysis",
                "test marketing",
                "marketing planning",
                "product launch"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Product Marketing",
            "question": "Visto is a much loved British drink, widely available in the UK but nowhere else. Lately sales have been falling and the big supermarkets have cut back on their orders. Which of the following is most likely to be a successful extension strategy for this well-established drink?",
            "question_image_url": "null",
            "answer_choices": [
                "increasing the price",
                "exporting it to other countries",
                "offering the supermarkets special deals as incentives to stock it",
                "advertising it on the Internet"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        }
    ],
    "business_development": [
        {
            "id": 0,
            "booklet": "Business Development",
            "question": "Which Sales Stage should a salesperson concentrate on first?",
            "question_image_url": "null",
            "answer_choices": [
                "Negotiate",
                "Qualify",
                "Prospect",
                "Fund"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 1,
            "booklet": "Business Development",
            "question": "Which is NOT part of a vertical marketing system?",
            "question_image_url": "null",
            "answer_choices": [
                "Retailer",
                "Wholesaler",
                "Distributor",
                "Customer"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Business Development",
            "question": "What is a selling point when talking to a customer in B2B sales?",
            "question_image_url": "null",
            "answer_choices": [
                "It is when a customer purchases a product.",
                "It is a unique characteristic that differentiates a product.",
                "It is when your product has the same characteristics as a competitor's.",
                "It is when you try to sell everything in the catalog."
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 3,
            "booklet": "Business Development",
            "question": "What is true about large companies when it comes to internet marketing?",
            "question_image_url": "null",
            "answer_choices": [
                "Internet marketing requires a large budget",
                "Communicating with customers is not essential",
                "It allows them to communicate with customers",
                "Marketing should only be done through one channel"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 4,
            "booklet": "Business Development",
            "question": "What does SWOT stand for?",
            "question_image_url": "null",
            "answer_choices": [
                "Strengths, weaknesses, opportunities, threats",
                "Strengths, weaknesses, opportunities, training",
                "Strengths, willingness, opportunities, training",
                "Strengths, weaknesses, origin, timing"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Business Development",
            "question": "If you are trying to determine what type of customers may be interested in purchasing products from you, which type of sales strategy would you need to use?",
            "question_image_url": "null",
            "answer_choices": [
                "Be the product expert",
                "Identify your target market",
                "Hire teachable people",
                "Hire smart people"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 6,
            "booklet": "Business Development",
            "question": "Which of the following functions is not one that supports BD on every deal?",
            "question_image_url": "null",
            "answer_choices": [
                "Legal",
                "Marketing",
                "Finance",
                "Technical specialist"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Business Development",
            "question": "What are milestone payments?",
            "question_image_url": "null",
            "answer_choices": [
                "Reoccurring payments that happen in predefined intervals.",
                "Payments that are based on sales performance.",
                "Where one party leaves bags of money at certain milemarkers along the interstate.",
                "Payments that are contingent on the achievement of certain development or commercialization goals."
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Business Development",
            "question": "Which is not usually a core competency of the BD function?",
            "question_image_url": "null",
            "answer_choices": [
                "Opportunity prospecting",
                "Deal evaluation and closure",
                "Therapeutic evaluation",
                "Alliance management"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Business Development",
            "question": "The establishment of certain standards or specifications for a product is called...",
            "question_image_url": "null",
            "answer_choices": [
                "Standardization",
                "Gradation",
                "Product Control",
                "Product Development"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        }
    ],
    "cultural_fit": [
        {
            "id": 0,
            "booklet": "Cultural Fit",
            "question": "Culture is all of the following EXCEPT: ",
            "question_image_url": "null",
            "answer_choices": [
                "shared",
                "transmitted between generations",
                "systematic",
                "unorganized"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 1,
            "booklet": "Cultural Fit",
            "question": "In the case of culture, ______ means that most members intuitively understand the basic values, norms, or logics that underlie what is acceptable.",
            "question_image_url": "null",
            "answer_choices": [
                "shared",
                "learned",
                "organized",
                "systematic"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 2,
            "booklet": "Cultural Fit",
            "question": "Individuals carry three levels of programming in their minds about how they interact with their environment. What do they carry at the broadest level?",
            "question_image_url": "null",
            "answer_choices": [
                "Ideas about how culture is shared",
                "All human beings share certain biological reactions",
                "Personality characteristics that are unique to each of us as individuals",
                "Shared experiences within a particular society"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 3,
            "booklet": "Cultural Fit",
            "question": "Individuals carry three levels of programming in their minds about how they interact with their environment. What do they carry at the intermediate level?",
            "question_image_url": "null",
            "answer_choices": [
                "Ideas about how culture is shared",
                "All human beings share certain biological reactions",
                "Personality characteristics that are unique to each of us as individuals",
                "Shared experiences within a particular society"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 4,
            "booklet": "Cultural Fit",
            "question": "Individuals carry three levels of programming in their minds about how they interact with their environment. What do they carry at the narrowest level?",
            "question_image_url": "null",
            "answer_choices": [
                "Ideas about how culture is shared",
                "All human beings share certain biological reactions",
                "Personality characteristics that are unique to each of us as individuals",
                "Shared experiences within a particular society"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 5,
            "booklet": "Cultural Fit",
            "question": "______ is (are) a collective phenomenon that is about elements of our mental programming that we share with others in a society. ",
            "question_image_url": "null",
            "answer_choices": [
                "Beliefs",
                "Attitudes",
                "Culture",
                "Values"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 6,
            "booklet": "Cultural Fit",
            "question": "Culture is transmitted through the process of ______ and interacting with the social environment.",
            "question_image_url": "null",
            "answer_choices": [
                "talking",
                "learning",
                "hearing",
                "governing"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 7,
            "booklet": "Cultural Fit",
            "question": "______ are the structures and activities—such as the family, education, economics, religious, and political systems—that provide stability to a society.",
            "question_image_url": "null",
            "answer_choices": [
                "Groups",
                "Programs",
                "Institutions",
                "Attitudes"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 8,
            "booklet": "Cultural Fit",
            "question": "______ can have a cultural influence through the content of their belief systems, the structure of their beliefs and rituals, and the identities they promote.",
            "question_image_url": "null",
            "answer_choices": [
                "Religious traditions",
                "Language",
                "Climate",
                "Attitudes"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        },
        {
            "id": 9,
            "booklet": "Cultural Fit",
            "question": "Devoutly religious individuals are more likely to endorse the ______ cultural profile of a society",
            "question_image_url": "null",
            "answer_choices": [
                "conscious",
                "dominant",
                "political",
                "economic"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 3.0
        }
    ],
    "psychometric_assessment": [
        {
            "id": 0,
            "booklet": "Psychometric Assessment",
            "question": "Find the percentage increase of 200 to 300",
            "question_image_url": "null",
            "answer_choices": [
                "40%",
                "50%",
                "60%",
                "70%"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 1,
            "booklet": "Psychometric Assessment",
            "question": "Find the percentage decrease of 500 to 240",
            "question_image_url": "null",
            "answer_choices": [
                "50%",
                "51%",
                "52%",
                "53%"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 2,
            "booklet": "Psychometric Assessment",
            "question": "Your phone bill is £42. It increases by 10% after 12 months, and a further 20% increase is applied six months later. What's the price of your phone bill after 18 months?",
            "question_image_url": "null",
            "answer_choices": [
                "£52.41",
                "£53.42",
                "£54.43",
                "£55.44"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 3,
            "booklet": "Psychometric Assessment",
            "question": "What was the average total percentage decrease in the number of homes sold by Bradfield Homes and Thompson Homes from May to June?",
            "question_image_url": "https://i.imgur.com/op3IEpt.png",
            "answer_choices": [
                "18.18%",
                "13.26%",
                "13.04%",
                "8.33%"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 4,
            "booklet": "Psychometric Assessment",
            "question": "If there were 50,000 people employed in Blackpool in 2021 what is the ratio of employed to unemployed people in that year?",
            "question_image_url": "https://i.imgur.com/cyZLH4V.png",
            "answer_choices": [
                "25:1",
                "12.5:1",
                "10:1",
                "8.33:1"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 5,
            "booklet": "Psychometric Assessment",
            "question": "If Heathrow Airport pledged in January to reduce cancelled flights by 80% by March, by how many cancelled flights have they failed to reach this target?",
            "question_image_url": "https://i.imgur.com/a9t0O2i.png",
            "answer_choices": [
                "4",
                "0",
                "14",
                "18"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 6,
            "booklet": "Psychometric Assessment",
            "question": "If Heathrow Airport pledged in January to reduce cancelled flights by 80% by March, by how many cancelled flights have they failed to reach this target?",
            "question_image_url": "https://i.imgur.com/a9t0O2i.png",
            "answer_choices": [
                "4",
                "0",
                "14",
                "18"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 7,
            "booklet": "Psychometric Assessment",
            "question": "Convert 3 2/4 into an improper fraction",
            "question_image_url": "null",
            "answer_choices": [
                "15/4",
                "7/2",
                "7/9",
                "None of these"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 8,
            "booklet": "Psychometric Assessment",
            "question": "Find the mean average of 3, 15, 8 and 22",
            "question_image_url": "null",
            "answer_choices": [
                "10",
                "11",
                "12",
                "13"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 0,
            "duration_in_minutes": 4.0
        },
        {
            "id": 9,
            "booklet": "Psychometric Assessment",
            "question": "What was the total value of Grade A and C wireless headphones produced in 2019?",
            "question_image_url": "https://i.imgur.com/CrQsuQ4.png",
            "answer_choices": [
                "\$490,000",
                "\$540,000",
                "\$550,000",
                "\$790,000"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ],
    "behaviour": [
        {
            "id": 0,
            "booklet": "Behaviour",
            "question": "Organisational behaviour is_______",
            "question_image_url": "null",
            "answer_choices": [
                "A science",
                "An art",
                "A science as well as an art",
                "None of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 2,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 1,
            "booklet": "Behaviour",
            "question": "Communication begins with _____",
            "question_image_url": "null",
            "answer_choices": [
                "encoding",
                "idea origination",
                "decoding",
                "channel selection"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 2,
            "booklet": "Behaviour",
            "question": "A study of the culture and practises in different societies is called _____",
            "question_image_url": "null",
            "answer_choices": [
                "Personality",
                "Anthropology",
                "Perception",
                "Attitudes"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 3,
            "booklet": "Behaviour",
            "question": "Forces affecting organisational behaviour are _______",
            "question_image_url": "null",
            "answer_choices": [
                "People",
                "Environment",
                "Technology",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 4,
            "booklet": "Behaviour",
            "question": "Scope of Organizational Behaviour does not include ______",
            "question_image_url": "null",
            "answer_choices": [
                "Leadership",
                "Perception",
                "Job Design",
                "Technology"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 5,
            "booklet": "Behaviour",
            "question": "In present context, challenges for Organizational Behaviour are _____",
            "question_image_url": "null",
            "answer_choices": [
                "Employee expectation",
                "Workforce diversity",
                "Globalization",
                "All of the above"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 6,
            "booklet": "Behaviour",
            "question": "Some of OB’s challenges and opportunities include all of the following except",
            "question_image_url": "null",
            "answer_choices": [
                "reinforcing the importance of traditional methods of management",
                "offering specific insights to improve interpersonal and people skills",
                "helping us learnt to cope in a continues changing world",
                "facilitating the improvement of quality and employee productivity"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 7,
            "booklet": "Behaviour",
            "question": "Hawthorne Studies is related to which stage of the organisational behaviour evolution?",
            "question_image_url": "null",
            "answer_choices": [
                "Industrial revolution",
                "Scientific management",
                "Organisational behaviour",
                "Human relations movement"
            ],
            "answer_image_url": "null",
            "correct_answer": 3,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 8,
            "booklet": "Behaviour",
            "question": "The field of organizational behaviour examines such questions as the nature of leadership, effective team development, and______",
            "question_image_url": "null",
            "answer_choices": [
                "Organisational control; conflict management",
                "Interpersonal conflict resolution; motivation of individuals",
                "Motivation of individuals; planning",
                "Planning; development"
            ],
            "answer_image_url": "null",
            "correct_answer": 0,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        },
        {
            "id": 9,
            "booklet": "Behaviour",
            "question": "Which of the following is not correct for the organisational behaviour?",
            "question_image_url": "null",
            "answer_choices": [
                "Organisational behaviour is an integral part of management",
                "Organisational behaviour is a disciplinary approach",
                "Organisational behaviour helps in analysis of behaviour",
                "Organisational behaviour is goal-oriented"
            ],
            "answer_image_url": "null",
            "correct_answer": 1,
            "difficulty_level": 1,
            "duration_in_minutes": 4.0
        }
    ]
};
}
