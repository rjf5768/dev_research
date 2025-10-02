; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/pw.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pw_node = type { i8*, i8*, i32, i8*, %struct.pw_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@pwhead = dso_local global %struct.pw_node* null, align 8
@fullname.fname = internal global [512 x i8] zeroinitializer, align 16
@pwparse.pw_eof = internal global i32 0, align 4
@res_fname.pathlength = internal global i64 0, align 8
@res_fname.file = internal global %struct._IO_FILE* null, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"res_fname: looking for '%s'\0A\00", align 1
@fnlist = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @pwfnam(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pw_node*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef %10, i8* noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %42

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %22, i32 0, i32 4
  %24 = load %struct.pw_node*, %struct.pw_node** %23, align 8
  store %struct.pw_node* %24, %struct.pw_node** %4, align 8
  br label %6, !llvm.loop !4

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %40, %25
  %27 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %27, %struct.pw_node** %4, align 8
  %28 = icmp ne %struct.pw_node* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %32 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* noundef %30, i8* noundef %33) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %38 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %42

40:                                               ; preds = %29
  br label %26, !llvm.loop !6

41:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %36, %16
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @pwuid(i32 noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pw_node*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %17 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %40

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %22 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %21, i32 0, i32 4
  %23 = load %struct.pw_node*, %struct.pw_node** %22, align 8
  store %struct.pw_node* %23, %struct.pw_node** %4, align 8
  br label %6, !llvm.loop !7

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %38, %24
  %26 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %26, %struct.pw_node** %4, align 8
  %27 = icmp ne %struct.pw_node* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %31 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %36 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %2, align 8
  br label %40

38:                                               ; preds = %28
  br label %25, !llvm.loop !8

39:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %34, %15
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @tilde(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pw_node*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* noundef %10, i8* noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %42

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %22, i32 0, i32 4
  %24 = load %struct.pw_node*, %struct.pw_node** %23, align 8
  store %struct.pw_node* %24, %struct.pw_node** %4, align 8
  br label %6, !llvm.loop !9

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %40, %25
  %27 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %27, %struct.pw_node** %4, align 8
  %28 = icmp ne %struct.pw_node* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %32 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* noundef %30, i8* noundef %33) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %38 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %42

40:                                               ; preds = %29
  br label %26, !llvm.loop !10

41:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %36, %16
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @fullname(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strcpy(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8* noundef %4) #6
  %6 = call i8* @strchr(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 44) #5
  store i8* %6, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i8* @strchr(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 40) #5
  store i8* %11, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i16** @__ctype_b_loc() #7
  %17 = load i16*, i16** %16, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8** %3, align 8
  %18 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %17, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 2048
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = call i8* @strchr(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 45) #5
  store i8* %27, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pw_node* @pwparse() #0 {
  %1 = alloca %struct.pw_node*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  store i32 1, i32* @pwparse.pw_eof, align 4
  ret %struct.pw_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @res_fname(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* @res_fname.pathlength, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i8*, i8** @fnlist, align 8
  %23 = call noalias %struct._IO_FILE* @fopen(i8* noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** @res_fname.file, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @debug, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** @fnlist, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %29)
  br label %31

31:                                               ; preds = %28, %25
  store i64 -1, i64* @res_fname.pathlength, align 8
  br label %37

32:                                               ; preds = %21
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %34 = call i32 @fseek(%struct._IO_FILE* noundef %33, i64 noundef 0, i32 noundef 2)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %36 = call i64 @ftell(%struct._IO_FILE* noundef %35)
  store i64 %36, i64* @res_fname.pathlength, align 8
  br label %37

37:                                               ; preds = %32, %31
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i64, i64* @res_fname.pathlength, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %186

42:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  %43 = load i64, i64* @res_fname.pathlength, align 8
  store i64 %43, i64* %6, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i8* @strcpy(i8* noundef %45, i8* noundef %46) #6
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @strcat(i8* noundef %48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  br label %50

50:                                               ; preds = %147, %42
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = add nsw i64 %53, 1
  %55 = sdiv i64 %54, 2
  store i64 %55, i64* %5, align 8
  store i64 %55, i64* %4, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @fseek(%struct._IO_FILE* noundef %56, i64 noundef %57, i32 noundef 0)
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %71, %61
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %64 = call i32 @getc(%struct._IO_FILE* noundef %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 10
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i1 [ false, %62 ], [ %68, %66 ]
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %62, !llvm.loop !11

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %50
  store i32 0, i32* %10, align 4
  %74 = load i8*, i8** %12, align 8
  store i8* %74, i8** %8, align 8
  br label %75

75:                                               ; preds = %128, %73
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %148

84:                                               ; preds = %78
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %86 = call i32 @getc(%struct._IO_FILE* noundef %85)
  store i32 %86, i32* %9, align 4
  %87 = call i16** @__ctype_b_loc() #7
  %88 = load i16*, i16** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 256
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 65
  %99 = add nsw i32 %98, 97
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %99, %96 ], [ %101, %100 ]
  %104 = call i16** @__ctype_b_loc() #7
  %105 = load i16*, i16** %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %105, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 256
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = sub nsw i32 %118, 65
  %120 = add nsw i32 %119, 97
  br label %125

121:                                              ; preds = %102
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  br label %125

125:                                              ; preds = %121, %115
  %126 = phi i32 [ %120, %115 ], [ %124, %121 ]
  %127 = sub nsw i32 %103, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  br label %75, !llvm.loop !12

131:                                              ; preds = %75
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i8* null, i8** %2, align 8
  br label %186

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i64, i64* %5, align 8
  store i64 %143, i64* %7, align 8
  br label %147

144:                                              ; preds = %139, %136
  %145 = load i64, i64* %5, align 8
  %146 = sub nsw i64 %145, 1
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %144, %142
  br label %50

148:                                              ; preds = %83
  br label %149

149:                                              ; preds = %161, %148
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %151 = call i32 @getc(%struct._IO_FILE* noundef %150)
  store i32 %151, i32* %9, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 9
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 10
  br label %159

159:                                              ; preds = %156, %153, %149
  %160 = phi i1 [ false, %153 ], [ false, %149 ], [ %158, %156 ]
  br i1 %160, label %161, label %166

161:                                              ; preds = %159
  %162 = load i32, i32* %9, align 4
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %12, align 8
  store i8 %163, i8* %164, align 1
  br label %149, !llvm.loop !13

166:                                              ; preds = %159
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i8* null, i8** %2, align 8
  br label %186

171:                                              ; preds = %166
  %172 = load i8*, i8** %12, align 8
  store i8 0, i8* %172, align 1
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %174 = call i64 @strlen(i8* noundef %173) #5
  %175 = trunc i64 %174 to i32
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = call noalias i8* @malloc(i64 noundef %177) #6
  store i8* %178, i8** %12, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i8* null, i8** %2, align 8
  br label %186

181:                                              ; preds = %171
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %184 = call i8* @strcpy(i8* noundef %182, i8* noundef %183) #6
  %185 = load i8*, i8** %12, align 8
  store i8* %185, i8** %2, align 8
  br label %186

186:                                              ; preds = %181, %180, %170, %135, %41
  %187 = load i8*, i8** %2, align 8
  ret i8* %187
}

declare dso_local i32 @printf(i8* noundef, ...) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #4

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
