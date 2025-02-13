class FormValidators {
  
static String? validatorEmail(String? email){
  if(email == null || email.isEmpty){
    return 'Email is required';
  }
  final emailRegex =RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if(!emailRegex.hasMatch(email)){
    return "Email is not valid";
  }
  return null;


}




static String? validatorPassword(String? password){
  if(password == null || password.isEmpty){
    return 'Password is required';
  }
  if(password.length < 6){
    return "Password must be at least 6 characters";
  }
  return null;


}



}