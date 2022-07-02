class Get_Started extends StatelessWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
        Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 40,bottom: 30)),
            Text("TRAINING",style: TextStyle(fontSize: 40,color: Colors.purple,decoration: TextDecoration.none,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 40,bottom: 30)),
            Image(image: AssetImage("assets/training.jpg")),
            Padding(padding: EdgeInsets.only(top: 40,bottom: 30)),
            SizedBox(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
    return User_login();}));}, child: Text("Get Started"),style: ElevatedButton.styleFrom(primary: Colors.purple),),
              width: 300,),
          ],

        ),
      ),
    );
  }
}
TextEditingController c1 = TextEditingController();
TextEditingController c2 = TextEditingController();
class User_login extends StatefulWidget {
  const User_login({Key? key}) : super(key: key);

  @override
  State<User_login> createState() => _User_loginState();
}

class _User_loginState extends State<User_login> {
  String? _nameError = null;


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Padding(padding: EdgeInsets.only(top: 20,bottom: 50),),
              Padding(
                padding: const EdgeInsets.only(top:50,left: 25,bottom: 50),
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blueAccent),),
              ),
              TextField(

                controller: c1,
                decoration: InputDecoration(
                  errorText: _nameError,
                  labelText: "Student Name",
                  hintText: "Enter your Name",
                  labelStyle: TextStyle(fontSize: 24, ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),

                  ),
                ),
              SizedBox(
                height: 10,
              ),
              TextField(

                controller: c2,
                decoration: InputDecoration(
                  errorText: _nameError,
                  labelText: "Email id",
                  hintText: "Enter your Email",
                  labelStyle: TextStyle(fontSize: 24, ),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.alternate_email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Training_completion();}));}, child: Text("Login"),style: ElevatedButton.styleFrom(primary: Colors.blueAccent),),
                width: 300,),



            ],
          ),
        ),
      );
  }
}
// TextEditingController name=c1;
class Training_completion extends StatelessWidget {
  // const Training_completion({Key? key}) : super(key: key);
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column
          (
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Hi,${c1.text}",style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal),),
            ),
            Image(image: AssetImage("assets/certificate.png")),

            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 50,left: 10,),
              child: Container(
                child: Text("You have Successfully Completed \n Hybrid Mobile App Development Course.",style: TextStyle(fontSize: 25),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("INSTRUCTOR NAME",style: TextStyle(fontWeight: FontWeight.bold
                ,fontSize: 24),),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 8.0,right: 8.0,bottom: 30),
              child: Container(
                child: Text("Pankaj Kapoor",style: TextStyle(
                    fontSize: 24),),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Container(
              child: Text("Date ${today.day}-${today.month}-${today.year}",style: TextStyle(fontSize: 20),),
              alignment: Alignment.bottomRight,
            )


          ],
        ),
      ),
    );
  }
}

void main()
{
  runApp(MaterialApp(home:Get_Started() ,debugShowCheckedModeBanner: false,));
}
