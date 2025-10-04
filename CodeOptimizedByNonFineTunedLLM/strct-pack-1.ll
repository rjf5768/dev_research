; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-pack-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TRIAL = type <{ i16, double }>

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(%struct.TRIAL* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TRIAL*, align 8
  store %struct.TRIAL* %0, %struct.TRIAL** %3, align 8
  %4 = load %struct.TRIAL*, %struct.TRIAL** %3, align 8
  %5 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %4, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TRIAL*, %struct.TRIAL** %3, align 8
  %11 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %10, i32 0, i32 1
  %12 = load double, double* %11, align 2
  %13 = fcmp une double %12, 1.600000e+01
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TRIAL, align 2
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %2, i32 0, i32 0
  store i16 1, i16* %3, align 2
  %4 = getelementptr inbounds %struct.TRIAL, %struct.TRIAL* %2, i32 0, i32 1
  store double 1.600000e+01, double* %4, align 2
  %5 = call i32 @check(%struct.TRIAL* noundef %2)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
