; ModuleID = './sign.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"x = %d, ux = %u, y=%d, uy = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"z=%d, uz=%u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = call i32 (...) @rand() #2
  %4 = add nsw i32 %3, -1804289384
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* noundef %8) #2
  %phi.bo = add i32 %9, -14638709
  br label %10

10:                                               ; preds = %6, %2
  %.0 = phi i32 [ %phi.bo, %6 ], [ undef, %2 ]
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, i32 noundef %.0, i32 noundef %4, i32 noundef %4) #2
  %12 = mul nsw i32 %.0, %4
  %13 = mul i32 %.0, %4
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12, i32 noundef %13) #2
  %15 = srem i32 %.0, 314
  %16 = urem i32 %.0, 314
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15, i32 noundef %16) #2
  %18 = sdiv i32 %.0, 314
  %19 = udiv i32 %.0, 314
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18, i32 noundef %19) #2
  %21 = add nsw i32 %.0, 3880
  %22 = sdiv i32 %21, 314
  %23 = add i32 %.0, 3880
  %24 = udiv i32 %23, 314
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %22, i32 noundef %24) #2
  %26 = add nsw i32 %.0, -580
  %27 = sdiv i32 %26, 314
  %28 = add i32 %.0, -580
  %29 = udiv i32 %28, 314
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef %27, i32 noundef %29) #2
  ret i32 0
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @atoi(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
