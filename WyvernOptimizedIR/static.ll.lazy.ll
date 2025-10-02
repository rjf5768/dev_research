; ModuleID = './static.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test.x = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @test(i32 noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = load i32, i32* @test.x, align 4
  store i32 %3, i32* %1, align 4
  store i32 %0, i32* @test.x, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = call i32 @test(i32 noundef 1, i32* noundef nonnull %1)
  %3 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %0
  %.not1 = icmp eq i32 %2, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %4, %0
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %4
  %7 = call i32 @test(i32 noundef -1, i32* noundef nonnull %1)
  %8 = load i32, i32* %1, align 4
  %.not2 = icmp eq i32 %8, 1
  br i1 %.not2, label %9, label %10

9:                                                ; preds = %6
  %.not3 = icmp eq i32 %7, -1
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %9, %6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %9
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
