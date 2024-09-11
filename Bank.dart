class BankAccount{
  double? _balance;
  String? _name;

  BankAccount(this._balance,this._name);

  double get balance => _balance!; 
  set balance(double balance) => this._balance = balance;

  String get name => _name!; 
  set name(String name) => this._name = name;

  void deposit(double amount){
    balance += amount;
    print('ชื่อ $name ฝากเงินเข้าธนาคาร:$amount บาท');
  }

  void withdraw(double amount){
    balance -= amount;
     print('ชื่อ $name ถอนเงินออกจากธนาคาร:$amount บาท');
  }
  void showBalance() => print('เงินคงหลือ : $balance บาท');
    

}
class SavingAccount extends BankAccount{
  double? _interestRate;

  double get interest => _interestRate!; 
  set interest(double interestRate) => this._interestRate = interest;

SavingAccount(double _balance,String _name,this._interestRate):super(_balance,_name);

void addinsert(){
 balance = (balance * interest/100)+balance;
 print('ชื่อ $name ได้รับดอกเบี้ย $interest %');
}
}
void main(List<String> args) {
  var x = SavingAccount(2000, 'Virawan',0.25);
  x.deposit(400);
  x.showBalance( );

  x.withdraw(100);
  x.showBalance();

  x.addinsert();
  x.showBalance();

  
  
}