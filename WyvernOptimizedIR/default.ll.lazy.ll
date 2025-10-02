; ModuleID = './default.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type { i8*, i32, i8*, i32, i8**, i8*, i8 }
%struct.dep = type { %struct.dep*, i8*, %struct.file*, i32 }
%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }
%struct.pspec = type { i8*, i8*, i8* }
%struct.nameseq = type { %struct.nameseq*, i8* }

@.str = private unnamed_addr constant [10 x i8] c".SUFFIXES\00", align 1
@suffix_file = external dso_local global %struct.file*, align 8
@no_builtin_rules_flag = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SUFFIXES\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@default_suffixes = internal global [122 x i8] c".out .a .ln .o .c .cc .C .p .f .F .r .y .l .s .S .mod .sym .def .h .info .dvi .tex .texinfo .texi .cweb .web .sh .elc .el\00", align 16
@default_pattern_rules = internal global [3 x %struct.pspec] [%struct.pspec { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0) }, %struct.pspec { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.pspec zeroinitializer], align 16
@default_terminal_rules = internal global [5 x %struct.pspec] [%struct.pspec { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct.pspec { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct.pspec { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0) }, %struct.pspec { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0) }, %struct.pspec zeroinitializer], align 16
@default_suffix_rules = internal global [83 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8* null], align 16
@default_variables = internal global [108 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.199, i32 0, i32 0), i8* null, i8* null], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"(%)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"$(AR) $(ARFLAGS) $@ $<\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.out\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"@rm -f $@ \0A cp $< $@\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%,v\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"test -f $@ || $(CO) $(COFLAGS) $< $@\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"RCS/%,v\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"s.%\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"$(GET) $(GFLAGS) $<\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"SCCS/s.%\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"$(LINK.o) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c".s\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"$(LINK.s) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c".S\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"$(LINK.S) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c".cc\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c".C\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"$(LINK.C) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c".f\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"$(LINK.f) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c".p\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"$(LINK.p) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c".F\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"$(LINK.F) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c".r\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"$(LINK.r) $^ $(LOADLIBES) $(LDLIBS) -o $@\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".mod\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"$(COMPILE.mod) -o $@ -e $@ $^\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c".def.sym\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"$(COMPILE.def) -o $@ $<\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c".sh\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"cat $< >$@ \0A chmod a+x $@\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".s.o\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"$(COMPILE.s) -o $@ $<\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c".S.o\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"$(COMPILE.S) -o $@ $<\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c".c.o\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"$(COMPILE.c) $< $(OUTPUT_OPTION)\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c".cc.o\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"$(COMPILE.cc) $< $(OUTPUT_OPTION)\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c".C.o\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"$(COMPILE.C) $< $(OUTPUT_OPTION)\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c".f.o\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"$(COMPILE.f) $< $(OUTPUT_OPTION)\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c".p.o\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"$(COMPILE.p) $< $(OUTPUT_OPTION)\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c".F.o\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"$(COMPILE.F) $< $(OUTPUT_OPTION)\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c".r.o\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"$(COMPILE.r) $< $(OUTPUT_OPTION)\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c".mod.o\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"$(COMPILE.mod) -o $@ $<\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c".c.ln\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"$(LINT.c) -C$* $<\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c".y.ln\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"$(YACC.y) $< \0A $(LINT.c) -C$* y.tab.c \0A $(RM) y.tab.c\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c".l.ln\00", align 1
@.str.65 = private unnamed_addr constant [71 x i8] c"@$(RM) $*.c \0A $(LEX.l) $< > $*.c \0A$(LINT.c) -i $*.c -o $@ \0A $(RM) $*.c\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c".y.c\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"$(YACC.y) $< \0A mv -f y.tab.c $@\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c".l.c\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"@$(RM) $@ \0A $(LEX.l) $< > $@\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c".F.f\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"$(PREPROCESS.F) $< $(OUTPUT_OPTION)\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c".r.f\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"$(PREPROCESS.r) $< $(OUTPUT_OPTION)\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c".l.r\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"$(LEX.l) $< > $@ \0A mv -f lex.yy.r $@\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c".S.s\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"$(PREPROCESS.S) $< > $@\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c".texinfo.info\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"$(MAKEINFO) $<\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c".texi.info\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c".tex.dvi\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"$(TEX) $<\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c".texinfo.dvi\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"$(TEXI2DVI) $<\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c".texi.dvi\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c".cweb.c\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"$(CTANGLE) $<\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c".web.p\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"$(TANGLE) $<\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c".cweb.tex\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"$(CWEAVE) $<\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c".web.tex\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"$(WEAVE) $<\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"ARFLAGS\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"g++\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"CPP\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"$(CC) -E\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"f77\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"F77\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"$(FC)\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"F77FLAGS\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"$(FFLAGS)\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"/usr/sccs/get\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"LD\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"LEX\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"lex\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"LINT\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"M2C\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"m2c\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"YACC\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"MAKEINFO\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"makeinfo\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"TEX\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"TEXI2DVI\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"texi2dvi\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"WEAVE\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"weave\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"CWEAVE\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"cweave\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"TANGLE\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"tangle\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"CTANGLE\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"ctangle\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"RM\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"rm -f\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"LINK.o\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"$(CC) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"COMPILE.c\00", align 1
@.str.147 = private unnamed_addr constant [46 x i8] c"$(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"LINK.c\00", align 1
@.str.149 = private unnamed_addr constant [54 x i8] c"$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"COMPILE.cc\00", align 1
@.str.151 = private unnamed_addr constant [49 x i8] c"$(C++) $(C++FLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"COMPILE.C\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"$(COMPILE.cc)\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"LINK.cc\00", align 1
@.str.155 = private unnamed_addr constant [57 x i8] c"$(C++) $(C++FLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"LINK.C\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"$(LINK.cc)\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"YACC.y\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"$(YACC) $(YFLAGS)\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"LEX.l\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"$(LEX) $(LFLAGS) -t\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"COMPILE.f\00", align 1
@.str.163 = private unnamed_addr constant [34 x i8] c"$(FC) $(FFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"LINK.f\00", align 1
@.str.165 = private unnamed_addr constant [42 x i8] c"$(FC) $(FFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"COMPILE.F\00", align 1
@.str.167 = private unnamed_addr constant [46 x i8] c"$(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"LINK.F\00", align 1
@.str.169 = private unnamed_addr constant [54 x i8] c"$(FC) $(FFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"COMPILE.r\00", align 1
@.str.171 = private unnamed_addr constant [44 x i8] c"$(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"LINK.r\00", align 1
@.str.173 = private unnamed_addr constant [52 x i8] c"$(FC) $(FFLAGS) $(RFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"COMPILE.def\00", align 1
@.str.175 = private unnamed_addr constant [45 x i8] c"$(M2C) $(M2FLAGS) $(DEFFLAGS) $(TARGET_ARCH)\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"COMPILE.mod\00", align 1
@.str.177 = private unnamed_addr constant [45 x i8] c"$(M2C) $(M2FLAGS) $(MODFLAGS) $(TARGET_ARCH)\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"COMPILE.p\00", align 1
@.str.179 = private unnamed_addr constant [46 x i8] c"$(PC) $(PFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"LINK.p\00", align 1
@.str.181 = private unnamed_addr constant [54 x i8] c"$(PC) $(PFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_ARCH)\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"LINK.s\00", align 1
@.str.183 = private unnamed_addr constant [43 x i8] c"$(CC) $(ASFLAGS) $(LDFLAGS) $(TARGET_MACH)\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"COMPILE.s\00", align 1
@.str.185 = private unnamed_addr constant [32 x i8] c"$(AS) $(ASFLAGS) $(TARGET_MACH)\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"LINK.S\00", align 1
@.str.187 = private unnamed_addr constant [55 x i8] c"$(CC) $(ASFLAGS) $(CPPFLAGS) $(LDFLAGS) $(TARGET_MACH)\00", align 1
@.str.188 = private unnamed_addr constant [10 x i8] c"COMPILE.S\00", align 1
@.str.189 = private unnamed_addr constant [47 x i8] c"$(CC) $(ASFLAGS) $(CPPFLAGS) $(TARGET_MACH) -c\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"PREPROCESS.S\00", align 1
@.str.191 = private unnamed_addr constant [21 x i8] c"$(CC) -E $(CPPFLAGS)\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"PREPROCESS.F\00", align 1
@.str.193 = private unnamed_addr constant [46 x i8] c"$(FC) $(FFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -F\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"PREPROCESS.r\00", align 1
@.str.195 = private unnamed_addr constant [44 x i8] c"$(FC) $(FFLAGS) $(RFLAGS) $(TARGET_ARCH) -F\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"LINT.c\00", align 1
@.str.197 = private unnamed_addr constant [48 x i8] c"$(LINT) $(LINTFLAGS) $(CPPFLAGS) $(TARGET_ARCH)\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"OUTPUT_OPTION\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"-o $@\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_default_suffixes() #0 {
  %1 = alloca i8*, align 8
  %2 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #3
  store %struct.file* %2, %struct.file** @suffix_file, align 8
  %3 = load i32, i32* @no_builtin_rules_flag, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %6, label %4

