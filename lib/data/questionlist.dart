import "package:second_app/models/quizquestions.dart";

const questions = [
  Quizquestions(
    'Which data structure uses LIFO (Last In First Out) principle?',
    [
      'Stack',
      'Queue',
      'Linked List',
      'Array',
    ],
  ),
  Quizquestions('What is the time complexity of binary search on a sorted array?', [
    'O(log n)',
    'O(n log n)',
    'O(n)',
    'O(1)',
  ]),
  Quizquestions(
    'Which of the following sorting algorithms has the best average-case time complexity?',
    [
      'Merge Sort',
      'Selection Sort',
      'Bubble Sort',
      'Insertion Sort',
    ],
  ),
  Quizquestions(
    'Which data structure is used to implement a priority queue?',
    [
      'Heap',
      'Stack',
      'Linked List',
      'Queue',
    ],
  ),
  Quizquestions(
    'In which of the following data structures, elements can be added or removed at both ends but not in the middle?',
    [
      'Deque',
      'Stack',
      'Queue',
      'Priority Queue',
    ],
  ),
  Quizquestions(
    'Which traversal method is used to get the elements of a binary search tree in ascending order?',
    [
      'In-order',
      'Post-order',
      'Pre-order',
      'Level-order',
    ],
  ),
];
