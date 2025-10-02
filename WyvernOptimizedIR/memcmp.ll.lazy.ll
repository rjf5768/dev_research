; ModuleID = './memcmp.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"3141\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %2, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 5, i1 false) #4
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  %lhsc = load i8, i8* %3, align 1
  %rhsc = load i8, i8* %4, align 1
  %.not = icmp eq i8 %lhsc, %rhsc
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %lhsc1 = load i8, i8* %7, align 1
  %rhsc2 = load i8, i8* %8, align 1
  %.not3 = icmp ult i8 %lhsc1, %rhsc2
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %lhsc4 = load i8, i8* %11, align 1
  %rhsc5 = load i8, i8* %12, align 1
  %.not6 = icmp ugt i8 %lhsc4, %rhsc5
  br i1 %.not6, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %13, %9, %5
  unreachable
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
