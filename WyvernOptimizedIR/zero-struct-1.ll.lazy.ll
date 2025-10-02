; ModuleID = './zero-struct-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/zero-struct-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = dso_local global [3 x i8] zeroinitializer, align 1
@f = dso_local global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @y, i32 0, i32 0), align 8
@ff = dso_local global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @y, i32 0, i32 0), align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @h() #0 {
  %1 = load i8*, i8** @f, align 8
  %2 = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %2, i8** @f, align 8
  %3 = load i8*, i8** @ff, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %4, i8** @ff, align 8
  %5 = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %5, i8** @f, align 8
  %6 = getelementptr inbounds i8, i8* %3, i64 2
  store i8* %6, i8** @ff, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @h()
  %1 = load i8*, i8** @f, align 8
  %.not = icmp eq i8* %1, getelementptr inbounds ([3 x i8], [3 x i8]* @y, i64 0, i64 2)
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i8*, i8** @ff, align 8
  %.not1 = icmp eq i8* %4, getelementptr inbounds ([3 x i8], [3 x i8]* @y, i64 0, i64 2)
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
