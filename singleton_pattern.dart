class Database {
  static Database? _database;
  Database._crateSingleton();

  static createDatabase() {
    if (_database == null) {
      _database = Database._crateSingleton();
    }
    return _database;
  }
}

class Client {
  var databaseOne = Database.createDatabase();
  var databaseTwo = Database.createDatabase();
}

void main() {
  Client testClient = Client();
  print(testClient.databaseOne == null);
  print(testClient.databaseTwo == null);

  print(testClient.databaseOne == testClient.databaseTwo);
}
