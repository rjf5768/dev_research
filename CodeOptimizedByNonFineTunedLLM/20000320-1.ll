; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20000320-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20000320-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dl = type { double }
%union.fl = type { float }

@failed = dso_local global i32 0, align 4
@ud = dso_local global %union.dl zeroinitializer, align 8
@uf = dso_local global %union.fl zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @c(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* bitcast (%union.dl* @ud to i64*), align 8
  %6 = load double, double* getelementptr inbounds (%union.dl, %union.dl* @ud, i32 0, i32 0), align 8
  %7 = fptrunc double %6 to float
  store float %7, float* getelementptr inbounds (%union.fl, %union.fl* @uf, i32 0, i32 0), align 4
  %8 = load i32, i32* bitcast (%union.fl* @uf to i32*), align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @failed, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @failed, align 4
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @c(i64 noundef 3931642474694443008, i32 noundef 0)
  call void @c(i64 noundef 3931642474694443009, i32 noundef 1)
  call void @c(i64 noundef 3936146074321813503, i32 noundef 1)
  call void @c(i64 noundef 3936146074321813504, i32 noundef 1)
  call void @c(i64 noundef 3938397874135498751, i32 noundef 1)
  call void @c(i64 noundef 3938397874135498752, i32 noundef 2)
  call void @c(i64 noundef 3940649673949183999, i32 noundef 2)
  call void @c(i64 noundef 3940649673949184000, i32 noundef 2)
  call void @c(i64 noundef 3940649673949184001, i32 noundef 2)
  call void @c(i64 noundef 4039728865214463999, i32 noundef 8388607)
  call void @c(i64 noundef 4039728865214464000, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865214464001, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334911, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334912, i32 noundef 8388608)
  call void @c(i64 noundef 4039728865751334913, i32 noundef 8388608)
  call void @c(i64 noundef 4039728866019770368, i32 noundef 8388608)
  call void @c(i64 noundef 4039728866019770369, i32 noundef 8388609)
  call void @c(i64 noundef 4039728866556641279, i32 noundef 8388609)
  call void @c(i64 noundef 4039728866556641280, i32 noundef 8388610)
  call void @c(i64 noundef 4039728867093512192, i32 noundef 8388610)
  call void @c(i64 noundef 4039728867093512193, i32 noundef 8388611)
  %2 = load i32, i32* @failed, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
