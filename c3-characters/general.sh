# partial quoting[double quote]
# full quoting[single quote]--**A strong form of quoting than double quote**
# List fines ending with "calc"  
  ls /{,usr/}bin/*calc
# Show error msg if one or more environment not set
  : ${HOSTNAME?} ${USER?} ${MAIL?}
# Create a new empty file or clean a file
  : > data.txt
