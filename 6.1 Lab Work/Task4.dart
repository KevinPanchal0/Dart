
double calculateSuccessPercentage({int occupation1 = 0, int occupation2 = 0, int occupation3 = 0, int occupation4 = 0, int occupation5 = 0}) {
  // Calculate total marks
  int totalMarks = occupation1 + occupation2 + occupation3 + occupation4 + occupation5;

  // Calculate maximum possible marks
  int maxMarks = 100 * 5; // Assuming each occupation has a maximum score of 100

  // Calculate percentage
  double percentage = (totalMarks / maxMarks) * 100;

  return percentage;
}

void main() {
  // Example marks for occupations
  int marks1 = 80;
  int marks2 = 90;
  int marks3 = 85;
  int marks4 = 98;
  int marks5 = 98;

  // Calculate percentage of success
  double successPercentage = calculateSuccessPercentage(
    occupation1: marks1,
    occupation2: marks2,
    occupation3: marks3,
    occupation4: marks4,
    occupation5: marks5,
  );

  print('Percentage of success for gaining a job as a software developer: $successPercentage%');
}