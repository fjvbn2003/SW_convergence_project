package util;
import java.io.Serializable;

public class Student2 implements Serializable{
   private String id;
   private String password;
   private String age;
   private String major;

   public String getId() {   //getter methods
      return id;
   }
   public String getPassword() {
      return password;
   }
   public String getAge() {
      return age;
   }
   public String getMajor() {
      return major;
   }

	   

	   public void setId(String id) {   //setter methods
	      this.id = id;
	   }
	   public void setPassword(String password) {
	      this.password = password;
	   }
	   public void setAge(String age) {
	      this.age = age;
	   }
	   public void setMajor(String major) {
	      this.major = major;
	   }

	}