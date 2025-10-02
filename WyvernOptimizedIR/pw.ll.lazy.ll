; ModuleID = './pw.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pw_node = type { i8*, i8*, i32, i8*, %struct.pw_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

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

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i8* @pwfnam(i8* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01.in = phi %struct.pw_node** [ @pwhead, %1 ], [ %13, %12 ]
  %.01 = load %struct.pw_node*, %struct.pw_node** %.01.in, align 8
  %.not = icmp eq %struct.pw_node* %.01, null
  br i1 %.not, label %14, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 1
  %10 = load i8*, i8** %9, align 8
  br label %27

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 4
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %25, %14
  %16 = call %struct.pw_node* @pwparse()
  %.not4 = icmp eq %struct.pw_node* %16, null
  br i1 %.not4, label %26, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i64 0, i32 1
  %24 = load i8*, i8** %23, align 8
  br label %27

25:                                               ; preds = %17
  br label %15, !llvm.loop !6

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %22, %8
  %.0 = phi i8* [ %10, %8 ], [ %24, %22 ], [ null, %26 ]
  ret i8* %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i8* @pwuid(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %11, %1
  %.01.in = phi %struct.pw_node** [ @pwhead, %1 ], [ %12, %11 ]
  %.01 = load %struct.pw_node*, %struct.pw_node** %.01.in, align 8
  %.not = icmp eq %struct.pw_node* %.01, null
  br i1 %.not, label %13, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 0
  %9 = load i8*, i8** %8, align 8
  br label %25

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 4
  br label %2, !llvm.loop !7

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %23, %13
  %15 = call %struct.pw_node* @pwparse()
  %.not4 = icmp eq %struct.pw_node* %15, null
  br i1 %.not4, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %15, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %15, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %25

23:                                               ; preds = %16
  br label %14, !llvm.loop !8

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %20, %7
  %.0 = phi i8* [ %9, %7 ], [ %22, %20 ], [ null, %24 ]
  ret i8* %.0
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i8* @tilde(i8* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.01.in = phi %struct.pw_node** [ @pwhead, %1 ], [ %13, %12 ]
  %.01 = load %struct.pw_node*, %struct.pw_node** %.01.in, align 8
  %.not = icmp eq %struct.pw_node* %.01, null
  br i1 %.not, label %14, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 3
  %10 = load i8*, i8** %9, align 8
  br label %27

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %.01, i64 0, i32 4
  br label %2, !llvm.loop !9

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %25, %14
  %16 = call %struct.pw_node* @pwparse()
  %.not4 = icmp eq %struct.pw_node* %16, null
  br i1 %.not4, label %26, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i64 0, i32 3
  %24 = load i8*, i8** %23, align 8
  br label %27

25:                                               ; preds = %17
  br label %15, !llvm.loop !10

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %22, %8
  %.0 = phi i8* [ %10, %8 ], [ %24, %22 ], [ null, %26 ]
  ret i8* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @fullname(i8* noundef %0) #3 {
  %2 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %0) #11
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 44) #10
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  store i8 0, i8* %3, align 1
  br label %5

5:                                                ; preds = %4, %1
  %6 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 40) #10
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %7, %5
  %9 = call i16** @__ctype_b_loc() #12
  %10 = load i16*, i16** %9, align 8
  %11 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), align 16
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 2048
  %.not2 = icmp eq i16 %15, 0
  br i1 %.not2, label %22, label %16

16:                                               ; preds = %8
  %17 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 noundef 45) #10
  %.not3 = icmp eq i8* %17, null
  br i1 %.not3, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %17, i64 1
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %18
  %.0 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), %20 ]
  br label %22

22:                                               ; preds = %21, %8
  %.1 = phi i8* [ %.0, %21 ], [ getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), %8 ]
  ret i8* %.1
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local noalias %struct.pw_node* @pwparse() #6 {
  store i32 1, i32* @pwparse.pw_eof, align 4
  ret %struct.pw_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @res_fname(i8* noundef %0) #3 {
  %2 = alloca [512 x i8], align 16
  %3 = load i32, i32* @debug, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef %0) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* @res_fname.pathlength, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i8*, i8** @fnlist, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #11
  store %struct._IO_FILE* %12, %struct._IO_FILE** @res_fname.file, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* @debug, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** @fnlist, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18) #11
  br label %20

20:                                               ; preds = %17, %14
  br label %26

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %23 = call i32 @fseek(%struct._IO_FILE* noundef %22, i64 noundef 0, i32 noundef 2) #11
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %25 = call i64 @ftell(%struct._IO_FILE* noundef %24) #11
  br label %26

26:                                               ; preds = %21, %20
  %storemerge = phi i64 [ %25, %21 ], [ -1, %20 ]
  store i64 %storemerge, i64* @res_fname.pathlength, align 8
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i64, i64* @res_fname.pathlength, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %129

31:                                               ; preds = %27
  %32 = load i64, i64* @res_fname.pathlength, align 8
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %34 = call i8* @strcpy(i8* noundef nonnull %33, i8* noundef nonnull dereferenceable(1) %0) #11
  %strlen = call i64 @strlen(i8* nonnull %33)
  %endptr = getelementptr [512 x i8], [512 x i8]* %2, i64 0, i64 %strlen
  %35 = bitcast i8* %endptr to i16*
  store i16 9, i16* %35, align 1
  br label %36

