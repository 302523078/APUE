#include "apue.h"
#include <dirent.h>

int main(int argc, char *argv[]) {
    DIR *dp;
    struct dirent *dirp;
    if (argc != 2) {
        //err_quit("usage: ls directory_name");
        perror("usage: ls directory_name\n");
        exit(1);
    }

    if ((dp = opendir(argv[1])) == NULL) {
        //err_sys("can't open %s", argv[1]);
        char s[20] = "can't open ";
        strcat(s,argv[1]);
        strcat(s,"\n");
        //printf("can't open %s\n", argv[1]);
        perror(s);
        exit(1);
    }

    while ((dirp = readdir(dp)) != NULL) {
        printf("%s\n", dirp->d_name);
    }

    closedir(dp);
    exit(0);
}
