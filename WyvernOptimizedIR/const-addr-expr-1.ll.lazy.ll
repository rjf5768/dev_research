; ModuleID = './const-addr-expr-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/const-addr-expr-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@Upgrade_items = dso_local global [3 x %struct.foo] [%struct.foo { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, %struct.foo { i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, %struct.foo zeroinitializer], align 16
@Upgd_minor_ID = dso_local global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %struct.foo]* @Upgrade_items to i8*), i64 16) to i32*), align 8
@Upgd_minor_ID1 = dso_local global i32* getelementptr inbounds ([3 x %struct.foo], [3 x %struct.foo]* @Upgrade_items, i32 0, i32 0, i32 0), align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = load i32*, i32** @Upgd_minor_ID, align 8
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %2
  %7 = load i32*, i32** @Upgd_minor_ID1, align 8
  %8 = load i32, i32* %7, align 4
  %.not1 = icmp eq i32 %8, 1
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %9, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
