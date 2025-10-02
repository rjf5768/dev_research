; ModuleID = './pr44468.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44468.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Q = type { float, %struct.S }
%struct.S = type { i32, i32 }

@s = dso_local global %struct.Q zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @test1(i8* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  %3 = bitcast i8* %2 to i32*
  store i32 3, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @test2(i8* nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  %3 = bitcast i8* %2 to i32*
  store i32 3, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @test3(i8* nocapture noundef writeonly %0) #0 {
  store i32 0, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  %2 = getelementptr inbounds i8, i8* %0, i64 4
  %3 = bitcast i8* %2 to i32*
  store i32 3, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 1), align 4
  %1 = call i32 @test1(i8* noundef bitcast (%struct.Q* @s to i8*))
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 1), align 4
  %4 = call i32 @test2(i8* noundef bitcast (%struct.Q* @s to i8*))
  %.not1 = icmp eq i32 %4, 3
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i32 1, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.Q, %struct.Q* @s, i64 0, i32 1, i32 1), align 4
  %7 = call i32 @test3(i8* noundef bitcast (%struct.Q* @s to i8*))
  %.not2 = icmp eq i32 %7, 3
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