36:                                               ; preds = %101, %31
  %.06 = phi i64 [ 0, %31 ], [ %.17, %101 ]
  %.04 = phi i64 [ %32, %31 ], [ %.15, %101 ]
  %.03 = phi i32 [ undef, %31 ], [ %.2, %101 ]
  %37 = add nsw i64 %.04, %.06
  %38 = add nsw i64 %37, 1
  %39 = sdiv i64 %38, 2
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %41 = call i32 @fseek(%struct._IO_FILE* noundef %40, i64 noundef %39, i32 noundef 0) #11
  %.off = add i64 %37, 2
  %42 = icmp ult i64 %.off, 3
  br i1 %42, label %53, label %43

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %51, %43
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %46 = call i32 @getc(%struct._IO_FILE* noundef %45) #11
  %.not17 = icmp eq i32 %46, -1
  br i1 %.not17, label %49, label %47

47:                                               ; preds = %44
  %48 = icmp ne i32 %46, 10
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i1 [ false, %44 ], [ %48, %47 ]
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  br label %44, !llvm.loop !11

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %36
  %.1 = phi i32 [ %46, %52 ], [ %.03, %36 ]
  br label %54

54:                                               ; preds = %90, %53
  %.08 = phi i8* [ %33, %53 ], [ %92, %90 ]
  %.2 = phi i32 [ %.1, %53 ], [ %62, %90 ]
  %.02 = phi i32 [ 0, %53 ], [ %91, %90 ]
  %55 = icmp eq i32 %.02, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %54
  %57 = load i8, i8* %.08, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %102

60:                                               ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %62 = call i32 @getc(%struct._IO_FILE* noundef %61) #11
  %63 = call i16** @__ctype_b_loc() #12
  %64 = load i16*, i16** %63, align 8
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds i16, i16* %64, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = and i16 %67, 256
  %.not12 = icmp eq i16 %68, 0
  br i1 %.not12, label %71, label %69

69:                                               ; preds = %60
  %70 = add nsw i32 %62, 32
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ %62, %71 ]
  %74 = call i16** @__ctype_b_loc() #12
  %75 = load i16*, i16** %74, align 8
  %76 = load i8, i8* %.08, align 1
  %77 = sext i8 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = and i16 %79, 256
  %.not13 = icmp eq i16 %80, 0
  br i1 %.not13, label %85, label %81

81:                                               ; preds = %72
  %82 = load i8, i8* %.08, align 1
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %83, 32
  br label %88

85:                                               ; preds = %72
  %86 = load i8, i8* %.08, align 1
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i32 [ %84, %81 ], [ %87, %85 ]
  br label %90

90:                                               ; preds = %88
  %91 = sub nsw i32 %73, %89
  %92 = getelementptr inbounds i8, i8* %.08, i64 1
  br label %54, !llvm.loop !12

93:                                               ; preds = %54
  %.not = icmp slt i64 %.06, %39
  br i1 %.not, label %95, label %94

94:                                               ; preds = %93
  br label %129

95:                                               ; preds = %93
  %.not11 = icmp eq i32 %.2, -1
  br i1 %.not11, label %99, label %96

96:                                               ; preds = %95
  %97 = icmp slt i32 %.02, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %101

99:                                               ; preds = %96, %95
  %100 = add nsw i64 %39, -1
  br label %101

101:                                              ; preds = %99, %98
  %.17 = phi i64 [ %39, %98 ], [ %.06, %99 ]
  %.15 = phi i64 [ %.04, %98 ], [ %100, %99 ]
  br label %36

102:                                              ; preds = %59
  br label %103

103:                                              ; preds = %111, %102
  %.01 = phi i8* [ %33, %102 ], [ %113, %111 ]
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %105 = call i32 @getc(%struct._IO_FILE* noundef %104) #11
  %.not15 = icmp eq i32 %105, -1
  br i1 %.not15, label %109, label %106

106:                                              ; preds = %103
  %.not16 = icmp eq i32 %105, 9
  br i1 %.not16, label %109, label %107

107:                                              ; preds = %106
  %108 = icmp ne i32 %105, 10
  br label %109

109:                                              ; preds = %107, %106, %103
  %110 = phi i1 [ false, %106 ], [ false, %103 ], [ %108, %107 ]
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = trunc i32 %105 to i8
  %113 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %112, i8* %.01, align 1
  br label %103, !llvm.loop !13

114:                                              ; preds = %109
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %116 = icmp eq i8* %.01, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %129

118:                                              ; preds = %114
  store i8 0, i8* %.01, align 1
  %119 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %120 = call i64 @strlen(i8* noundef nonnull %119) #10
  %121 = add i64 %120, 1
  %122 = and i64 %121, 4294967295
  %123 = call noalias i8* @malloc(i64 noundef %122) #11
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %129

126:                                              ; preds = %118
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0
  %128 = call i8* @strcpy(i8* noundef nonnull %123, i8* noundef nonnull %127) #11
  br label %129

129:                                              ; preds = %126, %125, %117, %94, %30
  %.0 = phi i8* [ null, %30 ], [ null, %117 ], [ null, %125 ], [ %123, %126 ], [ null, %94 ]
  ret i8* %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #7

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #7

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #7

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #7

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #4

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }

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
