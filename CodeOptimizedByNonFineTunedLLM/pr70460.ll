; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70460.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr70460.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.b = internal global [2 x i32] [i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@foo, %11) to i64), i64 ptrtoint (i8* blockaddress(@foo, %17) to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (i8* blockaddress(@foo, %14) to i64), i64 ptrtoint (i8* blockaddress(@foo, %17) to i64)) to i32)], align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* @foo.b, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr i8, i8* blockaddress(@foo, %17), i64 %8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  br label %18

11:                                               ; preds = %18
  %12 = load i32, i32* @c, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* @c, align 4
  br label %14

14:                                               ; preds = %11, %18
  %15 = load i32, i32* @c, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @c, align 4
  br label %17

17:                                               ; preds = %14, %18, %18, %18
  ret void

18:                                               ; preds = %1
  %19 = phi i8* [ %10, %1 ]
  indirectbr i8* %19, [label %11, label %17, label %14, label %17, label %17]
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i32 noundef 0)
  %2 = load i32, i32* @c, align 4
  %3 = icmp ne i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  call void @foo(i32 noundef 1)
  %6 = load i32, i32* @c, align 4
  %7 = icmp ne i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
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
