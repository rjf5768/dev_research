; ModuleID = './iname.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_table = type { [256 x %struct.name_s*], [512 x %struct.name_s*], i32 }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [10 x i8] c"name_init\00", align 1
@the_nt = internal global %struct.name_table* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"name_ref(string)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/iname.c\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"name_enter failed - %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"name_alloc_sub\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_init() #0 {
  %1 = call i8* @alloc(i32 noundef 1, i32 noundef 6152, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #8
  store i8* %1, i8** bitcast (%struct.name_table** @the_nt to i8**), align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(6152) %1, i8 0, i64 6152, i1 false)
  br label %2

2:                                                ; preds = %8, %0
  %.0 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %3 = icmp ult i32 %.0, 256
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %6 = getelementptr inbounds %struct.name_table, %struct.name_table* %5, i64 0, i32 2
  store i32 %.0, i32* %6, align 8
  %7 = call i32 @name_alloc_sub(%struct.name_table* noundef %5)
  br label %8

8:                                                ; preds = %4
  %9 = add i32 %.0, 128
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  ret void
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @name_alloc_sub(%struct.name_table* nocapture noundef %0) #0 {
  %2 = call i8* @alloc(i32 noundef 1, i32 noundef 4096, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(4096) %2, i8 0, i64 4096, i1 false)
  %6 = getelementptr inbounds %struct.name_table, %struct.name_table* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 7
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.name_table, %struct.name_table* %0, i64 0, i32 1, i64 %9
  %11 = bitcast %struct.name_s** %10 to i8**
  store i8* %2, i8** %11, align 8
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ -25, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @name_ref(i8* noundef %0, i32 noundef %1, %struct.ref_s* nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = trunc i32 %1 to i16
  %6 = and i32 %1, 65535
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %10 = load i8, i8* %0, align 1
  %11 = lshr i8 %10, 7
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.name_table, %struct.name_table* %9, i64 0, i32 1, i64 %12
  %14 = load %struct.name_s*, %struct.name_s** %13, align 8
  %15 = and i8 %10, 127
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.name_s, %struct.name_s* %14, i64 %16
  %18 = getelementptr inbounds %struct.name_s, %struct.name_s* %14, i64 %16, i32 2
  %19 = load i16, i16* %18, align 2
  %.not10 = icmp eq i16 %19, 0
  br i1 %.not10, label %23, label %20

20:                                               ; preds = %8
  %21 = bitcast %struct.ref_s* %2 to %struct.name_s**
  store %struct.name_s* %17, %struct.name_s** %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  store i16 28, i16* %22, align 8
  br label %101

23:                                               ; preds = %8
  %24 = icmp slt i32 %3, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %101

26:                                               ; preds = %23
  %27 = load i8, i8* %0, align 1
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds %struct.name_s, %struct.name_s* %14, i64 %16, i32 1
  store i16 %28, i16* %29, align 8
  br label %85

30:                                               ; preds = %4
  %31 = and i32 %1, 65535
  %32 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @string_hash to i32 (i8*, i32, ...)*)(i8* noundef %0, i32 noundef %31) #8
  %33 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %34 = and i32 %32, 255
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.name_table, %struct.name_table* %33, i64 0, i32 0, i64 %35
  br label %37

37:                                               ; preds = %51, %30
  %.03 = phi %struct.name_s** [ %36, %30 ], [ %52, %51 ]
  %38 = load %struct.name_s*, %struct.name_s** %.03, align 8
  %.not = icmp eq %struct.name_s* %38, null
  br i1 %.not, label %53, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.name_s, %struct.name_s* %38, i64 0, i32 2
  %41 = load i16, i16* %40, align 2
  %42 = trunc i32 %1 to i16
  %43 = icmp eq i16 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.name_s, %struct.name_s* %38, i64 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %.mask8 = and i32 %1, 65535
  %47 = zext i32 %.mask8 to i64
  %bcmp = call i32 @bcmp(i8* %0, i8* %46, i64 %47)
  %.not9 = icmp eq i32 %bcmp, 0
  br i1 %.not9, label %48, label %51

48:                                               ; preds = %44
  %49 = bitcast %struct.ref_s* %2 to %struct.name_s**
  store %struct.name_s* %38, %struct.name_s** %49, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  store i16 28, i16* %50, align 8
  br label %101

51:                                               ; preds = %44, %39
  %52 = getelementptr inbounds %struct.name_s, %struct.name_s* %38, i64 0, i32 0
  br label %37, !llvm.loop !6

53:                                               ; preds = %37
  %54 = icmp slt i32 %3, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %101

