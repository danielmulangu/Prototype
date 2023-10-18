import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
import 'package:barkode_app/Models/user.dart';

class DBProvider{
  DBProvider._();
  static final DBProvider db =DBProvider._();
  static Database _database;

  Future<Database> get database async{
       if(_database !=null)
         return _database;

        _database=await initDB();
        return _database;
    }

    initDB() async{
        return await openDatabase(
          join(await getDatabasesPath(), 'Data.db'),
          onCreate: (db, version) async{
            await db.execute('''
            CREATE TABLE users(
            Name varchar(255) not null,
            Surname varchar(255) not null,
            Address varchar(255),
            Tel varchar(15),
            Email varchar(50) not null,
            CardNo varchar(50) not null,
            Password varchar(100) not null,
            primary key(CardNo)
            );
           ''' );
          },
          version: 1
        );
    }
    newUser(User newUser) async{
    final  db= await database;

    var res= await db.rawInsert('''
         INSERT INTO users(Name,Surname,Address,Tel,Email,CardNo,Password)
         VALUES(?,?,?,?,?,?,?)
        ''',[newUser.Name,newUser.Surname,newUser.Address,newUser.Tel,newUser.Email
             ,newUser.CardNo,newUser.password]);

       return res;
    }
    Future<dynamic>  getUser() async{
       final db= await database;
       var res= await db.query("users");
       if(res.length==0){ return null;}
       else{var resMap=res[0]; return resMap.isNotEmpty ?resMap: null; }


    }



 }
