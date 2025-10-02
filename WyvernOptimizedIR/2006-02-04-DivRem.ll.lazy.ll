; ModuleID = './2006-02-04-DivRem.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2006-02-04-DivRem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%u %u %u %u\0A\00", align 1
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 15
  %4 = add nuw nsw i32 %3, 3
  %5 = lshr i32 %0, %4
  %6 = and i32 %1, 15
  %7 = shl nuw i32 8, %6
  %8 = add nsw i32 %7, -1
  %9 = and i32 %8, %0
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %9) #2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %8, %0
  %storemerge = phi i32 [ 10, %0 ], [ %10, %8 ]
  store i32 %storemerge, i32* @i, align 4
  %2 = icmp slt i32 %storemerge, 139045193
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = load i32, i32* @i, align 4
  %5 = xor i32 %4, 12345
  call void @test(i32 noundef %4, i32 noundef %5)
  %6 = load i32, i32* @i, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @i, align 4
  br label %8

8:                                                ; preds = %3
  %9 = load i32, i32* @i, align 4
  %10 = mul nsw i32 %9, -3
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