56:                                               ; preds = %53
  %57 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %58 = getelementptr inbounds %struct.name_table, %struct.name_table* %57, i64 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 127
  %.not6 = icmp eq i32 %60, 0
  br i1 %.not6, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %63 = call i32 @name_alloc_sub(%struct.name_table* noundef %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %101

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %56
  %68 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %69 = getelementptr inbounds %struct.name_table, %struct.name_table* %68, i64 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = lshr i32 %70, 7
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.name_table, %struct.name_table* %68, i64 0, i32 1, i64 %72
  %74 = load %struct.name_s*, %struct.name_s** %73, align 8
  %75 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %76 = getelementptr inbounds %struct.name_table, %struct.name_table* %75, i64 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 127
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.name_s, %struct.name_s* %74, i64 %79
  %81 = getelementptr inbounds %struct.name_table, %struct.name_table* %75, i64 0, i32 2
  %82 = add i32 %77, 1
  store i32 %82, i32* %81, align 8
  %83 = trunc i32 %77 to i16
  %84 = getelementptr inbounds %struct.name_s, %struct.name_s* %74, i64 %79, i32 1
  store i16 %83, i16* %84, align 8
  store %struct.name_s* %80, %struct.name_s** %.03, align 8
  br label %85

85:                                               ; preds = %67, %26
  %.02 = phi %struct.name_s* [ %17, %26 ], [ %80, %67 ]
  %.not7 = icmp eq i32 %3, 0
  br i1 %.not7, label %93, label %86

86:                                               ; preds = %85
  %87 = and i32 %1, 65535
  %88 = call i8* @alloc(i32 noundef %87, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %101

91:                                               ; preds = %86
  %.mask = and i32 %1, 65535
  %92 = zext i32 %.mask to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %88, i8* align 1 %0, i64 %92, i1 false)
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %91
  %.01 = phi i8* [ %88, %91 ], [ %0, %93 ]
  %95 = getelementptr inbounds %struct.name_s, %struct.name_s* %.02, i64 0, i32 2
  store i16 %5, i16* %95, align 2
  %96 = getelementptr inbounds %struct.name_s, %struct.name_s* %.02, i64 0, i32 3
  store i8* %.01, i8** %96, align 8
  %97 = getelementptr inbounds %struct.name_s, %struct.name_s* %.02, i64 0, i32 0
  store %struct.name_s* null, %struct.name_s** %97, align 8
  %98 = getelementptr inbounds %struct.name_s, %struct.name_s* %.02, i64 0, i32 4
  store %struct.ref_s* null, %struct.ref_s** %98, align 8
  %99 = bitcast %struct.ref_s* %2 to %struct.name_s**
  store %struct.name_s* %.02, %struct.name_s** %99, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  store i16 28, i16* %100, align 8
  br label %101

101:                                              ; preds = %94, %90, %65, %55, %48, %25, %20
  %.0 = phi i32 [ 0, %20 ], [ -21, %25 ], [ -25, %90 ], [ 0, %94 ], [ 0, %48 ], [ -21, %55 ], [ %63, %65 ]
  ret i32 %.0
}

declare dso_local i32 @string_hash(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @name_string_ref(%struct.ref_s* nocapture noundef readonly %0, %struct.ref_s* nocapture noundef writeonly %1) #5 {
  %3 = bitcast %struct.ref_s* %0 to %struct.name_s**
  %4 = load %struct.name_s*, %struct.name_s** %3, align 8
  %5 = getelementptr inbounds %struct.name_s, %struct.name_s* %4, i64 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %7 = bitcast %struct.ref_s* %1 to i8**
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  store i16 566, i16* %8, align 8
  %9 = getelementptr inbounds %struct.name_s, %struct.name_s* %4, i64 0, i32 2
  %10 = load i16, i16* %9, align 2
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 2
  store i16 %10, i16* %11, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @name_enter(i8* noundef %0, %struct.ref_s* nocapture noundef writeonly %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #9
  %4 = trunc i64 %3 to i32
  %5 = call i32 @name_ref(i8* noundef %0, i32 noundef %4, %struct.ref_s* noundef %1, i32 noundef 0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 noundef 135) #10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* noundef %0) #10
  call void @exit(i32 noundef 1) #11
  unreachable

11:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @name_index_ref(i32 noundef %0, %struct.ref_s* nocapture noundef writeonly %1) #5 {
  %3 = load %struct.name_table*, %struct.name_table** @the_nt, align 8
  %4 = lshr i32 %0, 7
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.name_table, %struct.name_table* %3, i64 0, i32 1, i64 %5
  %7 = load %struct.name_s*, %struct.name_s** %6, align 8
  %8 = and i32 %0, 127
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.name_s, %struct.name_s* %7, i64 %9
  %11 = bitcast %struct.ref_s* %1 to %struct.name_s**
  store %struct.name_s* %10, %struct.name_s** %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  store i16 28, i16* %12, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
