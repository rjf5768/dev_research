; ModuleID = './pr34456.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr34456.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 (i32)* }

@array = dso_local global [2 x %struct.s] [%struct.s { i32 1, i32 (i32)* @bad_compare }, %struct.s { i32 -1, i32 (i32)* @bad_compare }], align 16
@errors = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @debug() #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bad_compare(i32 noundef %0) #0 {
  %2 = sub nsw i32 0, %0
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @qsort(i8* noundef bitcast ([2 x %struct.s]* @array to i8*), i64 noundef 2, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @compare) #3
  %1 = load i32, i32* @errors, align 4
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i32 (i32)**
  %5 = load i32 (i32)*, i32 (i32)** %4, align 8
  %6 = bitcast i8* %1 to i32*
  %7 = load i32, i32* %6, align 8
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %17, label %8

8:                                                ; preds = %2
  %9 = call i32 @debug()
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %17, label %10

10:                                               ; preds = %8
  %11 = bitcast i8* %0 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %5(i32 noundef %12) #3
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @errors, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @errors, align 4
  br label %17

17:                                               ; preds = %14, %10, %8, %2
  %18 = call i32 %5(i32 noundef %7) #3
  ret i32 %18
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
