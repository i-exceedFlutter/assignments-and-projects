class demostringconcattest
{
   public void concatstring()
   {
       String str = "iexceed";
       for(int i=0; i<4; i++)
       {
           str += " technology";
       }
   }

   public void concatstringbybuffer()
   {
       StringBuffer sb = new StringBuffer("iexceed");
       for(int i=0; i<4; i++)
       {
           sb.append(" technology");
       }
   }

   public void concatstringbybuilder()
   {
       StringBuilder sb = new StringBuilder("iexceed");
       for(int i=0; i<4; i++)
       {
           sb.append(" technology");
       }
   }
}

class stringconcattest {
    public static void main(String[] args) {
        demostringconcattest obj = new demostringconcattest();

        // String
        long start1 = System.currentTimeMillis();
        obj.concatstring();
        long end1 = System.currentTimeMillis();
        System.out.println("Time taken by String: " + (end1 - start1) + " ms");

        // StringBuffer
        long start2 = System.currentTimeMillis();
        obj.concatstringbybuffer();
        long end2 = System.currentTimeMillis();
        System.out.println("Time taken by StringBuffer: " + (end2 - start2) + " ms");

        // StringBuilder
        long start3 = System.currentTimeMillis();
        obj.concatstringbybuilder();
        long end3 = System.currentTimeMillis();
        System.out.println("Time taken by StringBuilder: " + (end3 - start3) + " ms");
    }
}