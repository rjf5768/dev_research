; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050125-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050125-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @seterr(%struct.parse* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.parse*, %struct.parse** %3, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bracket_empty(%struct.parse* noundef %0) #0 {
  %2 = alloca %struct.parse*, align 8
  store %struct.parse* %0, %struct.parse** %2, align 8
  %3 = load %struct.parse*, %struct.parse** %2, align 8
  %4 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.parse*, %struct.parse** %2, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ult i8* %5, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.parse*, %struct.parse** %2, align 8
  %12 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 93
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.parse*, %struct.parse** %2, align 8
  %20 = call i32 @seterr(%struct.parse* noundef %19, i32 noundef 7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.parse, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 1
  store i8* inttoptr (i64 74565 to i8*), i8** %7, align 8
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  store i8* inttoptr (i64 74565 to i8*), i8** %8, align 8
  %9 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 2
  store i32 0, i32* %9, align 8
  call void @bracket_empty(%struct.parse* noundef %6)
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 7
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @abort() #2
  unreachable

14:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
