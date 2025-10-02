; ModuleID = './makedent.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.strchartype = type { i8*, i8*, i8* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }

@hashheader = external dso_local global %struct.hashheader, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = external dso_local global i32, align 4
@laststringch = external dso_local global i32, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = external dso_local global %struct.strchartype*, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @makedent(i8* noundef %0, i32 noundef %1, %struct.dent* nocapture noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 0
  store %struct.dent* null, %struct.dent** %16, align 8
  %17 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  store i64 67108864, i64* %17, align 8
  %18 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %19 = sext i8 %18 to i32
  %20 = call i8* @index(i8* noundef %0, i32 noundef %19) #13
  %.not = icmp eq i8* %20, null
  br i1 %.not, label %22, label %21

21:                                               ; preds = %15
  store i8 0, i8* %20, align 1
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %24 = call i32 @strtoichar(i8* noundef nonnull %23, i8* noundef %0, i32 noundef 100, i32 noundef 1)
  %.not3 = icmp eq i32 %24, 0
  br i1 %.not3, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %27 = call i32 @ichartostr(i8* noundef %0, i8* noundef nonnull %26, i32 noundef %1, i32 noundef 1)
  %.not4 = icmp eq i32 %27, 0
  br i1 %.not4, label %31, label %28

28:                                               ; preds = %25, %22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i32 noundef 158, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %128

31:                                               ; preds = %25
  %32 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  br label %33

33:                                               ; preds = %57, %31
  %.02 = phi i8* [ %32, %31 ], [ %58, %57 ]
  %34 = load i8, i8* %.02, align 1
  %.not5 = icmp eq i8 %34, 0
  br i1 %.not5, label %59, label %35

35:                                               ; preds = %33
  %36 = load i8, i8* %.02, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 23, i64 %37
  %39 = load i8, i8* %38, align 1
  %.not8 = icmp eq i8 %39, 0
  br i1 %.not8, label %40, label %56

40:                                               ; preds = %35
  %41 = load i8, i8* %.02, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 26, i64 %42
  %44 = load i8, i8* %43, align 1
  %.not9 = icmp eq i8 %44, 0
  br i1 %.not9, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %47 = icmp eq i8* %.02, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %.02, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %45, %40
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0) #14
  br label %128

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %33, !llvm.loop !4

59:                                               ; preds = %33
  %60 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #13
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %63 = call i64 @whatcap(i8* noundef nonnull %62)
  %64 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  %67 = icmp sgt i32 %61, 99
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i32 noundef 188, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %128

71:                                               ; preds = %59
  %72 = add i32 %61, 1
  %73 = call i8* @mymalloc(i32 noundef %72) #15
  %74 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = icmp eq i8* %73, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #14
  br label %128

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %81, i8* noundef nonnull dereferenceable(1) %0) #15
  %83 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, 805306368
  %.not6 = icmp eq i64 %85, 805306368
  br i1 %.not6, label %89, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  %88 = load i8*, i8** %87, align 8
  call void @chupcase(i8* noundef %88)
  br label %89

89:                                               ; preds = %86, %79
  %90 = icmp eq i8* %20, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  br label %128

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, i8* %20, i64 1
  br label %94

94:                                               ; preds = %126, %92
  %.01 = phi i8* [ %93, %92 ], [ %.1, %126 ]
  %95 = load i8, i8* %.01, align 1
  %.not7 = icmp eq i8 %95, 0
  br i1 %.not7, label %99, label %96

96:                                               ; preds = %94
  %97 = load i8, i8* %.01, align 1
  %98 = icmp ne i8 %97, 10
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i1 [ false, %94 ], [ %98, %96 ]
  br i1 %100, label %101, label %127

101:                                              ; preds = %99
  %102 = load i8, i8* %.01, align 1
  %103 = zext i8 %102 to i64
  %104 = add nuw nsw i64 %103, 4294967231
  %105 = icmp ugt i8 %102, 64
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = icmp ult i8 %102, 92
  br i1 %107, label %108, label %114

108:                                              ; preds = %106
  %109 = and i64 %104, 4294967295
  %110 = shl i64 1, %109
  %111 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, %110
  store i64 %113, i64* %111, align 8
  br label %119

114:                                              ; preds = %106, %101
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i8, i8* %.01, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 noundef %117) #14
  br label %119

