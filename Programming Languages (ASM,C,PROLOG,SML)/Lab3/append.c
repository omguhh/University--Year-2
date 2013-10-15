//pwd is to find what directory you're in
//ls displays all the files in the directory you're in
// cd is for changing directory

#include <stdio.h>
#include <stdlib.h>

append(FILE * fin,FILE * fout)
{  char ch;
   ch = getc(fin);
   while(ch!=EOF)
   {  putc(ch,fout);
      ch = getc(fin);
   }
}

main(int argc,char ** argv)
{  FILE * fin, * fout;
   int i;

   if(argc<3)
   {  printf("copy: wrong number of arguments\n");
      exit(0);
   }
   fout = fopen(argv[argc-1],"w");
   if(fout==NULL)
   {  printf("copy: can't open %s\n",argv[argc-1]);
      exit(0);
   }
   i=1;
   while(i<argc)
   {  fin = fopen(argv[i],"r");
      if(fin==NULL)
      {  printf("copy: can't open %s\n",argv[i]);
         exit(0);
      }
      append(fin,fout);
      fclose(fin);
      i = i+1;
   }
   fclose(fout);
}
