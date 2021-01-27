public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  word2 = noCapitals(word2);
  word2 = noSpaces(word2);
  if (word2.equals(reverse(word2)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length(); i>0; i--)
    sNew = sNew + str.substring(i-1, i);
  return sNew;
}

public String onlyLetters(String word) {
  String ans = "";
  for (int i = 0; i < word.length(); i++) {
    if (Character.isLetter(word.charAt(i))==true) {
      ans = ans + word.charAt(i);
    }
  }
  return ans;
}

public String noCapitals(String word) {
  return word.toLowerCase();
}

public String noSpaces(String word) {
  String ans = "";
  for (int i = 0; i < word.length(); i++) {
    if (word.charAt(i) != ' ') {
      ans = ans + word.charAt(i);
    }
  }
  return ans;
}
