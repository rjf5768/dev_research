; ModuleID = './20170111-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20170111-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, i64, i16, i8, i16, i64* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.S, align 8
  store i64 1, i64* %1, align 8
  %3 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store i16 0, i16* %3, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  store i16 0, i16* %5, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i8 0, i8* %6, align 2
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 4
  store i16 2, i16* %7, align 4
  %8 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 5
  store i64* %1, i64** %8, align 8
  %9 = call i64 @foo(%struct.S* noundef nonnull %2)
  store i64 %9, i64* %1, align 8
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i64 @foo(%struct.S* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 4
  %3 = load i16, i16* %2, align 4
  %4 = icmp ult i16 %3, 2
  %narrow = select i1 %4, i16 %3, i16 0
  %5 = zext i16 %narrow to i64
  %6 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 5
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 %5
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  ret i64 %5
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
