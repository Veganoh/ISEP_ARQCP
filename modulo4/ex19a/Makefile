# CppUtest setup 

ifeq ($(REPO),)
  $(error Environment variable REPO is not set)
endif

# Generic C/C++ makefile for Linux  

detected_OS := $(shell uname -s)
ifeq "${detected_OS}" "Linux"
	GENARCH:=-m64 
else 
	GENARCH:= 
endif 





space := $(subst ,, ) 		# space macro # not needded 

CURRENT_DIR:=$(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))  
EX_TEST:=$(subst utests,$(REPO),$(CURRENT_DIR)) 

FILES:=$(shell find $(EX_TEST) -type f \( -iname \*.c -o -iname \*.s \) )  ## all the source files 
ifeq ($(strip $(FILES)),)
  export FILES_NOT_FOUND=1 
  $(error Could not find source files in $(EX_TEST) )
endif 
MAIN_FILE:=$(shell grep -l -E 'int[ \t\n]+main' $(FILES))  	##  the file where is "int main" 
REAL_FILES:=$(filter-out $(MAIN_FILE),$(FILES))			## take it out of the list of files to compile 
ifeq ($(strip $(REAL_FILES)),)
  export FILES_NOT_FOUND=1 
  $(error Could not find source files in $(EX_TEST) )
endif 

REAL_OBJS1:=$(notdir $(REAL_FILES))
REAL_OBJS2:=$(subst .c,.o,$(REAL_OBJS1)) 
REAL_OBJS:=$(subst .s,.o,$(REAL_OBJS2)) 

# Objs that have their origin  from the different repositories 
OBJS_TO_CLEAN:=$(filter-out main.o,$(wildcard *.o))

prog: main.o  callfunc.o  ../../unity.o $(REAL_OBJS)   
	gcc $(GENARCH)  -Wall -g $(REAL_OBJS) main.o callfunc.o ../../unity.o -o prog

main.o : main.c 
	gcc $(GENARCH)  -Wall -g -c $< 


callfunc.o : callfunc.s 
	gcc $(GENARCH)  -Wall -g -c $< 

../../unity.o : ../../unity.c  
	gcc $(GENARCH) -I ../..  -Wall -g -c $< -o ../../unity.o  

$(REAL_OBJS):  $(REAL_FILES)  
	gcc $(GENARCH)  -Wall -g -c $(REAL_FILES) 

run:  prog 
	./prog 

vg:  prog 
	valgrind ./prog 

clean: 
	rm -f prog *.o 	

full-clean:  
	rm -f prog *.o ../../unity.o  