119:                                              ; preds = %114, %108
  %120 = getelementptr inbounds i8, i8* %.01, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %123 = icmp eq i8 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = getelementptr inbounds i8, i8* %.01, i64 2
  br label %126

126:                                              ; preds = %124, %119
  %.1 = phi i8* [ %125, %124 ], [ %120, %119 ]
  br label %94, !llvm.loop !6

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127, %91, %76, %68, %52, %28
  %.0 = phi i32 [ -1, %28 ], [ -1, %52 ], [ -1, %68 ], [ -1, %76 ], [ 0, %91 ], [ 0, %127 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @index(i8* noundef, i32 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @strtoichar(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #3 {
  br label %5

5:                                                ; preds = %34, %4
  %.02 = phi i32 [ %2, %4 ], [ %6, %34 ]
  %.01 = phi i8* [ %1, %4 ], [ %36, %34 ]
  %.0 = phi i8* [ %0, %4 ], [ %.1, %34 ]
  %6 = add nsw i32 %.02, -1
  %7 = icmp sgt i32 %.02, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i8, i8* %.01, align 1
  %10 = icmp ne i8 %9, 0
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %37

13:                                               ; preds = %11
  %14 = load i8, i8* %.01, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, i8* %16, align 1
  %.not = icmp eq i8 %17, 0
  br i1 %.not, label %24, label %18

18:                                               ; preds = %13
  %19 = call i32 @stringcharlen(i8* noundef nonnull %.01, i32 noundef %3)
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %21
  %.03 = phi i32 [ %19, %21 ], [ 1, %22 ]
  br label %24

24:                                               ; preds = %23, %13
  %.14 = phi i32 [ %.03, %23 ], [ 1, %13 ]
  %25 = phi i1 [ %20, %23 ], [ false, %13 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load i32, i32* @laststringch, align 4
  %28 = trunc i32 %27 to i8
  %29 = xor i8 %28, -128
  br label %33

30:                                               ; preds = %24
  %31 = load i8, i8* %.01, align 1
  %32 = and i8 %31, 127
  br label %33

33:                                               ; preds = %30, %26
  %storemerge = phi i8 [ %32, %30 ], [ %29, %26 ]
  store i8 %storemerge, i8* %.0, align 1
  br label %34

34:                                               ; preds = %33
  %.1 = getelementptr inbounds i8, i8* %.0, i64 1
  %35 = sext i32 %.14 to i64
  %36 = getelementptr inbounds i8, i8* %.01, i64 %35
  br label %5, !llvm.loop !7

37:                                               ; preds = %11
  store i8 0, i8* %.0, align 1
  %38 = icmp slt i32 %.02, 2
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @ichartostr(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #3 {
  br label %5

5:                                                ; preds = %50, %4
  %.05 = phi i32 [ undef, %4 ], [ %.4, %50 ]
  %.03 = phi i32 [ %2, %4 ], [ %6, %50 ]
  %.01 = phi i8* [ %1, %4 ], [ %.12, %50 ]
  %.0 = phi i8* [ %0, %4 ], [ %.2, %50 ]
  %6 = add nsw i32 %.03, -1
  %7 = icmp sgt i32 %.03, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.01, i64 1
  %10 = load i8, i8* %.01, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i8 %10, 0
  br label %13

13:                                               ; preds = %8, %5
  %.16 = phi i32 [ %11, %8 ], [ %.05, %5 ]
  %.12 = phi i8* [ %9, %8 ], [ %.01, %5 ]
  %14 = phi i1 [ %12, %8 ], [ false, %5 ]
  br i1 %14, label %15, label %51

15:                                               ; preds = %13
  %16 = icmp slt i32 %.16, 128
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = trunc i32 %.16 to i8
  %19 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 %18, i8* %.0, align 1
  br label %50

20:                                               ; preds = %15
  %21 = add nsw i32 %.16, -128
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %22, label %41

22:                                               ; preds = %20
  %23 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 12), align 4
  br label %24

24:                                               ; preds = %39, %22
  %.08 = phi i32 [ %23, %22 ], [ %25, %39 ]
  %25 = add nsw i32 %.08, -1
  %26 = icmp sgt i32 %.08, 0
  br i1 %26, label %27, label %.loopexit

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 30, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @defdupchar, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = sext i32 %25 to i64
  %35 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 29, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, %21
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %40

39:                                               ; preds = %33, %27
  br label %24, !llvm.loop !8

.loopexit:                                        ; preds = %24
  br label %40

40:                                               ; preds = %.loopexit, %38
  %.27 = phi i32 [ %25, %38 ], [ %21, %.loopexit ]
  br label %41

41:                                               ; preds = %40, %20
  %.3 = phi i32 [ %21, %20 ], [ %.27, %40 ]
  %42 = zext i32 %.3 to i64
  %43 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 28, i64 %42, i64 0
  br label %44

44:                                               ; preds = %46, %41
  %.04 = phi i8* [ %43, %41 ], [ %48, %46 ]
  %.1 = phi i8* [ %.0, %41 ], [ %47, %46 ]
  %45 = load i8, i8* %.04, align 1
  store i8 %45, i8* %.1, align 1
  %.not11 = icmp eq i8 %45, 0
  br i1 %.not11, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds i8, i8* %.1, i64 1
  %48 = getelementptr inbounds i8, i8* %.04, i64 1
  br label %44, !llvm.loop !9

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %17
  %.4 = phi i32 [ %.16, %17 ], [ %.3, %49 ]
  %.2 = phi i8* [ %19, %17 ], [ %.1, %49 ]
  br label %5, !llvm.loop !10

51:                                               ; preds = %13
  store i8 0, i8* %.0, align 1
  %52 = icmp slt i32 %.03, 2
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @whatcap(i8* nocapture noundef readonly %0) #5 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i8* [ %0, %1 ], [ %12, %11 ]
  %3 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %.loopexit2, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %.01, align 1
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 25, i64 %6
  %8 = load i8, i8* %7, align 1
  %.not12 = icmp eq i8 %8, 0
  br i1 %.not12, label %10, label %9

9:                                                ; preds = %4
  br label %13

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %2, !llvm.loop !11

.loopexit2:                                       ; preds = %2
  br label %13

13:                                               ; preds = %.loopexit2, %9
  %14 = load i8, i8* %.01, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %51

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %27, %17
  %.1 = phi i8* [ %.01, %17 ], [ %28, %27 ]
  %19 = load i8, i8* %.1, align 1
  %.not7 = icmp eq i8 %19, 0
  br i1 %.not7, label %.loopexit, label %20

20:                                               ; preds = %18
  %21 = load i8, i8* %.1, align 1
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %22
  %24 = load i8, i8* %23, align 1
  %.not11 = icmp eq i8 %24, 0
  br i1 %.not11, label %26, label %25

25:                                               ; preds = %20
  br label %29

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %18, !llvm.loop !12

.loopexit:                                        ; preds = %18
  br label %29

29:                                               ; preds = %.loopexit, %25
  %30 = load i8, i8* %.1, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i8, i8* %0, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %34
  %36 = load i8, i8* %35, align 1
  %.not8 = icmp eq i8 %36, 0
  br i1 %.not8, label %49, label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %47, %37
  %.pn = phi i8* [ %0, %37 ], [ %.2, %47 ]
  %.2 = getelementptr inbounds i8, i8* %.pn, i64 1
  %39 = load i8, i8* %.2, align 1
  %.not9 = icmp eq i8 %39, 0
  br i1 %.not9, label %48, label %40

40:                                               ; preds = %38
  %41 = load i8, i8* %.2, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %42
  %44 = load i8, i8* %43, align 1
  %.not10 = icmp eq i8 %44, 0
  br i1 %.not10, label %46, label %45

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  br label %38, !llvm.loop !13

48:                                               ; preds = %38
  br label %51

49:                                               ; preds = %32
  br label %51

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %49, %48, %45, %16
  %.0 = phi i64 [ 268435456, %16 ], [ 805306368, %45 ], [ 536870912, %48 ], [ 0, %49 ], [ 805306368, %50 ]
  ret i64 %.0
}

declare dso_local i8* @mymalloc(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @chupcase(i8* noundef %0) #0 {
  %2 = call i8* @strtosichar(i8* noundef %0, i32 noundef 1)
  call void @upcase(i8* noundef %2)
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #13
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 1
  %6 = call i32 @ichartostr(i8* noundef %0, i8* noundef %2, i32 noundef %5, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @addvheader(%struct.dent* nocapture noundef %0) #0 {
  %2 = call i8* @mymalloc(i32 noundef 24) #15
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #14
  br label %50

9:                                                ; preds = %1
  %10 = bitcast %struct.dent* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %11 = getelementptr inbounds i8, i8* %2, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 805306368
  %.not = icmp eq i64 %14, 805306368
  br i1 %.not, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i8**
  store i8* null, i8** %17, align 8
  br label %41

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, i8* %2, i64 8
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %21) #13
  %23 = trunc i64 %22 to i32
  %24 = add i32 %23, 1
  %25 = call i8* @mymalloc(i32 noundef %24) #15
  %26 = getelementptr inbounds i8, i8* %2, i64 8
  %27 = bitcast i8* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = icmp eq i8* %25, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %32) #14
  call void @myfree(i8* noundef nonnull %2) #15
  br label %50

34:                                               ; preds = %18
  %35 = getelementptr inbounds i8, i8* %2, i64 8
  %36 = bitcast i8* %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %37, i8* noundef nonnull dereferenceable(1) %39) #15
  br label %41

41:                                               ; preds = %34, %15
  %42 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %43 = load i8*, i8** %42, align 8
  call void @chupcase(i8* noundef %43)
  %44 = bitcast %struct.dent* %0 to i8**
  store i8* %2, i8** %44, align 8
  %45 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %46, -1879048193
  %48 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %49 = or i64 %47, 1342177280
  store i64 %49, i64* %48, align 8
  br label %50

50:                                               ; preds = %41, %29, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %41 ], [ -1, %29 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare dso_local void @myfree(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @combinecaps(%struct.dent* nocapture noundef %0, %struct.dent* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 1879048192
  %6 = icmp eq i64 %5, 1342177280
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %17, %7
  %.02 = phi %struct.dent* [ %0, %7 ], [ %14, %17 ]
  %.01 = phi i32 [ 0, %7 ], [ %15, %17 ]
  %9 = getelementptr inbounds %struct.dent, %struct.dent* %.02, i64 0, i32 2, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %10, 1073741824
  %.not = icmp eq i64 %11, 0
  br i1 %.not, label %.loopexit, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dent, %struct.dent* %.02, i64 0, i32 0
  %14 = load %struct.dent*, %struct.dent** %13, align 8
  %15 = call i32 @combine_two_entries(%struct.dent* noundef %0, %struct.dent* noundef %14, %struct.dent* noundef %1)
  %.not8 = icmp eq i32 %15, 0
  br i1 %.not8, label %17, label %16

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12
  br label %8, !llvm.loop !14

.loopexit:                                        ; preds = %8
  br label %18

18:                                               ; preds = %.loopexit, %16
  %.13 = phi %struct.dent* [ %14, %16 ], [ %.02, %.loopexit ]
  %.1 = phi i32 [ %15, %16 ], [ %.01, %.loopexit ]
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @combine_two_entries(%struct.dent* noundef %0, %struct.dent* noundef %0, %struct.dent* noundef %1)
  br label %21

21:                                               ; preds = %19, %18
  %.24 = phi %struct.dent* [ %.13, %18 ], [ %0, %19 ]
  %.2 = phi i32 [ %.1, %18 ], [ %20, %19 ]
  %22 = icmp eq i32 %.2, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %21
  call void @forcevheader(%struct.dent* noundef %0, %struct.dent* noundef %.24, %struct.dent* noundef %1)
  %24 = call i8* @mymalloc(i32 noundef 24) #15
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29) #14
  br label %69

31:                                               ; preds = %23
  %32 = bitcast %struct.dent* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %24, i8* noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false)
  %33 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 0
  %34 = load %struct.dent*, %struct.dent** %33, align 8
  %35 = bitcast i8* %24 to %struct.dent**
  store %struct.dent* %34, %struct.dent** %35, align 8
  %36 = bitcast %struct.dent* %0 to i8**
  store i8* %24, i8** %36, align 8
  %37 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, 1073741824
  %40 = getelementptr inbounds i8, i8* %24, i64 16
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, 1073741824
  store i64 %46, i64* %44, align 8
  call void @combineaffixes(%struct.dent* noundef %0, %struct.dent* noundef %1)
  %47 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, 134217728
  %50 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, 805306368
  %56 = icmp eq i64 %55, 805306368
  br i1 %56, label %57, label %62

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %24, i64 8
  %61 = bitcast i8* %60 to i8**
  store i8* %59, i8** %61, align 8
  br label %67

62:                                               ; preds = %31
  %63 = getelementptr inbounds i8, i8* %24, i64 8
  %64 = bitcast i8* %63 to i8**
  store i8* null, i8** %64, align 8
  %65 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %66 = load i8*, i8** %65, align 8
  call void @myfree(i8* noundef %66) #15
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %21
  br label %69

69:                                               ; preds = %68, %26
  %.0 = phi i32 [ -1, %26 ], [ %.2, %68 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @combine_two_entries(%struct.dent* nocapture noundef %0, %struct.dent* nocapture noundef %1, %struct.dent* nocapture noundef %2) #0 {
  %4 = call i32 @acoversb(%struct.dent* noundef %1, %struct.dent* noundef %2)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %20, label %5

5:                                                ; preds = %3
  call void @combineaffixes(%struct.dent* noundef %1, %struct.dent* noundef %2)
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = and i64 %7, 134217728
  %9 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = or i64 %10, %8
  store i64 %11, i64* %9, align 8
  %12 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 134217728
  %15 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %14
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  call void @myfree(i8* noundef %19) #15
  br label %64

20:                                               ; preds = %3
  %21 = call i32 @acoversb(%struct.dent* noundef %2, %struct.dent* noundef %1)
  %.not1 = icmp eq i32 %21, 0
  br i1 %.not1, label %63, label %22

22:                                               ; preds = %20
  call void @combineaffixes(%struct.dent* noundef %2, %struct.dent* noundef %1)
  %23 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, 1207959552
  %26 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = and i64 %28, 134217728
  %30 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, %29
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 0
  %34 = load %struct.dent*, %struct.dent** %33, align 8
  %35 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 0
  store %struct.dent* %34, %struct.dent** %35, align 8
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %.not2 = icmp eq i8* %37, null
  br i1 %.not2, label %44, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %40, i8* noundef nonnull dereferenceable(1) %42) #15
  br label %44

44:                                               ; preds = %38, %22
  %45 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  %46 = load i8*, i8** %45, align 8
  call void @myfree(i8* noundef %46) #15
  %47 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = bitcast %struct.dent* %1 to i8*
  %51 = bitcast %struct.dent* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %50, i8* noundef nonnull align 8 dereferenceable(24) %51, i64 24, i1 false)
  %52 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, 805306368
  %55 = icmp eq i64 %54, 805306368
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 1879048192
  %.not3 = icmp eq i64 %59, 1342177280
  br i1 %.not3, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 @addvheader(%struct.dent* noundef %0)
  br label %62

62:                                               ; preds = %60, %56, %44
  br label %64

63:                                               ; preds = %20
  br label %64

64:                                               ; preds = %63, %62, %5
  %.0 = phi i32 [ 1, %5 ], [ 1, %62 ], [ 0, %63 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @forcevheader(%struct.dent* nocapture noundef %0, %struct.dent* nocapture noundef readonly %1, %struct.dent* nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 1879048192
  %7 = icmp eq i64 %6, 268435456
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = xor i64 %10, %12
  %14 = and i64 %13, 134217728
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %24

17:                                               ; preds = %8, %3
  %18 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 1879048192
  %.not = icmp eq i64 %20, 1342177280
  br i1 %.not, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @addvheader(%struct.dent* noundef %0)
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %23, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @combineaffixes(%struct.dent* nocapture noundef %0, %struct.dent* nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, -2080374785
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = or i64 %7, %5
  store i64 %8, i64* %6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @upcase(i8* nocapture noundef %0) #3 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi i8* [ %0, %1 ], [ %9, %4 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %.0, align 1
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 22, i64 %6
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %.0, align 1
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !15

10:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @lowcase(i8* nocapture noundef %0) #3 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi i8* [ %0, %1 ], [ %9, %4 ]
  %3 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %.0, align 1
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 21, i64 %6
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %.0, align 1
  %9 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %2, !llvm.loop !16

10:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strtosichar(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call i32 @strtoichar(i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i64 0, i64 0), i8* noundef %0, i32 noundef 184, i32 noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %0, i32 noundef 944, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %7

7:                                                ; preds = %4, %2
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @strtosichar.out, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @toutent(%struct._IO_FILE* noundef %0, %struct.dent* noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  %5 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @strtoichar(i8* noundef nonnull %5, i8* noundef %7, i32 noundef 100, i32 noundef 1)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %14, label %9

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef %12, i32 noundef 700, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %14

14:                                               ; preds = %9, %3
  br label %15

15:                                               ; preds = %59, %14
  %.0 = phi %struct.dent* [ %1, %14 ], [ %61, %59 ]
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %20, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 2, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 134217728
  %.not4 = icmp eq i64 %19, 0
  br i1 %.not4, label %53, label %20

20:                                               ; preds = %16, %15
  %21 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 2, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, 805306368
  switch i64 %23, label %52 [
    i64 0, label %24
    i64 268435456, label %28
    i64 536870912, label %39
    i64 805306368, label %49
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  call void @lowcase(i8* noundef nonnull %25)
  %26 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %27 = call i8* @ichartosstr(i8* noundef nonnull %26, i32 noundef 1)
  call void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %27, %struct.dent* noundef %.0)
  br label %52

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 2, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 1073741824
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  %.not3 = icmp eq %struct.dent* %.0, %1
  br i1 %.not3, label %38, label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  call void @upcase(i8* noundef nonnull %35)
  %36 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %37 = call i8* @ichartosstr(i8* noundef nonnull %36, i32 noundef 1)
  call void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %37, %struct.dent* noundef %.0)
  br label %38

38:                                               ; preds = %34, %33
  br label %52

39:                                               ; preds = %20
  %40 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  call void @lowcase(i8* noundef nonnull %40)
  %41 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %42 = load i8, i8* %41, align 16
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 22, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  store i8 %45, i8* %46, align 16
  %47 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %48 = call i8* @ichartosstr(i8* noundef nonnull %47, i32 noundef 1)
  call void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %48, %struct.dent* noundef %.0)
  br label %52

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 1
  %51 = load i8*, i8** %50, align 8
  call void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %51, %struct.dent* noundef %.0)
  br label %52

52:                                               ; preds = %49, %39, %38, %24, %20
  br label %53

53:                                               ; preds = %52, %16
  %54 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 2, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, 1073741824
  %.not2 = icmp eq i64 %56, 0
  br i1 %.not2, label %58, label %57

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.dent, %struct.dent* %.0, i64 0, i32 0
  %61 = load %struct.dent*, %struct.dent** %60, align 8
  br label %15

62:                                               ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @toutword(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct.dent* nocapture noundef readonly %2) #0 {
  store i32 0, i32* @has_marker, align 4
  %fputs = call i32 @fputs(i8* %1, %struct._IO_FILE* %0)
  br label %4

4:                                                ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = icmp ult i32 %.0, 26
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dent, %struct.dent* %2, i64 0, i32 2, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = zext i32 %.0 to i64
  %10 = shl i64 1, %9
  %11 = and i64 %8, %10
  %.not = icmp eq i64 %11, 0
  br i1 %.not, label %14, label %12

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %.0, 65
  call void @flagout(%struct._IO_FILE* noundef %0, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %6
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !17

17:                                               ; preds = %4
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @ichartosstr(i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = call i32 @ichartostr(i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0), i8* noundef %0, i32 noundef 184, i32 noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0), i32 noundef 958, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %7

7:                                                ; preds = %4, %2
  ret i8* getelementptr inbounds ([184 x i8], [184 x i8]* @ichartosstr.out, i64 0, i64 0)
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @stringcharlen(i8* nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 12), align 4
  %4 = add nsw i32 %3, -1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  %7 = load i32, i32* @defdupchar, align 4
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ 0, %5 ], [ %7, %6 ]
  br label %10

10:                                               ; preds = %76, %8
  %.02 = phi i32 [ 0, %8 ], [ %.35, %76 ]
  %.01 = phi i32 [ %4, %8 ], [ %.3, %76 ]
  %.not14 = icmp sgt i32 %.02, %.01
  br i1 %.not14, label %77, label %11

11:                                               ; preds = %10
  %12 = add nsw i32 %.02, %.01
  %13 = ashr i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 28, i64 %14, i64 0
  br label %16

16:                                               ; preds = %25, %11
  %.08 = phi i8* [ %15, %11 ], [ %26, %25 ]
  %.06 = phi i8* [ %0, %11 ], [ %19, %25 ]
  %17 = load i8, i8* %.08, align 1
  %.not15 = icmp eq i8 %17, 0
  br i1 %.not15, label %.loopexit, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.06, i64 1
  %20 = load i8, i8* %.06, align 1
  %21 = load i8, i8* %.08, align 1
  %22 = xor i8 %20, %21
  %23 = and i8 %22, 127
  %.not16 = icmp eq i8 %23, 0
  br i1 %.not16, label %25, label %24

24:                                               ; preds = %18
  br label %27

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, i8* %.08, i64 1
  br label %16, !llvm.loop !18

.loopexit:                                        ; preds = %16
  br label %27

27:                                               ; preds = %.loopexit, %24
  %.17 = phi i8* [ %19, %24 ], [ %.06, %.loopexit ]
  %28 = load i8, i8* %.08, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = sext i32 %13 to i64
  %32 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, %9
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = sext i32 %13 to i64
  %37 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 29, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @laststringch, align 4
  %39 = sext i32 %13 to i64
  %40 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 28, i64 %39, i64 0
  %41 = ptrtoint i8* %.08 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  br label %78

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds i8, i8* %.08, i64 -1
  br label %48

48:                                               ; preds = %46, %27
  %.19 = phi i8* [ %47, %46 ], [ %.08, %27 ]
  %49 = getelementptr inbounds i8, i8* %.17, i64 -1
  %50 = load i8, i8* %49, align 1
  %51 = and i8 %50, 127
  %52 = load i8, i8* %.19, align 1
  %53 = and i8 %52, 127
  %54 = icmp ult i8 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = add nsw i32 %13, -1
  br label %76

57:                                               ; preds = %48
  %58 = load i8, i8* %49, align 1
  %59 = and i8 %58, 127
  %60 = load i8, i8* %.19, align 1
  %61 = and i8 %60, 127
  %62 = icmp ugt i8 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = add nsw i32 %13, 1
  br label %75

65:                                               ; preds = %57
  %66 = sext i32 %13 to i64
  %67 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 30, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %9, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = add nsw i32 %13, -1
  br label %74

72:                                               ; preds = %65
  %73 = add nsw i32 %13, 1
  br label %74

74:                                               ; preds = %72, %70
  %.13 = phi i32 [ %.02, %70 ], [ %73, %72 ]
  %.1 = phi i32 [ %71, %70 ], [ %.01, %72 ]
  br label %75

75:                                               ; preds = %74, %63
  %.24 = phi i32 [ %64, %63 ], [ %.13, %74 ]
  %.2 = phi i32 [ %.01, %63 ], [ %.1, %74 ]
  br label %76

76:                                               ; preds = %75, %55
  %.35 = phi i32 [ %.02, %55 ], [ %.24, %75 ]
  %.3 = phi i32 [ %56, %55 ], [ %.2, %75 ]
  br label %10, !llvm.loop !19

77:                                               ; preds = %10
  store i32 -1, i32* @laststringch, align 4
  br label %78

78:                                               ; preds = %77, %35
  %.0 = phi i32 [ %44, %35 ], [ 0, %77 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @printichar(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 128
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 1), align 1
  br label %10

5:                                                ; preds = %1
  %6 = add i32 %0, -128
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 28, i64 %7, i64 0
  %9 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0), i8* noundef nonnull %8) #15
  br label %10

10:                                               ; preds = %5, %3
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @printichar.out, i64 0, i64 0)
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @findfiletype(i8* noundef %0, i32 noundef %1, i32* noundef writeonly %2) #9 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #13
  %5 = trunc i64 %4 to i32
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %31, label %6

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %28, %6
  %.01 = phi i32 [ 0, %6 ], [ %29, %28 ]
  %8 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 13), align 4
  %9 = icmp slt i32 %.01, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %11, i64 %12, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %.not9 = icmp eq i32* %2, null
  br i1 %.not9, label %26, label %18

