package util;
import java.io.Serializable;

public class Student implements Serializable{
   private String id;
   private String name;
   private String age;
   private String major;

   public String getId() {   //getter methods
      return id;
   }
   public String getName() {
      return name;
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
	   public void setName(String name) {
	      this.name = name;
	   }
	   public void setAge(String age) {
	      this.age = age;
	   }
	   public void setMajor(String major) {
	      this.major = major;
	   }

	}