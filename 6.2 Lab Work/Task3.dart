import 'dart:io';

class Train {
  int trainNumber;
  String trainName;
  String source;
  String destination;
  String trainTime;

  Train(this.trainNumber, this.trainName, this.source, this.destination, this.trainTime);

  void displayDetails() {
    print('Train Number: $trainNumber');
    print('Train Name: $trainName');
    print('Source: $source');
    print('Destination: $destination');
    print('Train Time: $trainTime');
    print('--------------------------------');
  }
}

void main() {
  List<Train> trains = [];

  // Input train records
  for (int i = 0; i < 3; i++) {
    print('Enter details for Train ${i + 1}:');
    print('Train Number:');
    int trainNumber = int.parse(stdin.readLineSync()!);
    print('Train Name:');
    String trainName = stdin.readLineSync()!;
    print('Source:');
    String source = stdin.readLineSync()!;
    print('Destination:');
    String destination = stdin.readLineSync()!;
    print('Train Time:');
    String trainTime = stdin.readLineSync()!;

    Train newTrain = Train(trainNumber, trainName, source, destination, trainTime);
    trains.add(newTrain);
  }

  // Display record by search train number
  print('Enter the train number to search:');
  int searchTrainNumber = int.parse(stdin.readLineSync()!);
  bool found = false;
  for (Train train in trains) {
    if (train.trainNumber == searchTrainNumber) {
      train.displayDetails();
      found = true;
      break;
    }
  }
  if (!found) {
    print('Train with number $searchTrainNumber not found.');
  }
}