4:                                                ; preds = %0
  %5 = call %struct.variable* (i8*, i32, i8*, i32, i32, ...) bitcast (%struct.variable* (...)* @define_variable to %struct.variable* (i8*, i32, i8*, i32, i32, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef 8, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #3
  br label %13

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([122 x i8], [122 x i8]* @default_suffixes, i64 0, i64 0), i8** %1, align 8
  %7 = call %struct.nameseq* (i8**, i32, i64, ...) bitcast (%struct.nameseq* (...)* @parse_file_seq to %struct.nameseq* (i8**, i32, i64, ...)*)(i8** noundef nonnull %1, i32 noundef 0, i64 noundef 32) #3
  %8 = call %struct.nameseq* (%struct.nameseq*, i64, ...) bitcast (%struct.nameseq* (...)* @multi_glob to %struct.nameseq* (%struct.nameseq*, i64, ...)*)(%struct.nameseq* noundef %7, i64 noundef 32) #3
  %9 = load %struct.file*, %struct.file** @suffix_file, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i64 0, i32 2
  %11 = bitcast %struct.dep** %10 to %struct.nameseq**
  store %struct.nameseq* %8, %struct.nameseq** %11, align 8
  %12 = call %struct.variable* (i8*, i32, i8*, i32, i32, ...) bitcast (%struct.variable* (...)* @define_variable to %struct.variable* (i8*, i32, i8*, i32, i32, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 noundef 8, i8* noundef getelementptr inbounds ([122 x i8], [122 x i8]* @default_suffixes, i64 0, i64 0), i32 noundef 0, i32 noundef 0) #3
  br label %13

13:                                               ; preds = %6, %4
  ret void
}

declare dso_local %struct.file* @enter_file(...) #1

declare dso_local %struct.variable* @define_variable(...) #1

declare dso_local %struct.nameseq* @multi_glob(...) #1

declare dso_local %struct.nameseq* @parse_file_seq(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @install_default_implicit_rules() #0 {
  %1 = load i32, i32* @no_builtin_rules_flag, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  br label %42

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %8, %3
  %.0 = phi %struct.pspec* [ getelementptr inbounds ([3 x %struct.pspec], [3 x %struct.pspec]* @default_pattern_rules, i64 0, i64 0), %3 ], [ %9, %8 ]
  %5 = getelementptr inbounds %struct.pspec, %struct.pspec* %.0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %.not2 = icmp eq i8* %6, null
  br i1 %.not2, label %10, label %7

7:                                                ; preds = %4
  call void (%struct.pspec*, i32, ...) bitcast (void (...)* @install_pattern_rule to void (%struct.pspec*, i32, ...)*)(%struct.pspec* noundef %.0, i32 noundef 0) #3
  br label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.pspec, %struct.pspec* %.0, i64 1
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %15, %10
  %.1 = phi %struct.pspec* [ getelementptr inbounds ([5 x %struct.pspec], [5 x %struct.pspec]* @default_terminal_rules, i64 0, i64 0), %10 ], [ %16, %15 ]
  %12 = getelementptr inbounds %struct.pspec, %struct.pspec* %.1, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %.not3 = icmp eq i8* %13, null
  br i1 %.not3, label %17, label %14

14:                                               ; preds = %11
  call void (%struct.pspec*, i32, ...) bitcast (void (...)* @install_pattern_rule to void (%struct.pspec*, i32, ...)*)(%struct.pspec* noundef %.1, i32 noundef 1) #3
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.pspec, %struct.pspec* %.1, i64 1
  br label %11, !llvm.loop !6

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %40, %17
  %.01 = phi i8** [ getelementptr inbounds ([83 x i8*], [83 x i8*]* @default_suffix_rules, i64 0, i64 0), %17 ], [ %41, %40 ]
  %19 = load i8*, i8** %.01, align 8
  %.not4 = icmp eq i8* %19, null
  br i1 %.not4, label %.loopexit, label %20

20:                                               ; preds = %18
  %21 = load i8*, i8** %.01, align 8
  %22 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef %21) #3
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i64 0, i32 3
  %24 = load %struct.commands*, %struct.commands** %23, align 8
  %25 = icmp eq %struct.commands* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 56) #3
  %28 = getelementptr inbounds %struct.file, %struct.file* %22, i64 0, i32 3
  %29 = bitcast %struct.commands** %28 to i8**
  store i8* %27, i8** %29, align 8
  %30 = bitcast i8* %27 to i8**
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds i8*, i8** %.01, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %22, i64 0, i32 3
  %34 = load %struct.commands*, %struct.commands** %33, align 8
  %35 = getelementptr inbounds %struct.commands, %struct.commands* %34, i64 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %22, i64 0, i32 3
  %37 = load %struct.commands*, %struct.commands** %36, align 8
  %38 = getelementptr inbounds %struct.commands, %struct.commands* %37, i64 0, i32 4
  store i8** null, i8*** %38, align 8
  br label %39

39:                                               ; preds = %26, %20
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8*, i8** %.01, i64 2
  br label %18, !llvm.loop !7

.loopexit:                                        ; preds = %18
  br label %42

42:                                               ; preds = %.loopexit, %2
  ret void
}

declare dso_local void @install_pattern_rule(...) #1

declare dso_local i8* @xmalloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @define_default_variables() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i8** [ getelementptr inbounds ([108 x i8*], [108 x i8*]* @default_variables, i64 0, i64 0), %0 ], [ %10, %9 ]
  %2 = load i8*, i8** %.0, align 8
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %11, label %3

3:                                                ; preds = %1
  %4 = load i8*, i8** %.0, align 8
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #4
  %6 = getelementptr inbounds i8*, i8** %.0, i64 1
  %7 = load i8*, i8** %6, align 8
  %8 = call %struct.variable* (i8*, i64, i8*, i32, i32, ...) bitcast (%struct.variable* (...)* @define_variable to %struct.variable* (i8*, i64, i8*, i32, i32, ...)*)(i8* noundef %4, i64 noundef %5, i8* noundef %7, i32 noundef 0, i32 noundef 1) #3
  br label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8*, i8** %.0, i64 2
  br label %1, !llvm.loop !8

11:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
