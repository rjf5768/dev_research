; ModuleID = './20020619-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020619-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @ref()
  %.not = icmp eq i32 %1, 16909060
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %.not1 = icmp eq i32 %1, 67305985
  br i1 %.not1, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  unreachable

4:                                                ; preds = %2, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal i32 @ref() #1 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = bitcast i64* %1 to i8*
  store i8 1, i8* %2, align 8
  %3 = bitcast i64* %1 to [5 x i8]*
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 1
  store i8 2, i8* %4, align 1
  %5 = bitcast i64* %1 to [5 x i8]*
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 2
  store i8 3, i8* %6, align 2
  %7 = bitcast i64* %1 to [5 x i8]*
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  store i8 4, i8* %8, align 1
  %9 = bitcast i64* %1 to i32*
  %10 = load i32, i32* %9, align 8
  ret i32 %10
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
