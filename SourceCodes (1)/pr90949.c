; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr90949.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr90949.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { %struct.Node* }

@space = dso_local global [2 x %struct.Node] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"No cleanup\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_puts(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @my_free(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Node* @my_malloc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret %struct.Node* getelementptr inbounds ([2 x %struct.Node], [2 x %struct.Node]* @space, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @walk(%struct.Node* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.Node*, align 8
  %4 = alloca i32, align 4
  store %struct.Node* %0, %struct.Node** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Node*, %struct.Node** %3, align 8
  %6 = icmp eq %struct.Node* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @my_puts(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %8
  %13 = load %struct.Node*, %struct.Node** %3, align 8
  %14 = getelementptr inbounds %struct.Node, %struct.Node* %13, i32 0, i32 0
  %15 = load %struct.Node*, %struct.Node** %14, align 8
  %16 = load i32, i32* %4, align 4
  call void @walk(%struct.Node* noundef %15, i32 noundef %16)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.Node*, %struct.Node** %3, align 8
  %21 = bitcast %struct.Node* %20 to i8*
  call void @my_free(i8* noundef %21)
  br label %22

22:                                               ; preds = %7, %19, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.Node*, align 8
  %2 = call %struct.Node* @my_malloc(i32 noundef 8)
  store %struct.Node* %2, %struct.Node** %1, align 8
  %3 = load %struct.Node*, %struct.Node** %1, align 8
  %4 = getelementptr inbounds %struct.Node, %struct.Node* %3, i32 0, i32 0
  store %struct.Node* null, %struct.Node** %4, align 8
  %5 = load %struct.Node*, %struct.Node** %1, align 8
  call void @walk(%struct.Node* noundef %5, i32 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
