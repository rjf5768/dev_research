; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080604-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080604-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.barstruct = type { i8* }

@x = dso_local global %struct.barstruct zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"Everything OK\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.barstruct, %struct.barstruct* @x, i32 0, i32 0), align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #2
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.barstruct, align 8
  %4 = alloca %struct.barstruct*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.barstruct* %3, %struct.barstruct** %4, align 8
  br label %11

8:                                                ; preds = %1
  store %struct.barstruct* getelementptr inbounds (%struct.barstruct, %struct.barstruct* @x, i64 1), %struct.barstruct** %4, align 8
  %9 = load %struct.barstruct*, %struct.barstruct** %4, align 8
  %10 = getelementptr inbounds %struct.barstruct, %struct.barstruct* %9, i64 -1
  store %struct.barstruct* %10, %struct.barstruct** %4, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.barstruct*, %struct.barstruct** %4, align 8
  %13 = getelementptr inbounds %struct.barstruct, %struct.barstruct* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  call void @foo()
  %14 = load %struct.barstruct*, %struct.barstruct** %4, align 8
  %15 = getelementptr inbounds %struct.barstruct, %struct.barstruct* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** getelementptr inbounds (%struct.barstruct, %struct.barstruct* @x, i32 0, i32 0), align 8
  call void @baz(i32 noundef 0)
  %2 = load i8*, i8** getelementptr inbounds (%struct.barstruct, %struct.barstruct* @x, i32 0, i32 0), align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
