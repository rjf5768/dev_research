; ModuleID = './read_dir-aux.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/read_dir-aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"my_verify_not_exists\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"my_verify_not_exists: pathname %s still exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"my_mkdir: failed to call stat for directory\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"my_mkdir: pathname %s is not a directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"my_mkdir: failed to create directory\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @expect_open_to_fail() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_verify_not_exists(i8* noundef %0) #1 {
  %2 = alloca %struct.stat, align 8
  %3 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #6
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %1
  %5 = call i32* @__errno_location() #7
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  ret void

9:                                                ; preds = %4, %1
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %9
  call void @perror(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #8
  br label %13

11:                                               ; preds = %9
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #6
  br label %13

13:                                               ; preds = %11, %10
  call void @abort() #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

declare dso_local void @perror(i8* noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_mkdir(i8* noundef %0) #1 {
  %2 = alloca %struct.stat, align 8
  %3 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #6
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %1
  %5 = call i32* @__errno_location() #7
  %6 = load i32, i32* %5, align 4
  %.not2 = icmp eq i32 %6, 2
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %4
  call void @perror(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #8
  call void @abort() #9
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4, %1
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 61440
  %14 = icmp eq i32 %13, 16384
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* noundef %0) #6
  call void @abort() #9
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %10, %8
  %18 = call i32 @mkdir(i8* noundef %0, i32 noundef 493) #6
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %20, label %19

19:                                               ; preds = %17
  call void @perror(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #8
  call void @abort() #9
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  ret void

UnifiedUnreachableBlock:                          ; preds = %19, %15, %7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_rmdir(i8* noundef %0) #1 {
  %2 = call i32 @rmdir(i8* noundef %0) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rmdir(i8* noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
