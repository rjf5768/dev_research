; ModuleID = './pr36321.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@argp = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [10 x i8] c"pr36321.x\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = alloca [0 x i8], align 16
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #2
  %4 = trunc i64 %3 to i32
  %sext = mul i64 %3, 12884901888
  %5 = ashr exact i64 %sext, 32
  %6 = alloca i8, i64 %5, align 16
  %7 = ptrtoint [0 x i8]* %2 to i64
  %8 = ptrtoint i8* %6 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 %4, 3
  %12 = icmp sgt i32 %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = load volatile i8*, i8** @argp, align 8
  call void @foo(i8* noundef %3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
