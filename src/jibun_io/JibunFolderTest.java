package jibun_io;

import java.io.File;

import io.AddressTest;

public class JibunFolderTest {

   public static void main(String[] args) {

      AddressTest at = new AddressTest();

      File path = new File("C:\\java_study\\address");
      if (path.isDirectory()) {

         File[] files = path.listFiles();

         for (File file : files) {

            if (!file.isDirectory() && file.getName().indexOf("jibun_jeju") == 0) {
            	
            	

               System.out.println("시작");
               at.exePath(file.toString());
               System.out.println("끝");
            }

         }
      }

   }

}