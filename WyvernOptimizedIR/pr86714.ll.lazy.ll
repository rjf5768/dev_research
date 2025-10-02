; ModuleID = './pr86714.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"xyz"], align 1
@b = dso_local global [6 x i8] zeroinitializer, align 4
@pb = dso_local global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"123xaa\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store i32 2016621105, i32* bitcast ([6 x i8]* @b to i32*), align 4
  store i16 24929, i16* bitcast (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 4) to i16*), align 4
  br i1 false, label %11, label %1

1:                                                ; preds = %0
  %2 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 1), align 1
  %.not = icmp eq i8 %2, 50
  br i1 %.not, label %3, label %11

3:                                                ; preds = %1
  %4 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 2), align 2
  %.not1 = icmp eq i8 %4, 51
  br i1 %.not1, label %5, label %11

5:                                                ; preds = %3
  %6 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 3), align 1
  %.not2 = icmp eq i8 %6, 120
  br i1 %.not2, label %7, label %11

7:                                                ; preds = %5
  %8 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 4), align 4
  %.not3 = icmp eq i8 %8, 97
  br i1 %.not3, label %9, label %11

9:                                                ; preds = %7
  %10 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 5), align 1
  %.not4 = icmp eq i8 %10, 97
  br i1 %.not4, label %12, label %11

11:                                               ; preds = %9, %7, %5, %3, %1, %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = load i8*, i8** @pb, align 8
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %13, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6)
  %.not5 = icmp eq i32 %bcmp, 0
  br i1 %.not5, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #6
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %14, %11
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
