; ModuleID = './pr59229.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59229.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"abcdefghijklmnop\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0) #0 {
  %2 = load i32, i32* @i, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, i32* @i, align 4
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  call void @abort() #6
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  %9 = load i32, i32* @i, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %bcmp = call i32 @bcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %11)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %13, label %12

12:                                               ; preds = %8
  call void @abort() #6
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %0, i8 32, i64 7, i1 false)
  ret void

UnifiedUnreachableBlock:                          ; preds = %12, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = alloca [7 x i8], align 1
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = icmp ugt i64 %1, 6
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %2
  br label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %10 = add i64 %1, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %9, i8* align 1 %0, i64 %10, i1 false)
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  call void @bar(i8* noundef nonnull %11)
  br label %12

12:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %storemerge = phi i32 [ 0, %0 ], [ %8, %6 ]
  store i32 %storemerge, i32* @i, align 4
  %2 = icmp slt i32 %storemerge, 16
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = load i32, i32* @i, align 4
  %5 = sext i32 %4 to i64
  call void @foo(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 noundef %5)
  br label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @i, align 4
  %8 = add nsw i32 %7, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
