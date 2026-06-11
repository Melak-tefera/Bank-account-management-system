
void main() {
  var account1= BankAccount('alex',2000);
  var acccount2= BankAccount('someone',3400);
  account1.deposit(200.0);
  account1.withdraw(100.0);
  account1.displayInfo();  
  BankAccount.printTotalAccounts();
  acccount2.deposit(400.0);
  acccount2.displayInfo();
}

class BankAccount{
  String _accountHolder;
  double _balance;
  static int totalAccounts = 0;
  
  BankAccount(this._accountHolder, this._balance){
    totalAccounts++;
  }
  
  String get accountHolder=> _accountHolder;
  double get balance=> _balance;
  
  void set balance(double value){
    if(value>=0){
      _balance=value;
    }
  }
  
   void set accountHolder(String value) {
    String trimmed = value.trim();
    if (trimmed.isNotEmpty) {
      _accountHolder = trimmed;
    }
  }
  
  void deposit(double amount){
    if(amount>0){
      _balance+=amount;
    }
  }
  
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
  
  void displayInfo() {
    print('Account: $_accountHolder, Balance: $_balance');
  }
  
  static void printTotalAccounts() {
    print('Total accounts created: $totalAccounts');
  }
  
}