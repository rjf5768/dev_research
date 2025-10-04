; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100316-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100316-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Foo = type { i32, i16 }

@f = dso_local global %struct.Foo zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.Foo* noundef %0) #0 {
  %2 = alloca %struct.Foo*, align 8
  %3 = alloca %struct.Foo*, align 8
  store %struct.Foo* %0, %struct.Foo** %2, align 8
  %4 = load %struct.Foo*, %struct.Foo** %2, align 8
  store %struct.Foo* %4, %struct.Foo** %3, align 8
  %5 = load %struct.Foo*, %struct.Foo** %3, align 8
  %6 = getelementptr inbounds %struct.Foo, %struct.Foo* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 4
  %8 = and i16 %7, 1023
  %9 = zext i16 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i32 0, i32 0), align 4
  %2 = load i16, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i32 0, i32 1), align 4
  %3 = and i16 %2, -1024
  %4 = or i16 %3, 0
  store i16 %4, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i32 0, i32 1), align 4
  %5 = load i16, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i32 0, i32 1), align 4
  %6 = and i16 %5, -7169
  %7 = or i16 %6, 7168
  store i16 %7, i16* getelementptr inbounds (%struct.Foo, %struct.Foo* @f, i32 0, i32 1), align 4
  %8 = call i32 @foo(%struct.Foo* noundef @f)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
  ret i32 0
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