18:                                               ; preds = %17
  %19 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %19, i64 %20, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %22, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17
  br label %70

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !20

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %30, %3
  br label %32

32:                                               ; preds = %67, %31
  %.1 = phi i32 [ 0, %31 ], [ %68, %67 ]
  %33 = load i32, i32* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 13), align 4
  %34 = icmp slt i32 %.1, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %37 = zext i32 %.1 to i64
  %38 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %36, i64 %37, i32 2
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %62, %35
  %.02 = phi i8* [ %39, %35 ], [ %65, %62 ]
  %41 = load i8, i8* %.02, align 1
  %.not5 = icmp eq i8 %41, 0
  br i1 %.not5, label %66, label %42

42:                                               ; preds = %40
  %43 = call i64 @strlen(i8* noundef nonnull %.02) #13
  %44 = trunc i64 %43 to i32
  %.not6 = icmp slt i32 %5, %44
  br i1 %.not6, label %61, label %45

45:                                               ; preds = %42
  %46 = sub i64 %4, %43
  %sext7 = shl i64 %46, 32
  %47 = ashr exact i64 %sext7, 32
  %48 = getelementptr inbounds i8, i8* %0, i64 %47
  %49 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %48, i8* noundef nonnull %.02) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %.not8 = icmp eq i32* %2, null
  br i1 %.not8, label %60, label %52

