; ModuleID = './xgets.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/xgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@xgets.Include_File = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal global i32 0, align 4
@xgets.F = internal global [6 x %struct._IO_FILE*] zeroinitializer, align 16
@xgets.current_F = internal global %struct._IO_FILE** getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xgets(i8* noundef %0, i32 noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = load i32, i32* @xgets.Include_Len, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = call i8* @getenv(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #4
  %.not7 = icmp eq i8* %7, null
  br i1 %.not7, label %9, label %8

8:                                                ; preds = %6
  store i8* %7, i8** @xgets.Include_File, align 8
  br label %9

9:                                                ; preds = %8, %6
  %10 = load i8*, i8** @xgets.Include_File, align 8
  %11 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #5
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @xgets.Include_Len, align 4
  %13 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %13, align 8
  br label %14

14:                                               ; preds = %9, %3
  br label %15

15:                                               ; preds = %.backedge, %14
  %.02 = phi i8* [ %0, %14 ], [ %.02.be, %.backedge ]
  %16 = ptrtoint i8* %.02 to i64
  %17 = ptrtoint i8* %0 to i64
  %18 = sub i64 %16, %17
  %19 = add nsw i64 %18, 1
  %20 = sext i32 %1 to i64
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i32 @getc(%struct._IO_FILE* noundef %24) #4
  %.not5 = icmp eq i32 %25, -1
  br i1 %.not5, label %31, label %26

26:                                               ; preds = %22
  %27 = trunc i32 %25 to i8
  %28 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %27, i8* %.02, align 1
  %.not6 = icmp eq i32 %25, 10
  br i1 %.not6, label %30, label %29

29:                                               ; preds = %26
  br label %.backedge

.backedge:                                        ; preds = %29, %46, %73
  %.02.be = phi i8* [ %28, %29 ], [ %0, %73 ], [ %.1, %46 ]
  br label %15

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %22, %15
  %.1 = phi i8* [ %28, %30 ], [ %.02, %22 ], [ %.02, %15 ]
  %.01 = phi i32 [ %25, %30 ], [ %25, %22 ], [ 0, %15 ]
  store i8 0, i8* %.1, align 1
  %32 = icmp eq i32 %.01, -1
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %35 = icmp eq %struct._IO_FILE** %34, getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i64 0, i64 0)
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = icmp eq i8* %.1, %0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %76

39:                                               ; preds = %36
  br label %48

40:                                               ; preds = %33
  %41 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %42 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %41, i64 -1
  store %struct._IO_FILE** %42, %struct._IO_FILE*** @xgets.current_F, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8
  %44 = call i32 @fclose(%struct._IO_FILE* noundef %43) #4
  %45 = icmp eq i8* %.1, %0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %.backedge

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* @incfileflag, align 4
  %.not = icmp eq i32 %50, 0
  br i1 %.not, label %74, label %51

51:                                               ; preds = %49
  %52 = load i8*, i8** @xgets.Include_File, align 8
  %53 = load i32, i32* @xgets.Include_Len, align 4
  %54 = zext i32 %53 to i64
  %55 = call i32 @strncmp(i8* noundef %0, i8* noundef %52, i64 noundef %54) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = load i32, i32* @xgets.Include_Len, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  %61 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %62 = ptrtoint %struct._IO_FILE** %61 to i64
  %63 = sub i64 %62, ptrtoint ([6 x %struct._IO_FILE*]* @xgets.F to i64)
  %64 = icmp slt i64 %63, 40
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %60) #5
  %.not3 = icmp eq i64 %66, 0
  br i1 %.not3, label %73, label %67

67:                                               ; preds = %65
  %68 = call noalias %struct._IO_FILE* @fopen(i8* noundef %60, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #4
  %.not4 = icmp eq %struct._IO_FILE* %68, null
  br i1 %.not4, label %72, label %69

69:                                               ; preds = %67
  %70 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %71 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %70, i64 1
  store %struct._IO_FILE** %71, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %68, %struct._IO_FILE** %71, align 8
  br label %72

72:                                               ; preds = %69, %67
  br label %73

73:                                               ; preds = %72, %65, %57
  br label %.backedge

74:                                               ; preds = %51, %49
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %38
  %.0 = phi i8* [ null, %38 ], [ %0, %75 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
