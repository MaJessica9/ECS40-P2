# ECS40-P2

1. (7 points) Write a shell script, named grepdir.sh, that searches for a pattern in a directory, and all of its subdirectories. The starting directory is the first argument, the pattern is the second parameter, and the options for grep are all 
succeeding parameter(s). Options will start with a hyphen. The script should produce a usage statement if the script 
is misused.

2. (8 points) Write a shell script that copies the files in two directories dir1 and dir2 (supplied as the first two 
arguments), to dir3 (supplied as the third argument). If dir1 and dir2 contain the files with the same name, then the 
newer file should be copied to dir3. This does NOT look at the subdirectories of dir1 and dir2. Dir1 and dir2 must be 
existing directories, and dir3 may not be an existing regular file. The script should produce a usage statement if the 
script is misused. Name your script cpdirs.sh

3. (10 points) Write a shell script called uncomp.sh that will take a file with the standard archiving and compression 
extensions (gz, zip, tgz, and tar) and perform the appropriate operation[s] to uncompress and unarchive the files. 
Acceptable filename extension combinations are .tar, .tar.gz, .tgz, .gz, and .zip. If the filename doesn't have one of 
these extensions then your script should print a usage statement. An example of this script is provided below. The 
usage is "uncomp.sh {filelist}+"

4. (21 points) (30 minutes) Write a Bash shell script, makemake.sh, that will create a makefile called Makefile based on 
all the .cpp files in the current directory. If a .cpp file has any #includes of non-system header files (those with double 
quotes around them), then those files should be listed in its dependencies. The –Wall –ansi, and –g options will 
always be used with g++. The shell script takes the name of the executable as its first argument. If no argument is 
provided, the script should report the error, and print a usage statement. All other parameters are additional options 
that should be used with every call to g++. The Makefile should end with a "clean:" routine that removes the 
executable and all object files. (Hints: the -n option of echo inhibits the default newline, and \t and \n work with echo. 
I used sed and awk to get at the name of the header files within the .cpp files.)

5. (5 points extra credit) Write a shell script called maxpipes.sh that does nothing but pipe one command to another in 
one, long pipeline. The team(s) with the most number of pipes gets the extra credit. Further specifications: 1) You 
can only use a command once in the pipeline; 2) On the third line of the shell script should place the number of pipes 
"|" your pipeline uses; and 3) Your pipeline must produce some useful output that you explain in the comments of the 
script. Whether a script's output is useful is up to me.