52:                                               ; preds = %51
  %53 = load %struct.strchartype*, %struct.strchartype** @chartypes, align 8
  %54 = zext i32 %.1 to i64
  %55 = getelementptr inbounds %struct.strchartype, %struct.strchartype* %53, i64 %54, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %56, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %51
  br label %70

61:                                               ; preds = %45, %42
  br label %62

62:                                               ; preds = %61
  %63 = shl i64 %43, 32
  %sext = add i64 %63, 4294967296
  %64 = ashr exact i64 %sext, 32
  %65 = getelementptr inbounds i8, i8* %.02, i64 %64
  br label %40, !llvm.loop !21

66:                                               ; preds = %40
  br label %67

67:                                               ; preds = %66
  %68 = add nuw nsw i32 %.1, 1
  br label %32, !llvm.loop !22

69:                                               ; preds = %32
  br label %70

70:                                               ; preds = %69, %60, %26
  %.0 = phi i32 [ %.01, %26 ], [ %.1, %60 ], [ -1, %69 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @acoversb(%struct.dent* nocapture noundef readonly %0, %struct.dent* nocapture noundef readonly %1) #10 {
  %3 = call i32 @issubset(%struct.dent* noundef %1, %struct.dent* noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = xor i64 %6, %8
  %10 = and i64 %9, 134217728
  %.not3 = icmp eq i64 %10, 0
  br i1 %.not3, label %17, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, 134217728
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %69

17:                                               ; preds = %11, %4
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %20, %22
  %24 = and i64 %23, 134217728
  %.not1 = icmp eq i64 %24, 0
  br i1 %.not1, label %26, label %25

25:                                               ; preds = %18
  br label %69

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = xor i64 %29, %31
  %33 = and i64 %32, 805306368
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 805306368
  %.not2 = icmp eq i64 %38, 805306368
  br i1 %.not2, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %41, i8* noundef nonnull dereferenceable(1) %43) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %35
  br label %69

47:                                               ; preds = %39
  br label %69

48:                                               ; preds = %27
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %69

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, 805306368
  %55 = icmp eq i64 %54, 268435456
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %69

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 805306368
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 805306368
  %66 = icmp eq i64 %65, 536870912
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %67, %56, %50, %47, %46, %25, %16
  %.0 = phi i32 [ 0, %16 ], [ 1, %46 ], [ 0, %47 ], [ 0, %50 ], [ 1, %56 ], [ 1, %67 ], [ 0, %68 ], [ 0, %25 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @issubset(%struct.dent* nocapture noundef readonly %0, %struct.dent* nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.dent, %struct.dent* %1, i64 0, i32 2, i64 0
  %6 = load i64, i64* %5, align 8
  %7 = xor i64 %6, -1
  %8 = and i64 %4, %7
  %9 = and i64 %8, -2080374785
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %10
  %.0 = phi i32 [ 0, %10 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @flagout(%struct._IO_FILE* noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @has_marker, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %8

4:                                                ; preds = %2
  %5 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %6 = sext i8 %5 to i32
  %7 = call i32 @putc(i32 noundef %6, %struct._IO_FILE* noundef %0) #15
  br label %8

8:                                                ; preds = %4, %2
  store i32 1, i32* @has_marker, align 4
  %9 = call i32 @putc(i32 noundef %1, %struct._IO_FILE* noundef %0) #15
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
