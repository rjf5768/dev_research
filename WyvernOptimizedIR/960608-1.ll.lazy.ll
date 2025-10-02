; ModuleID = './960608-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960608-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type { i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @foo(%struct.a_struct* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.a_struct, %struct.a_struct* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 1
  %4 = and i8 %3, 32
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr %struct.a_struct, %struct.a_struct* %0, i64 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = and i8 %7, 64
  %.not1.not = icmp eq i8 %8, 0
  br i1 %.not1.not, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr %struct.a_struct, %struct.a_struct* %0, i64 0, i32 0
  %11 = load i8, i8* %10, align 1
  %.not2 = icmp slt i8 %11, 0
  br i1 %.not2, label %12, label %21

12:                                               ; preds = %9
  %13 = getelementptr %struct.a_struct, %struct.a_struct* %0, i64 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = and i8 %14, 3
  %.not3 = icmp eq i8 %15, 2
  br i1 %.not3, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr %struct.a_struct, %struct.a_struct* %0, i64 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = and i8 %18, 28
  %20 = icmp ne i8 %19, 12
  %phi.cast = zext i1 %20 to i32
  br label %21

21:                                               ; preds = %16, %12, %9, %5, %1
  %22 = phi i32 [ 1, %12 ], [ 1, %9 ], [ 1, %5 ], [ 1, %1 ], [ %phi.cast, %16 ]
  ret i32 %22
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %struct.a_struct, align 1
  %2 = getelementptr inbounds %struct.a_struct, %struct.a_struct* %1, i64 0, i32 0
  store i8 -50, i8* %2, align 1
  %3 = call i32 @foo(%struct.a_struct* noundef nonnull %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
