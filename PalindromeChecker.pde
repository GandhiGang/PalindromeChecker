public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String unf)
{
  String sWord = format(unf);
  String epic = reverse(sWord);
  if(epic.equals(sWord))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >=0; i--)
    sNew += str.substring(i, i+1);
    return sNew;
}
public String format(String str){
String temp = "";
for(int i = 0; i < str.length(); i++){
  if(str.substring(i, i+1).equals(" ")){
    
  }
  else{
    temp += str.substring(i,i+1);
  }
}

temp = temp.toLowerCase();
String gamer = "";
for(int i = 0; i < temp.length(); i++)
    if(Character.isLetter(temp.charAt(i)))
      gamer += temp.substring(i, i+1);
  return gamer;

}

