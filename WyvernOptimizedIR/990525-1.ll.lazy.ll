; ModuleID = './990525-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990525-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blah = type { i32, i32 }

@__const.main.s = private unnamed_addr constant %struct.blah { i32 1, i32 2 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @die(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [1 x %struct.blah], align 4
  store i64 %0, i64* %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %.0 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %5 = icmp eq i32 %.0, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6
  %8 = add nuw nsw i32 %.0, 1
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [1 x %struct.blah], [1 x %struct.blah]* %3, i64 0, i64 %9
  %11 = bitcast %struct.blah* %10 to i64*
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %11, align 4
  br label %4, !llvm.loop !4

13:                                               ; preds = %4
  %14 = getelementptr inbounds [1 x %struct.blah], [1 x %struct.blah]* %3, i64 0, i64 0, i32 0
  %15 = load i32, i32* %14, align 4
  %.not = icmp eq i32 %15, 1
  br i1 %.not, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #4
  unreachable

17:                                               ; preds = %13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  call void @die(i64 8589934593)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
