; ModuleID = './set_vm_limit.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/set_vm_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"get_vm_limit\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"set_vm_limit\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_vm_limit(i32 noundef %0) #0 {
  %2 = alloca %struct.rlimit, align 8
  %3 = call i32 @getrlimit(i32 noundef 9, %struct.rlimit* noundef nonnull %2) #4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #5
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %1
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %.not1 = icmp ugt i64 %8, %6
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %5
  br label %16

10:                                               ; preds = %5
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i64 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = call i32 @setrlimit(i32 noundef 9, %struct.rlimit* noundef nonnull %2) #4
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %10
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #5
  call void @exit(i32 noundef 1) #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %9
  ret void

UnifiedUnreachableBlock:                          ; preds = %14, %4
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @getrlimit(i32 noundef, %struct.rlimit* noundef) #1

declare dso_local void @perror(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
