; ModuleID = './divconst-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divconst-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t1 = type { i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @f(%struct.t1* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.t1, %struct.t1* %0, i64 0, i32 0
  store i32 10000, i32* %2, align 4
  %3 = getelementptr inbounds %struct.t1, %struct.t1* %0, i64 0, i32 1
  store i32 3333, i32* %3, align 4
  %4 = getelementptr inbounds %struct.t1, %struct.t1* %0, i64 0, i32 2
  store i32 10000, i32* %4, align 4
  %5 = getelementptr inbounds %struct.t1, %struct.t1* %0, i64 0, i32 3
  store i32 3333, i32* %5, align 4
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.t1, align 4
  %2 = call i32 @f(%struct.t1* noundef nonnull %1)
  %3 = getelementptr inbounds %struct.t1, %struct.t1* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 10000
  br i1 %.not, label %5, label %14

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.t1, %struct.t1* %1, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 3333
  br i1 %.not1, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.t1, %struct.t1* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %.not2 = icmp eq i32 %10, 10000
  br i1 %.not2, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.t1, %struct.t1* %1, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %.not3 = icmp eq i32 %13, 3333
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %11, %8, %5, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %15, %14
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
