class A{
  int? x;

/*A(int x){
  this.x = x;
}*/

A(this.x){print('Constractor of calss A');}
@override
String toString() => 'Object form class A';

void showinfo() => print('X = $x');

}



class B extends C{
  int? y = 2;


B(int x,this.y) : super(x){print('Constractor of calss B');}
@override
String toString() => 'Object form class B';

void showinfo() => print('X = $x , Y = $y');
}


class C extends A{
  int? x = 5;

C(this.x):super(x){print('Constractor of calss C');}
@override
String toString() => 'Object form class C';

void showinfo() => print('X = $x');
}


void main(List<String> args) {
  var b = B(2,7);
  var c = C(5);
  var a = A(10);

  /*print('x = ${b.x}, y = ${b.y}');
  print('x = ${c.x}');
  print('x = ${a.x}');*/
  
  a.showinfo();
  b.showinfo();
  c.showinfo();

  
}