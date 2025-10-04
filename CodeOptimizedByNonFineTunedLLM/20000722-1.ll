; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000722-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000722-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"hi\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @bar()
  call void @bar()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca %struct.s, align 8
  %2 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds %struct.s, %struct.s* %1, i32 0, i32 1
  store i32 1, i32* %3, align 8
  call void @foo(%struct.s* noundef %1)
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.s* noundef %0) #0 {
  %2 = alloca %struct.s*, align 8
  store %struct.s* %0, %struct.s** %2, align 8
  %3 = load %struct.s*, %struct.s** %2, align 8
  %4 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #2
  unreachable

8:                                                ; preds = %1
  %9 = load %struct.s*, %struct.s** %2, align 8
  %10 = getelementptr inbounds %struct.s, %struct.s* %9, i32 0, i32 1
  store i32 2, i32* %10, align 8
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
