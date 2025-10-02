; ModuleID = './packssdw-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/SSE/packssdw-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"packssdw-1 passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"packssdw-1 failed\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"packssdw-1 failed\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"packssdw-1 passed\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @foo(<4 x i32> noundef %0, <4 x i32> noundef %1) #0 {
  %3 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %0, <4 x i32> %1)
  %4 = bitcast <8 x i16> %3 to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: nofree nosync nounwind readnone
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call <4 x float> @foo(<4 x i32> noundef zeroinitializer, <4 x i32> noundef zeroinitializer)
  %2 = bitcast <4 x float> %1 to <4 x i32>
  %3 = extractelement <4 x i32> %2, i64 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.1, i64 0, i64 0))
  br label %7

6:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
