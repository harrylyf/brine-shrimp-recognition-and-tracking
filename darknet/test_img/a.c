#include <dirent.h> 
#include <stdio.h> 

int main(void) {
  DIR *d;
  struct dirent *dir;
  d = opendir(".");
  if (d) {
    while ((dir = readdir(d)) != NULL) {
      printf("./darknet detect cfg/yolov3_obj.cfg backup/yolov3_obj_final.weights %s  -out %s\n", dir->d_name, dir->d_name);
    }
    closedir(d);
  }
  return(0);
}