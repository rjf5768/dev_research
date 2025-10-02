; ModuleID = './large-array.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/large-array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test.array = private unnamed_addr constant [300 x i32] [i32 17, i32 53, i32 523, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49], align 16
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"error2\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"error2\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local i32 @test(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [300 x i32], [300 x i32]* @__const.test.array, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @test(i32 noundef 1)
  %.not = icmp eq i32 %1, 53
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str.1, i64 0, i64 0))
  br label %3

3:                                                ; preds = %2, %0
  %4 = call i32 @test(i32 noundef 2)
  %.not1 = icmp eq i32 %4, 523
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
