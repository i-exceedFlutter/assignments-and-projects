abstract class Login{
  void login(String name,String password);
}
abstract class Register{
  void register(String username,String email,String password);
}
abstract class Logout{
  void logout();
}
abstract class PasswordReset{
  void resetPassword(String email);
}

 class GuestAuth implements Login{
  @override
  void login(String username,String password){
    print("Hello $username Welcome !");
  }
}
class NewUserAuth implements Register,Login{
  @override
  void register(String username,String email,String password){
    print("New user registered: $username with $email");

  }
  @override
  void login(String username,String password){
    print("Hello $username Welcome !");
  }

}

class LoggedInAuth implements Logout, PasswordReset {
  @override
  void logout() {
    print("User logged out");
  }

  @override
  void resetPassword(String email) {
    print("Password reset link sent to $email");
  }
}

void main(){
  Login guest =GuestAuth();
  guest.login("Bhanu", "IExceed374");

  Register newuser=NewUserAuth();
  newuser.register("Bhanu374", "bhanu.iEx@email.com", "IExceed123");
  Logout user =LoggedInAuth();
  user.logout();
}