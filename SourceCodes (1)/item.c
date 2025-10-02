; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/item.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@.str = private unnamed_addr constant [10 x i8] c"delta > 0\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/item.c\00", align 1
@__PRETTY_FUNCTION__.Subtract = private unnamed_addr constant [28 x i8] c"Item *Subtract(Item *, int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LessThan(%struct._Vertices* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %6 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Equal(%struct._Vertices* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %6 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @Subtract(%struct._Vertices* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca i32, align 4
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.Subtract, i64 0, i64 0)) #2
  unreachable

9:                                                ; preds = %7
  %10 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %16 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  ret %struct._Vertices* %17
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
