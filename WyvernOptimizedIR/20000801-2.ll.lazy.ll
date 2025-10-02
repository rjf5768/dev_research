; ModuleID = './20000801-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000801-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { %struct.foo* }

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.foo* @test(%struct.foo* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %8, %1
  %.0 = phi %struct.foo* [ %0, %1 ], [ %10, %8 ]
  %.not = icmp eq %struct.foo* %.0, null
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %2
  %4 = call i32 @bar()
  %.not3 = icmp eq i32 %4, 0
  br i1 %.not3, label %8, label %5

5:                                                ; preds = %3
  %6 = call i32 @baz()
  %.not4 = icmp eq i32 %6, 0
  br i1 %.not4, label %7, label %8

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %5, %3
  %9 = getelementptr inbounds %struct.foo, %struct.foo* %.0, i64 0, i32 0
  %10 = load %struct.foo*, %struct.foo** %9, align 8
  br label %2, !llvm.loop !4

.loopexit:                                        ; preds = %2
  br label %11

11:                                               ; preds = %.loopexit, %7
  ret %struct.foo* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar() #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @baz() #1 {
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.foo, align 8
  %2 = alloca %struct.foo, align 8
  %3 = getelementptr inbounds %struct.foo, %struct.foo* %1, i64 0, i32 0
  store %struct.foo* %2, %struct.foo** %3, align 8
  %4 = getelementptr inbounds %struct.foo, %struct.foo* %2, i64 0, i32 0
  store %struct.foo* null, %struct.foo** %4, align 8
  %5 = call %struct.foo* @test(%struct.foo* noundef nonnull %1)
  %.not = icmp eq %struct.foo* %5, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
