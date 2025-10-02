; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/set_vm_limit.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/set_vm_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"get_vm_limit\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"set_vm_limit\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_vm_limit(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @getrlimit(i32 noundef 9, %struct.rlimit* noundef %3) #4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %25

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = call i32 @setrlimit(i32 noundef 9, %struct.rlimit* noundef %3) #4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @perror(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %15
  ret void
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
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
