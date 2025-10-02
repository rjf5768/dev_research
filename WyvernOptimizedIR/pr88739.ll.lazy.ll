; ModuleID = './pr88739.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88739.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U = type { %struct.A }
%struct.A = type { i32, i32, i32, i32 }

@v = dso_local global { { i32, i32, i32, i8, i8, i8, i8 } } { { i32, i32, i32, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i8 -119, i8 64, i8 0, i8 0 } }, align 4
@bar.i = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = load i32, i32* @bar.i, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @bar.i, align 4
  switch i32 %2, label %28 [
    i32 0, label %4
    i32 1, label %9
    i32 2, label %14
    i32 3, label %18
    i32 4, label %23
  ]

4:                                                ; preds = %1
  %5 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ { i32, i32, i32, i8, i8, i8, i8 } }, { { i32, i32, i32, i8, i8, i8, i8 } }* @v, i64 0, i32 0, i32 3) to i32*), align 4
  %6 = and i32 %5, 1073741823
  %.not4 = icmp eq i32 %6, %0
  br i1 %.not4, label %8, label %7

7:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %4
  br label %29

9:                                                ; preds = %1
  %10 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ { i32, i32, i32, i8, i8, i8, i8 } }, { { i32, i32, i32, i8, i8, i8, i8 } }* @v, i64 0, i32 0, i32 3) to i32*), align 4
  %11 = lshr i32 %10, 30
  %.not3 = icmp eq i32 %11, %0
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %9
  br label %29

14:                                               ; preds = %1
  %15 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ { i32, i32, i32, i8, i8, i8, i8 } }, { { i32, i32, i32, i8, i8, i8, i8 } }* @v, i64 0, i32 0, i32 3) to i32*), align 4
  %.not2 = icmp eq i32 %15, %0
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  br label %29

18:                                               ; preds = %1
  %19 = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ { i32, i32, i32, i8, i8, i8, i8 } }, { { i32, i32, i32, i8, i8, i8, i8 } }* @v, i64 0, i32 0, i32 3) to i16*), align 4
  %20 = zext i16 %19 to i32
  %.not1 = icmp eq i32 %20, %0
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %18
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  br label %29

23:                                               ; preds = %1
  %24 = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ { i32, i32, i32, i8, i8, i8, i8 } }, { { i32, i32, i32, i8, i8, i8, i8 } }* @v, i64 0, i32 0, i32 5) to i16*), align 2
  %25 = zext i16 %24 to i32
  %.not = icmp eq i32 %25, %0
  br i1 %.not, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #2
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %1
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %27, %22, %17, %13, %8
  ret void

UnifiedUnreachableBlock:                          ; preds = %28, %26, %21, %16, %12, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca %union.U, align 4
  %3 = lshr i32 %0, 2
  %4 = getelementptr inbounds %union.U, %union.U* %2, i64 0, i32 0, i32 3
  store i32 %3, i32* %4, align 4
  call void @bar(i32 noundef %3)
  call void @bar(i32 noundef 0)
  call void @bar(i32 noundef %3)
  %5 = getelementptr inbounds %union.U, %union.U* %2, i64 0, i32 0, i32 3
  %6 = bitcast i32* %5 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = zext i16 %7 to i32
  call void @bar(i32 noundef %8)
  %9 = bitcast %union.U* %2 to [8 x i16]*
  %10 = getelementptr inbounds [8 x i16], [8 x i16]* %9, i64 0, i64 7
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  call void @bar(i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i32 noundef 66084)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
