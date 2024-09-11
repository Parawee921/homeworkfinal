/*ให้สร้างคลาสหลัก (Super class) ชื่อว่า Vehicle ซึ่งมีคุณสมบัติ brand และ
model พร้อมทั้งสร้างเมธอด drive() เพื่อแสดงข้อความว่า "Vehicle is driving.”


ให้สร้างคลาสย่อย (Sub class) ชื่อว่า Car ซึ่งสืบทอดคุณสมบัติและเมธอดจาก
คลาส Vehicle พร้อมเพิ่มคุณสมบัติใหม่คือ numOfDoors และ override เมธอด
drive() เพื่อให้แสดงข้อความว่า "Car is driving.”*/ 

class Vehicle{    //Super class
  String? brand; // คุณสมบัติ
  String? model;

@override
  Vehicle(this.brand,this.model); //สร้าง constutor
  
 String toString() =>'ชื่อ: $brand \nโมเดล: $model'; //การกำหนดเพื่อแสดงค่าในฟังก์ชัน main
  

  void drive(){ //method
    print('Vehicle is driving\n');
  }
}
class Car extends Vehicle{    //Sub class
  int? numOfDoors;
  @override
Car(String brand,String model,this.numOfDoors):super(brand,model);//สร้างconstutorส่งไปยัง Super class
String toString() => 'ชื่อ : $brand \nโมเดล : $model \nประตูรถ: $numOfDoors ประตู';

  void drive() => print('Car is driving');
}
void main(List<String> args) {
  var ven = Vehicle('BMW', 'X1');
  var Car1 = Car('BMW','X1',4);

  print(ven);
  ven.drive();
  print(Car1);
  Car1.drive();
}