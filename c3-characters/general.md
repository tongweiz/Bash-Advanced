## Quoting
  * partial quoting[double quote]
  * full quoting[single quote]--**A strong form of quoting than double quote**
## List fines ending with "calc"  
  * `ls /{,usr/}bin/*calc`
## Show error msg if one or more environment not set
  * `: ${HOSTNAME?} ${USER?} ${MAIL?}`
## Create a new empty file or clean a file
  * `: > data.txt`
## Commands within parentheses starts a subshell.
  ```console
  $ a=123
  $ ( a=321 ) # Like a local variable
  $ echo "a = $a" # a = 123
  ```
## Array initialization
  `Array=(element1 element2 element3)`
## Brace expansion
 `[xxx,yyy,zzz]`
 ```console
  $ echo \"{1,2,3,4}\"
  "1" "2" "3" "4"
  $ cat {file1,file2,file3,file4} > combined_file
  # Merge all files into one
  $ cp file.{txt,backup}
  # copy file.txt to file.backup
  # Note: No spaces allowed within the braces unless the spaces are quoted or escaped.
  echo {file1,file2}\ :{\ A," B",' C'}
  file1 : A file1 : B file1 : C file2 : A file2 : B file2 : C
  ```
## Placeholder for text
  `ls . | xargs -i -t cp ./{} $1`